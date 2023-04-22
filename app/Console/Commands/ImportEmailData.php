<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Modules\Emails\Entities\ImportBunchData;
use Modules\Emails\Entities\ExportData;
use Modules\Emails\Entities\InvalidData;
use Modules\Emails\Entities\UnverifiedData;
use Modules\Emails\Entities\VerifiedData;
use Modules\Emails\Entities\PendingData;
use Modules\Emails\Entities\DuplicateData;
use App\Events\FilterEmailEvent;
use Illuminate\Support\Facades\Auth;
use DB;

class ImportEmailData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'import:emails {--bunch_id=} {--user_id=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Import Fresh Email Data from files';

    /**
     * Execute the console command.
     *
     * @return int
     */
    protected $bunchData = [];
    public function callScriptForFilterEmails($options)
    {
        callScripts("emails:filter --user_id=".$options['user_id']." --bunch_id=".$options['bunch_id']);
    }
    public function handle()
    {
        $options = $this->options();
        $files = ImportBunchData::where('status',1);
        if(!empty($options['bunch_id']))
            $files = $files->where('id',$options['bunch_id']);
        $files = $files->where('verify_status',0)->get();
        foreach($files as $file){
            $separatedBy = $this->detectDelimiter(public_path($file->file_name));
            $fileName = basename($file->file_name);
            print("Preparing CSV Data from $fileName ...\n");
            event(new FilterEmailEvent(['user_id'=>$options['user_id'],'percentage'=>0,'info'=>"success"],"Preparing CSV Data from $fileName ..."));
            $this->csvfile(public_path($file->file_name),$separatedBy,$file);
            $this->importUnVerifiedData($file,$options);
        }
        $this->callScriptForFilterEmails($options);
    }

    public function updateUnVerifiedCount($bunch)
    {
        $count = UnverifiedData::where('uploaded_by',$bunch->user_id)->where('bunch_id',$bunch->id)->count();
        $importBunch = ImportBunchData::find($bunch->id);
        $importBunch->unverified_data_count = $count;
        $importBunch->upload_data_count = $count;
        $importBunch->status = 1;
        $importBunch->save();
    }

    public function importUnVerifiedData($bunch,$options)
    {
        $data = $this->bunchData;
        $count = 0;
        foreach($data as $row){
            $count = $count + 1;
            $percentage = ceil(($count * 100 ) / count($data));
            $options['percentage'] = $percentage;
            $verified = VerifiedData::where('email', $row['email'])->count();
            $invalid = InvalidData::where('email', $row['email'])->count();

            // $unverified = UnverifiedData::where('email', $row['email'])->count();
            // $export = ExportData::where('email', $row['email'])->count();
            //  && $invalid < 1 && $unverified < 1 && $export < 1
            if($verified < 1 && $invalid < 1)
            {
                $row['verify_status'] = 0;
                $row['status'] = 0;
                $temp = 0;
                if(!empty($row['email']) && !empty($row['phone']))
                    $temp = 1;
                else if(!empty($row['email']) && empty($row['phone']))
                    $temp = 1;
                else if(empty($row['email']) && !empty($row['phone']))
                    $temp = 1;
                else
                    $temp = 0;
                if($temp){
                    UnverifiedData::create($row);
                    print($row['email']. " Email data successfully imported in Unverfied.\n");
                }
            }
            else if($invalid > 0)
            {
                $row['verify_status'] = 0;
                $row['status'] = 0;
                PendingData::updateOrCreate(['email'=>$row['email']],$row);
                print($row['email']. " Email data Import in Pending model because this email already exists in Invalid model.\n");
            }
            else
            {
                $row['verify_status'] = 0;
                $row['status'] = 0;
                DuplicateData::updateOrCreate(['email'=>$row['email']],$row);
                print($row['email']. " Email data Import in Duplicate model because this email already exists in Verified model.\n");
            }
            print("Update Unverified Data Count.\n");
            $this->updateUnVerifiedCount($bunch);
            event(new FilterEmailEvent(['user_id'=>$options['user_id'],'percentage'=>$options['percentage'],'info'=>"success"]," Processing..."));
        }


    }

    /**
    * @param string $csvFile Path to the CSV file
    * @return string Delimiter
    */
    public function detectDelimiter($csvFile)
    {
        $delimiters = ["," => 0, "\t" => 0, "|" => 0]; //[";" => 0, "," => 0, "\t" => 0, "|" => 0];

        $handle = fopen($csvFile, "r");
        $firstLine = fgets($handle);
        fclose($handle);
        foreach ($delimiters as $delimiter => &$count) {
            $count = count(str_getcsv($firstLine, $delimiter));
        }

        return array_search(max($delimiters), $delimiters);
    }

    public function csvfile($path, $separatedBy,$data)
    {
        $handle = fopen($path, "r");
        $header = array();
        $i = 1;
        while (($row = fgetcsv($handle,null, $separatedBy)) !== FALSE) {
            $RowDataArr = $row;

            if (!$header) {
                $header = $RowDataArr;
                continue;
            } else {
                $row = array_pad($RowDataArr, count($header), "");

                    $header1 = array();
                    foreach ($header as $rowData) {
                        $header1[] = str_replace("﻿", '', $rowData);
                    }
                $row = array_combine(array_slice($header1, 0, count($header1)), array_slice($row, 0, count($header1)));

                $this->bunchData[] = [
                    'name'      => $row['name'],
                    'email'     => $row['email'],
                    'phone'     => isset($row['phone'])?$row['phone']:NULL,
                    'address'   => isset($row['address'])?$row['address']:NULL,
                    'country'   => isset($row['country'])?$row['country']:NULL,
                    'state'     => isset($row['state'])?$row['state']:NULL,
                    'pincode'   => isset($row['pincode'])?$row['pincode']:NULL,
                    'category'  => isset($row['category'])?$row['category']:NULL,
                    'uploaded_by' => $data->user_id,
                    'bunch_id'    => $data->id
                ];
            }
        }

        fclose($handle);
    }
}
