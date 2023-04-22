<?php

namespace Modules\Emails\Http\Controllers\Backend;

use App\Authorizable;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Modules\Emails\Http\Requests\Backend\EmailsFileRequest;
use Modules\Comment\Notifications\NewCommentAdded;
use Spatie\Activitylog\Models\Activity;
use Yajra\DataTables\DataTables;
use Modules\Emails\Entities\ImportBunchData;
use Modules\Emails\Entities\ExportData;
use Modules\Emails\Entities\VerifiedData;
use Google_Client;
use Laravel\Socialite\Facades\Socialite;
use Session;
use Google_Service_PeopleService;
use Google_Service_People;
use Google_Service_Gmail;

class ComposeController extends Controller
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Compose';

        // module name
        $this->module_name = 'emails';

        // module icon
        $this->module_icon = 'fas fa-envelope';

        // module model name, path
        $this->module_model = "Modules\Emails\Entities\ImportBunchData";
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */

    public function redirectToGoogle()
    {
        // dd($_SESSION['GOOGLE']);
        $scopes = [
            'openid','profile','email','https://mail.google.com',
            Google_Service_PeopleService::USER_ADDRESSES_READ,
            Google_Service_PeopleService::USER_BIRTHDAY_READ,
            Google_Service_PeopleService::CONTACTS,
            Google_Service_PeopleService::USER_EMAILS_READ,
            Google_Service_PeopleService::USER_PHONENUMBERS_READ,
            Google_Service_PeopleService::CONTACTS_READONLY
          ];
        return Socialite::driver('google')
        ->with(
            ['client_id' => '627446488633-hoqt602lkit1q8947ulmlkmpgsthtg3v.apps.googleusercontent.com'],
            ['client_secret' => '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'],
            ['redirect' => 'http://127.0.0.1:8000/login/google/callback'],
            // ['redirect_uri' =>'http://127.0.0.1:8000/login/google/callback']
            )

            ->setScopes($scopes)
            // ->setScopes(['openid', 'email'])
            ->stateless()
        ->redirect();
        // return Socialite::driver('google')->redirect();
    }
    public function handleGoogleCallback()
    {
        $user = Socialite::driver('google')->user();

        // Store or authenticate the user
    }
    public function webMail()
    {


        // if(!Session::has('access_token'))
        // {
        //     return redirect()->route('backend.compose.redirectToGoogle');
        // }
        $scopes = [
                Google_Service_PeopleService::USER_ADDRESSES_READ,
                Google_Service_PeopleService::USER_BIRTHDAY_READ,
                Google_Service_PeopleService::CONTACTS,
                Google_Service_PeopleService::USER_EMAILS_READ,
                Google_Service_PeopleService::USER_PHONENUMBERS_READ,
                Google_Service_PeopleService::CONTACTS,
                Google_Service_PeopleService::CONTACTS_READONLY,
                Google_Service_PeopleService::USERINFO_PROFILE,
                Google_Service_PeopleService::USERINFO_EMAIL,

          ];
           // set the OAuth2 credentials
           $client = new Google_Client();
           $client->setClientId('627446488633-hoqt602lkit1q8947ulmlkmpgsthtg3v.apps.googleusercontent.com');
           $client->setClientSecret('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');
           $client->setRedirectUri('http://127.0.0.1:8000/login/google/callback');
           $client->setAccessType('offline');
           $client->setApprovalPrompt('force');
           $client->addScope('email');
           $client->addScope('https://mail.google.com');
           $client->setScopes($scopes);
            // dd($client);
           // authenticate the client and authorize access to the People API

           if (isset($_GET['code'])) {
                $client->authenticate($_GET['code']);
                Session::put('access_token', $client->getAccessToken());
                // dd($client->getRedirectUri());
                return redirect(url($client->getRedirectUri()));
           }
           if (Session::has('access_token')) {
               $client->setAccessToken(Session::get('access_token'));
            //    $service = new Google_Service_PeopleService($client);
                $service = new Google_Service_Gmail($client);
            //    dd($service);
            //    $optParams = array(
            //        'pageSize' => 100,
            //        'personFields' => 'names,emailAddresses,phoneNumbers',
            //    );
               $optParams = [];
               $optParams['maxResults'] = 100; // Return Only 5 Messages
               $optParams['labelIds'] = 'INBOX';
            //    dd($service->people_connections);

            $d = [];
               $message = $service->users_messages->listUsersMessages('me',$optParams);
               foreach ($message->getMessages() as $message) {
                $messageId = $message->getId();
                $message = $service->users_messages->get('me', $messageId, ['format' => 'full']);
                $payload = $message->getPayload();
                $d[] = ($payload);

                }
            dd($d);
           } else {
               $authUrl = $client->createAuthUrl();
               return redirect(url($authUrl));
           }
    }

    public function index()
    {
        return redirect()->route('backend.compose.webMail');
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $$module_name = $module_model::paginate();

        Log::info(label_case($module_title.' '.$module_action).' | User:'.Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return view(
            "$module_name::backend.compose.inbox",
            compact('module_title', 'module_name', "$module_name", 'module_icon', 'module_name_singular', 'module_action')
        );
    }

    /**
     * Select Options for Select 2 Request/ Response.
     *
     * @return Response
     */
    public function index_list(Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $term = trim($request->q);
        $$module_name = [];
        if (empty($term)) {
            $query_data = $module_model::limit(10)->get();
            foreach ($query_data as $row) {
                $$module_name[] = [
                    'id'   => $row->id,
                    'text' => $row->name,
                ];
            }
        } else {
            $query_data = $module_model::where('name', 'LIKE', "%$term%")->limit(10)->get();
            foreach ($query_data as $row) {
                $$module_name[] = [
                    'id'   => $row->id,
                    'text' => $row->name,
                ];
            }
        }
        return response()->json($$module_name);
    }


    public function index_data()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $$module_name = $module_model::select("*")->where('user_id',Auth::id());

        $data = $$module_name;

        return Datatables::of($$module_name)
                        ->addColumn('action', function ($data) {
                            $module_name = $this->module_name;

                            return view('backend.includes.action_column', compact('module_name', 'data'));
                        })
                        // ->editColumn('name', '<strong>{{$name}}</strong> | {{$status_formatted}}')
                        ->editColumn('file_name', function ($data) {
                            $return_string = '<a href="'.url($data->file_name).'" target="_blank">'.basename($data->file_name).'</a> | '.$data->status_formatted;

                            return $return_string;
                        })
                        ->editColumn('updated_at', function ($data) {
                            $module_name = $this->module_name;

                            $diff = Carbon::now()->diffInHours($data->updated_at);

                            if ($diff < 25) {
                                return $data->updated_at->diffForHumans();
                            } else {
                                return $data->updated_at->isoFormat('LLLL');
                            }
                        })
                        ->rawColumns(['file_name', 'action'])
                        ->orderColumns(['department.id'], '-:column $1')
                        ->make(true);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Upload';

        Log::info(label_case($module_title.' '.$module_action).' | User:'.Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return view(
            "$module_name::backend.$module_name.create",
            compact('module_title', 'module_name', 'module_icon', 'module_name_singular', 'module_action')
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(EmailsFileRequest $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Store';
        $input = ['user_id'=> Auth::id(),'verify_status'=>0,'status'=>0];
        $$module_name_singular = $module_model::create($input);

        if ($request->file_name) {
            $file = $$module_name_singular->addMedia($request->file('file_name'))
            ->usingFileName($request->file('file_name')->getClientOriginalName())
            ->toMediaCollection($module_name);
            $$module_name_singular->file_name = $file->getUrl();
            $$module_name_singular->save();
        }
        // auth()->user()->notify(new NewCommentAdded($$module_name_singular));

        Flash::success("<i class='fas fa-check'></i> New '".Str::singular($module_title)."' Added")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return redirect("admin/$module_name");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Show';

        $$module_name_singular = $module_model::findOrFail($id);

        $activities = Activity::where('subject_type', '=', $module_model)
                                ->where('log_name', '=', $module_name)
                                ->where('subject_id', '=', $id)
                                ->latest()
                                ->paginate();

        Log::info(label_case($module_title.' '.$module_action).' | User:'.Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return view(
            "$module_name::backend.$module_name.show",
            compact('module_title', 'module_name', 'module_icon', 'module_name_singular', 'module_action', "$module_name_singular", 'activities')
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Edit';

        $$module_name_singular = $module_model::findOrFail($id);
        // dd($$module_name_singular);
        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return view(
            "$module_name::backend.$module_name.edit",
            compact('module_title', 'module_name', 'module_icon', 'module_name_singular', 'module_action', "$module_name_singular")
        );
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(EmailsFileRequest $request, $id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Update';

        $$module_name_singular = $module_model::findOrFail($id);

        $$module_name_singular->update($request->except('icon'));

        Flash::success("<i class='fas fa-check'></i> '".Str::singular($module_title)."' Updated Successfully")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return redirect("admin/$module_name");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'destroy';

        $$module_name_singular = $module_model::findOrFail($id);

        $$module_name_singular->delete();

        Flash::success('<i class="fas fa-check"></i> '.label_case($module_name_singular).' Deleted Successfully!')->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.', ID:'.$$module_name_singular->id." ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return redirect("admin/$module_name");
    }

    /**
     * List of trashed ertries
     * works if the softdelete is enabled.
     *
     * @return Response
     */
    public function trashed()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Trash List';

        $$module_name = $module_model::onlyTrashed()
        ->select('department.deleted_at','department.id','dp.name as parent_name', 'department.name', 'department.status', 'department.updated_at')->leftJoin('department as dp','dp.id','department.parent_id')
        ->orderBy('deleted_at', 'desc')->paginate();

        Log::info(label_case($module_title.' '.$module_action).' | User:'.Auth::user()->name);

        return view(
            "$module_name::backend.$module_name.trash",
            compact('module_title', 'module_name', "$module_name", 'module_icon', 'module_name_singular', 'module_action')
        );
    }

    /**
     * Restore a soft deleted entry.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function restore($id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Restore';

        $$module_name_singular = $module_model::withTrashed()->find($id);
        $$module_name_singular->restore();

        Flash::success('<i class="fas fa-check"></i> '.label_case($module_name_singular).' Data Restoreded Successfully!')->important();

        Log::info(label_case($module_action)." '$module_name': '".$$module_name_singular->name.', ID:'.$$module_name_singular->id." ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return redirect("admin/$module_name");
    }

    public function verifyEmails($bunch_id, Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Restore';

        $$module_name_singular = $module_model::find($bunch_id);

        $script = "import:emails --bunch_id=$bunch_id";
        $process = exec('ps auxw|grep "' . $script . '$"');
        if (empty($process)) {
            callScripts($script);
            $res = $script;
        } else {
            $res = "script already running";
        }
        Flash::success('<i class="fas fa-check"></i> '.label_case($module_name_singular).' Your CSV Data verifying now please wait...!'.$res)->important();

        Log::info(label_case($module_action)." '$module_name': '".$$module_name_singular->name.', ID:'.$$module_name_singular->id." ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return redirect("admin/$module_name");
    }

    public function exportEmailsData($bunch_id, Request $request)
    {
        $bunch = ImportBunchData::where('id', '=', $options['bunch_id'])->where('user_id', '=', $options['user_id'])->first();
        $limit = ($bunch->verified_data_count*10)/100;
        $getVerifiedData = VerifiedData::
                join('export_data','export_data.email','!=','verified_data.email')
                ->where('uploaded_by', '!=', $bunch->user_id)->limit($limit)->get();

        header('Content-Type: text/csv; charset=utf-8');
        header('Content-Disposition: attachment; filename=emails_data.csv');
        $output = fopen("php://output", "w");
        fputcsv($output, array('name', 'email', 'phone', 'address', 'country', 'state', 'pincode', 'category'));
        foreach($getVerifiedData as $vd)
        {
            $row = [
                    'name' => $vd->name,
                    'email' => $vd->email,
                    'phone' => $vd->phone,
                    'address' => $vd->address,
                    'country' => $vd->country,
                    'state' => $vd->state,
                    'pincode' => $vd->pincode,
                    'category' => $vd->category
            ];
             fputcsv($output, $row);
             $row['downloaded_by'] = $vd->downloaded_by;
             $row['status'] = 1;
             ExportData::create($row);
        }
        fclose($output);
        exit;
    }
}
