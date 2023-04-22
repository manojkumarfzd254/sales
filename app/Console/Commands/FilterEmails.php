<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Modules\Emails\Entities\ImportBunchData;
use Modules\Emails\Entities\ExportData;
use Modules\Emails\Entities\InvalidData;
use Modules\Emails\Entities\UnverifiedData;
use Modules\Emails\Entities\VerifiedData;
use Modules\Emails\Entities\DuplicateData;
use App\Events\FilterEmailEvent;
use Illuminate\Support\Facades\Auth;
use DB;

class FilterEmails extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'emails:filter {--user_id=} {--bunch_id=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Filter All Emails Data from UnVerified data';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function message($message ,$options, $type = 'info')
    {
        event(new FilterEmailEvent(['user_id'=>$options['user_id'],'percentage'=>$options['percentage'],'info'=>$type],$message));
        $out = new \Symfony\Component\Console\Output\ConsoleOutput();
        $out->writeln("<$type>$message</$type>");
    }
    public function handle()
    {
        $options = $this->options();
        $unVerifiedData = UnverifiedData::all();
        $count = 0;
        foreach($unVerifiedData as $uvd)
        {
            $count = $count + 1;
            $percentage = ceil(($count * 100 ) / count($unVerifiedData));
            $options['percentage'] = $percentage;
            $dataArray = [
                'name' => $uvd->name,
                'email' => $uvd->email,
                'phone' => $uvd->phone,
                'address' => $uvd->address,
                'country' => $uvd->country,
                'state' => $uvd->state,
                'pincode' => $uvd->pincode,
                'category' => $uvd->category,
                'uploaded_by' => $uvd->uploaded_by,
                'bunch_id' => $uvd->bunch_id,
            ];
            $duplicate = $this->checkDuplicateEmail($uvd,$dataArray,$options);
            if($duplicate)
            {
                continue;
            }
            // $resp = validate_email($uvd->email);
            $resp = mxrecordValidate($uvd->email);
            if($resp) // if($resp['data']['status'] == 'valid')
            {
                $explode = explode('@',$uvd->email);
                $disposable = DB::table('disposable_domain')->where('domain',$explode[1])->count();
                if($disposable > 0){
                    $this->createInvalid($resp,['email'=>$uvd->email],$dataArray, $uvd, $options);
                }
                $dataArray['verify_status'] = 1;
                $dataArray['status'] = 1;
                VerifiedData::updateOrCreate(['email'=>$uvd->email],$dataArray);
                $this->updateVerifiedDataCount($uvd);
                $this->message($uvd->email." email is valid.",$options);
            }
            else
            {
                $this->createInvalid($resp,['email'=>$uvd->email],$dataArray, $uvd, $options);
            }
            $this->deleteDataFromUnVerified($uvd,$options);
            $this->updateUnVerifiedCount($uvd);
        }
        $complete = UnverifiedData::where('bunch_id',$options['bunch_id'])->count();
        if(!$complete)
        {
            $bunch = ImportBunchData::find($options['bunch_id']);
            $bunch->verify_status = 1;
            $bunch->save();
        }
    }
    public function createInvalid($resp, $where, $dataArray, $uvd, $options)
    {
        $dataArray['verify_status'] = 0;
        $dataArray['status'] = 0;
        $dataArray['response'] = json_encode($resp);
        InvalidData::updateOrCreate($checkInVerified,$dataArray);
        $this->updateInvalidDataCount($uvd);
        $this->deleteDataFromUnVerified($uvd,$options);
        $this->message($uvd->email." email is invalid.",$options,"danger");
    }
    public function checkDuplicateEmail($row,$data,$options)
    {
        $checkInVerified = VerifiedData::where('email',$row->email)->first();
        if($checkInVerified)
        {
            DuplicateData::create($data);
            $bunch = ImportBunchData::find($data->bunch_id);
            $bunch->duplicate_data_count = DuplicateData::where('bunch_id',$row->bunch_id)->where('uploaded_by',$row->uploaded_by)->count();
            $bunch->save();
            $this->message($uvd->email." email is Duplicate.",$options,"info");
        }
        $this->deleteDataFromUnVerified($row,$options);
        return true;
    }

    public function deleteDataFromUnVerified($data,$options)
    {
        $un = UnverifiedData::find($data->id);
        if($un->forceDelete())
        {
            // $this->message($data->email." email removed from Unverified data.",$options);
        }
    }

    public function updateVerifiedDataCount($data)
    {
        $bunch = ImportBunchData::find($data->bunch_id);
        $bunch->verified_data_count = VerifiedData::where('bunch_id',$data->bunch_id)->where('uploaded_by',$data->uploaded_by)->count();
        $bunch->save();
    }

    public function updateInvalidDataCount($data)
    {
        $bunch = ImportBunchData::find($data->bunch_id);
        $bunch->failed_data_count = InvalidData::where('bunch_id',$data->bunch_id)->where('uploaded_by',$data->uploaded_by)->count();
        $bunch->save();
    }

    public function updateUnVerifiedCount($row)
    {
        $count = UnverifiedData::where('bunch_id',$row->bunch_id)->count();
        $importBunch = ImportBunchData::find($row->bunch_id);
        $importBunch->unverified_data_count = $count;
        // $importBunch->upload_data_count = $count;
        $importBunch->status = 1;
        $importBunch->save();
    }
}
