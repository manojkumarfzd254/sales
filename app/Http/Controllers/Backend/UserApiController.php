<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Userprofile;
use App\Models\UserProvider;

class UserApiController extends Controller
{

    public function store(Request $request)
    {
        $user = new User();
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->name = $request->first_name.' '.$request->last_name;
        $user->email = $request->email;
        $user->mobile = $request->mobile;
        $user->save();
        return response()->json(['status'=>true,'data'=>$user]);
    }
    // function store(Request $request)
    // {
    //     //$dataa = new User;
    //    $data = User::create($request->all());
    //     if($data){
    //         return response()->json(['message'=>'user created successfully'], 200);
    //     }else{
    //         return response()->json(['message'=>'user not create successfully'], 404);
    //     }
    //     //return response()->json(['message'=>'product added successfuly'], 200);
    // }
        //dd($user);
       // echo "yes route is working ";

       public function update(Request $request,$id='')
    {
       // $user = new User();
       $user=User::find($id);
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->name = $request->first_name.' '.$request->last_name;
        $user->email = $request->email;
        $user->mobile = $request->mobile;
        $user->update();
        return response()->json(['status'=>true,'data'=>$user]);
    }

    function showById($id='')
    {
        $data = User::find($id);
        if($data){
            return response()->json(['users'=>$data],200);
        }else{
            return response()->json(['message'=>'User not found'],404);
        }
    }

    function destory($id='')
    {
        $data = User::find($id);
        if($data){
            $data->forceDelete();
            return response()->json(['message'=>'User deleted successfully'],200);
        }else{
            return response()->json(['message'=>'User was not found'],404);
        }
    }
}
