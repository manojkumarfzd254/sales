<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use DB;

class BackendController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //change table_name for widget A
        $tablea_name='roles';
        $WidgetA = DB::table($tablea_name)->count();

         //change table_name for widget B
         $tableb_name='posts';
         $WidgetB = DB::table($tableb_name)->count();

         //change table_name for widget C
         $tablec_name='categories';
         $WidgetC = DB::table($tablec_name)->count();

         //change table_name for widget D
         $tabled_name='tags';
         $WidgetD = DB::table($tabled_name)->count();

        return view('backend.index')->with(compact('WidgetA','WidgetB','WidgetC','WidgetD','tablea_name','tableb_name','tablec_name','tabled_name'));
    }
}
