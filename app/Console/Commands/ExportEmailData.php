<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Modules\Emails\Entities\ImportBunchData;
use Modules\Emails\Entities\ExportData;
use Modules\Emails\Entities\InvalidData;
use Modules\Emails\Entities\UnverifiedData;
use Modules\Emails\Entities\VerifiedData;
use Modules\Emails\Entities\DuplicateData;

class ExportEmailData extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'export:emails {--user_id=} {--bunch_id=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Export Emails Data for User and Every time export Unique Data for User.';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $options = $this->getOptions();
        $this->callScript($options);
    }

    public function callScript($options)
    {
        $bunch = ImportBunchData::where('id', '=', $options['bunch_id'])->where('user_id', '=', $options['user_id'])->first();
        $limit = ($bunch->verified_data_count*10)/100;
        $getVerifiedData = VerifiedData::where('uploaded_by', '!=', $bunch->user_id)->limit($limit)->get();
        header('Content-Type: text/csv; charset=utf-8');
        header('Content-Disposition: attachment; filename=data.csv');
        $output = fopen("php://output", "w");
        fputcsv($output, array('ID', 'First Name', 'Last Name', 'Email', 'Joining Date'));
        $query = "SELECT * from employeeinfo ORDER BY emp_id DESC";
        $result = mysqli_query($con, $query);
        while($row = mysqli_fetch_assoc($result))
        {
             fputcsv($output, $row);
        }
        fclose($output);

    }
}
