<?php

namespace Modules\Service\Http\Controllers\Backend;

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
use Modules\Service\Http\Requests\Backend\ServiceRequest;
// use Modules\Comment\Notifications\NewCommentAdded;
use Spatie\Activitylog\Models\Activity;
use Yajra\DataTables\DataTables;
use Modules\Service\Entities\ServiceForm;

class ServiceController extends Controller
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Services / Products';

        // module name
        $this->module_name = 'service';

        // module icon
        $this->module_icon = 'fas fa-wrench';

        // module model name, path
        $this->module_model = "Modules\Service\Entities\Service";
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $$module_name = $module_model::paginate();

        Log::info(label_case($module_title.' '.$module_action).' | User:'.Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return view(
            "$module_name::backend.$module_name.index_datatable",
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

        if (empty($term)) {
            return response()->json([]);
        }

        $query_data = $module_model::where('name', 'LIKE', "%$term%")->limit(5)->get();

        $$module_name = [];

        foreach ($query_data as $row) {
            $$module_name[] = [
                'id'   => $row->id,
                'text' => $row->name.' (Code: '.$row->slug.')',
            ];
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

        $$module_name = $module_model::select(
            'services.id',
            'department.name as department_name',
            'services.title',
            'services.status',
            'services.updated_at',
            'services.icon',
            'services.service_type',
            'services.type',
            'services.form_id'
            )
        ->leftJoin('department','department.id','services.department_id')
        ->where('services.created_by',auth()->user()->id);

        $data = $$module_name;

        return Datatables::of($$module_name)
                        ->addColumn('action', function ($data) {
                            $module_name = $this->module_name;

                            return view('backend.includes.action_column', compact('module_name', 'data'));
                        })
                        // ->editColumn('name', '<strong>{{$name}}</strong> | {{$status_formatted}}')
                        ->editColumn('title', function ($data) {
                            $return_string = '<strong>'.$data->title.'</strong> | '.$data->status_formatted;

                            return $return_string;
                        })
                        ->editColumn('icon', function ($data) {
                            $return_string = '<a target="blank" href="'.$data->icon.'"><img src="'.$data->icon.'" style="width:100px"></a>';

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
                        ->rawColumns(['title', 'action','icon'])
                        ->orderColumns(['services.id'], '-:column $1')
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

        $module_action = 'Create';

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
    public function store(ServiceRequest $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Store';
        $$module_name_singular = $module_model::create($request->except('icon'));

        if ($request->icon) {
            $media = $$module_name_singular->addMedia($request->file('icon'))->toMediaCollection($module_name);
            $$module_name_singular->icon = $media->getUrl();
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

        $$module_name_singular = $module_model::with('department','form')->findOrFail($id);
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
    public function update(ServiceRequest $request, $id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Update';

        $$module_name_singular = $module_model::findOrFail($id);
        $$module_name_singular->update($request->except('icon'));

        if ($request->icon) {
            $media = $$module_name_singular->addMedia($request->file('icon'))->toMediaCollection($module_name);
            $$module_name_singular->icon = $media->getUrl();
            $$module_name_singular->save();
        }

        Flash::success("<i class='fas fa-check'></i> '".Str::singular($module_title)."' Updated Successfully")->important();

        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->title.'(ID:'.$$module_name_singular->id.") ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

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
        ->select(
            'services.deleted_at',
            'services.id',
            'department.name as department_name',
            'services.title',
            'services.status',
            'services.updated_at',
            'services.icon',
            'services.service_type'
            )
        ->leftJoin('department','department.id','services.department_id')
        ->where('services.created_by',auth()->user()->id)
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

    public function customValidations($id, Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'custom-validations';
        $fields = ServiceForm::where('service_id',$id)->first();
        $$module_name_singular = $module_model::with('department')->findOrFail($id);
        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->name.'(ID:'.$$module_name_singular->id.") ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return view(
            "$module_name::backend.$module_name.custom-validation.custom-validations",
            compact('fields','module_title', 'module_name', 'module_icon', 'module_name_singular', 'module_action', "$module_name_singular")
        );
    }

    public function createFormFields($id, Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = "Modules\Service\Entities\ServiceForm";
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Create Form Field';
        $input = $request->all();
        $input['field_name'] = strtolower(str_replace(' ','_',$input['label_name']));
        $data = ['service_id'=> $id,'status'=>1];
        unset($input['_token']);
        $serviceForm = ServiceForm::where('service_id',$id)->first();
        if($serviceForm)
        {
            $oldData = $serviceForm->fields != null ? json_decode($serviceForm->fields) : array();
            $oldData[count($oldData)] = $input;
            $serviceForm->fields = json_encode($oldData);
            $serviceForm->save();
        }
        else
        {
            $finalArray = [];
            $newData = $input;
            array_push($finalArray,$newData);
            $data['fields'] = json_encode($finalArray);
            $serviceForm = ServiceForm::create($data);
        }
        Flash::success('<i class="fas fa-check"></i> '.label_case($module_name_singular).' Field Create  Successfully!')->important();

        // Log::info(label_case($module_action)." '$module_name': '".$$module_name_singular->name.', ID:'.$$module_name_singular->id." ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return redirect("admin/$module_name/custom-validations/".$id);
    }

    public function submitServiceFormData($id, Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = "Modules\Service\Entities\ServiceForm";
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Save Service Form Data';
        $input = $request->except('_token');
        $serviceForm = ServiceForm::where('service_id',$id)->first();
        $keys = collect($input)->keys()->all();
        foreach($keys as $key => $value){
            if($request->hasFile($value))
            {
                $media = $serviceForm->addMedia($input[$value])->toMediaCollection($module_name);
                $input[$value] = $media->getUrl();
            }
        }

        if($serviceForm)
        {
            $oldData = $serviceForm->form_data != null ? json_decode($serviceForm->form_data) : array();
            $oldData[count($oldData)] = $input;
            $serviceForm->form_data = json_encode($oldData);
            $serviceForm->save();
        }
        Flash::success('<i class="fas fa-check"></i> '.label_case($module_name_singular).' Form Data Saved Successfully!')->important();

        return redirect("admin/$module_name/custom-validations/".$id);
    }
}
