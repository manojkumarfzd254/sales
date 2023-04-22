<?php

namespace Modules\Products\Http\Controllers\Backend;

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
use Modules\Products\Http\Requests\Backend\ProductsRequest;
use Modules\Comment\Notifications\NewCommentAdded;
use Spatie\Activitylog\Models\Activity;
use Yajra\DataTables\DataTables;

class ProductsController extends Controller
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Products';

        // module name
        $this->module_name = 'products';

        // module icon
        $this->module_icon = 'fas fa-leaf';

        // module model name, path
        $this->module_model = "Modules\Products\Entities\Products";
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

        $$module_name = $module_model::select("products.id","products.name as product_name", "department.name as department_name","service_forms.form_name","products.status","products.updated_at")
                        ->leftJoin("department","department.id","products.department_id")
                        ->leftJoin("service_forms","service_forms.id","products.form_id");

        $data = $$module_name;

        return Datatables::of($$module_name)
                        ->addColumn('action', function ($data) {
                            $module_name = $this->module_name;

                            return view('backend.includes.action_column', compact('module_name', 'data'));
                        })
                        // ->editColumn('name', '<strong>{{$name}}</strong> | {{$status_formatted}}')
                        ->editColumn('product_name', function ($data) {
                            $return_string = '<strong>'.$data->product_name.'</strong> | '.$data->status_formatted;

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
                        ->rawColumns(['product_name', 'action'])
                        ->orderColumns(['products.id'], '-:column $1')
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
    public function store(ProductsRequest $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Store';

        $$module_name_singular = $module_model::create($request->except('icon','_token'));

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
    public function update(ProductsRequest $request, $id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Update';

        $$module_name_singular = $module_model::findOrFail($id);

        $$module_name_singular->update($request->except('icon'));
        // if ($request->icon) {
        //     $media = $$module_name_singular->addMedia($request->file('icon'))->toMediaCollection($module_name);
        //     $$module_name_singular->icon = $media->getUrl();
        //     $$module_name_singular->save();
        // }
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
        ->select("products.deleted_at","products.id","products.name as product_name", "department.name as department_name","service_forms.form_name","products.status","products.updated_at")
                        ->leftJoin("department","department.id","products.department_id")
                        ->leftJoin("service_forms","service_forms.id","products.form_id")
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

    public function showTree(Request $request,$id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Show Tree';

        $$module_name_singular = $module_model::with('children')->findOrFail($id);
        $tree = ([$$module_name_singular->toArray()]);
        // $test = makeTreeForDepartments([$$module_name_singular],$$module_name_singular,0);
        // dd($test);
        Log::info(label_case($module_title.' '.$module_action).' | User:'.Auth::user()->name);

        return view(
            "$module_name::backend.$module_name.show-tree",
            compact('tree','module_title', 'module_name', 'module_icon', 'module_name_singular', 'module_action', "$module_name_singular")
        );
    }
    public function customValidations($id, Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'custom-validations';
        $fields = $module_model::where('id',$id)->first();
        $$module_name_singular = $module_model::where('id',$id)->first();
        Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->form_name.'(ID:'.$$module_name_singular->id.") ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

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
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Create Form Field';
        $input = $request->all();
        $input['field_name'] = strtolower(str_replace(' ','_',$input['label_name']));
        $data = ['service_id'=> $id,'status'=>1];
        unset($input['_token']);
        $serviceForm = $module_model::where('id',$id)->first();
        if($serviceForm)
        {
            $oldData = $serviceForm->fields != null ? json_decode($serviceForm->fields) : array();
            $oldData[count($oldData)] = $input;
            $serviceForm->fields = json_encode($oldData);
            $serviceForm->save();
        }
        else
        // {
        //     $finalArray = [];
        //     $newData = $input;
        //     array_push($finalArray,$newData);
        //     $data['fields'] = json_encode($finalArray);
        //     $serviceForm = $module_model::create($data);
        // }
        Flash::success('<i class="fas fa-check"></i> '.label_case($module_name_singular).' Field Create  Successfully!')->important();

        // Log::info(label_case($module_action)." '$module_name': '".$$module_name_singular->name.', ID:'.$$module_name_singular->id." ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return redirect("admin/$module_name/custom-validations/".$id);
    }

    public function submitServiceFormData($id, Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Save Service Form Data';
        $input = $request->except('_token');
        $serviceForm = $module_model::where('id',$id)->first();
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

    public function formData($id, Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);
        $$module_name_singular = $module_model::findOrFail($id);
        $module_action = $$module_name_singular->form_name;


        // $activities = Activity::where('subject_type', '=', $module_model)
        //                         ->where('log_name', '=', $module_name)
        //                         ->where('subject_id', '=', $id)
        //                         ->latest()
        //                         ->paginate();

        Log::info(label_case($module_title.' '.$module_action).' | User:'.Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return view(
            "$module_name::backend.$module_name.custom-validation.form-data",
            compact('module_title', 'module_name', 'module_icon', 'module_name_singular', 'module_action', "$module_name_singular")
        );
    }
}
