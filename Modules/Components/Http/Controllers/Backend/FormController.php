<?php

namespace Modules\Components\Http\Controllers\Backend;

use App\Authorizable;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Spatie\Activitylog\Models\Activity;
use Illuminate\Support\Str;
use Modules\Components\Http\Requests\Backend\FormmRequest;
use Yajra\DataTables\DataTables;
use Modules\Components\Entities\Form;

class FormController extends Controller
{
    use Authorizable;

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Form';

        // module name
        $this->module_name = 'form';

        // directory path of the module
        $this->module_path = 'form';

        // module icon
        $this->module_icon = 'fas fa-sitemap';

        // module model name, path
        $this->module_model = "Modules\Components\Entities\Form";
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
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $$module_name = $module_model::latest()->paginate();

        Log::info(label_case($module_title . ' ' . $module_action) . ' | User:' . auth()->user()->name . '(ID:' . auth()->user()->id . ')');

        return view(
            "components::backend.$module_path.index_datatable",
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
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $term = trim($request->q);

        if (empty($term)) {
            return response()->json([]);
        }

        $query_data = $module_model::where('name', 'LIKE', "%$term%")->orWhere('slug', 'LIKE', "%$term%")->limit(7)->get();

        $$module_name = [];

        foreach ($query_data as $row) {
            $$module_name[] = [
                'id'   => $row->id,
                'text' => $row->name . ' (Slug: ' . $row->slug . ')',
            ];
        }

        return response()->json($$module_name);
    }

    public function index_data()
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $$module_name = $module_model::select('id', 'name', 'email', 'description', 'image', 'file', 'status');
        //dd($$module_name);
        $data = $$module_name;


        return Datatables::of($$module_name)
            ->addColumn('action', function ($data) {
                $module_name = $this->module_name;

                return view('backend.includes.action_column', compact('module_name', 'data'));
            })
            ->editColumn('name', '<strong>{{$name}}</strong>')

            ->editColumn('status', function ($data) {
                $module_name = $this->module_name;
                if ($data->status == 1)
                    return '<a href="' . route('backend.' . $module_name . '.status', ['status' => 0, 'id' => $data->id]) . '"><button type="button" class="btn btn-success">Enable</button></a>';
                elseif ($data->status == 0)
                    return '<a href="' . route('backend.' . $module_name . '.status', ['status' => 1, 'id' => $data->id]) . '"><button type="button" class="btn btn-warning">Disable</button></a>';
            })

            ->editColumn('image', function ($data) {
                if ($data->image) {
                    return '<img src="' . asset($data->image) . '" width="80px" height="80px">';

                    // return '<img src="' . env(($data->image)) . '">';
                } else {
                    return '<img src="' . asset($data->image) . '" width="80px" height="80px">';
                }
            })

            ->addColumn('download', function ($data) {
                $module_name = $this->module_name;
                return '<a href="' . route('backend.' . $module_name . '.getDownload', ['file' => ($data->id)]) . '" class="fa fa-download"></a>';
            })

            ->editColumn('updated_at', function ($data) {
                $module_name = $this->module_name;

                $diff = Carbon::now()->diffInHours($data->updated_at);

                if ($diff < 25) {
                    return $data->updated_at;
                } else {
                    return $data->updated_at;
                }
            })
            ->rawColumns(['name', 'action', 'status', 'download', 'image'])
            ->orderColumns(['id'], '-:column $1')
            ->make(true);
    }

      //code of save multiple file in a database by mr
      public function fileupload(Request $request,$path)
      {
          $module_title = $this->module_title;
          $module_name = $this->module_name;
          $module_path = $this->module_path;
          $module_icon = $this->module_icon;
          $module_model = $this->module_model;
          $this->validate($request, [
              'file' => 'required',
          ]);
          // dd($request->all());
          if ($request->hasFile('file')) {
              $files = $request->file('file');
              foreach ($files as $file) {
                $image = $file;
                $name =  $image->getClientOriginalExtension();
                $fullname = rand(10, 1000) . "." . $name;
                $fullname = preg_replace('/\s+/', '', $fullname);
                $image->move('images/' . $path . '/', $fullname);
                $input['image'] = "images/".$path."/" . $fullname;

              }
          }

        //   $asset = Assest::find($id);
        //   History::create([
        //       'asset_id' => $asset->id,
        //       'status_id' => $asset->status_id,
        //       'location_id' => $asset->location_id,
        //       'model_id' => getModelID($asset->id),
        //       'activity_status' => 'File Upload',
        //       'user_id' => isset($asset->user_id) ?? NULL,
        //   ]);
          Flash::success("<i class='fas fa-check'></i> '" . Str::singular($module_title) . "' Checkout Successfully")->important();

          Log::info(label_case($module_title . ' Upload Assest File') . ' | User:' . Auth::user()->name . '(ID:' . Auth::user()->id . ')');

          return redirect("admin/$module_name");
      }


    // update status by rahulya
    public function status(Request $request, $status, $id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Update';

        $input['status'] = $status;

        $$module_name_singular = $module_model::findOrFail($id);

        $$module_name_singular->update($input);

        Flash::success('<i class="fas fa-check"></i> ' . label_case($module_name_singular) . ' Status Updated Successfully!')->important();

        Log::info(label_case($module_title . ' ' . $module_action) . " | '" . $$module_name_singular->name . ', ID:' . $$module_name_singular->id . " ' by User:" . auth()->user()->name . '(ID:' . auth()->user()->id . ')');

        return redirect("admin/$module_name");
    }

    //PDF file is stored under project/public/download/info.pdf DOWNLOAD FILES
    function downloadFile($id)
    {
        $file = Form::find($id)->file;
        //dd($file);
        if (file_exists($file)) {
            header('Content-Description: File Transfer');
            header('Content-Type: application/octet-stream');
            header('Content-Disposition: attachment; filename=' . basename($file));
            header('Content-Transfer-Encoding: binary');
            header('Expires: 0');
            header('Cache-Control: must-revalidate');
            header('Pragma: public');
            header('Content-Length: ' . filesize($file));
            ob_clean();
            flush();
            readfile($file);
            exit;
        }
        // $asset = Assest::find($id);
        // History::create([
        // 'asset_id' => $asset->id,
        // 'status_id' => $asset->status_id,
        // 'location_id' => $asset->location_id,
        // 'model_id' => getModelID($asset->id),
        // 'activity_status' => 'File download',
        // 'user_id' => isset($asset->user_id) ?? NULL,
        // ]);
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
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Create';

        Log::info(label_case($module_title . ' ' . $module_action) . ' | User:' . auth()->user()->name . '(ID:' . auth()->user()->id . ')');

        return view(
            "components::backend.$module_name.create",
            compact('module_title', 'module_name', 'module_icon', 'module_name_singular', 'module_action')
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(FormmRequest $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Store';

        $input = $request->all();
        $input =uploadImage($input,$module_name);
        $$module_name_singular = $module_model::create($input);

        Flash::success("<i class='fas fa-check'></i> New '" . Str::singular($module_title) . "' Added")->important();

        Log::info(label_case($module_title . ' ' . $module_action) . " | '" . $$module_name_singular->name . '(ID:' . $$module_name_singular->id . ") ' by User:" . auth()->user()->name . '(ID:' . auth()->user()->id . ')');

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
        $module_path = $this->module_path;
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

        // $posts = $$module_name_singular->posts()->latest()->paginate();

        Log::info(label_case($module_title . ' ' . $module_action) . ' | User:' . auth()->user()->name . '(ID:' . auth()->user()->id . ')');

        return view(
            "components::backend.$module_name.show",
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
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Edit';

        $$module_name_singular = $module_model::findOrFail($id);

        Log::info(label_case($module_title . ' ' . $module_action) . " | '" . $$module_name_singular->name . '(ID:' . $$module_name_singular->id . ") ' by User:" . auth()->user()->name . '(ID:' . auth()->user()->id . ')');

        return view(
            "components::backend.$module_name.edit",
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
    public function update(FormmRequest $request, $id)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Update';

        $$module_name_singular = $module_model::findOrFail($id);

        $input = $request->all();
        // $input = $this->uploadImage($input);
        $input =uploadImage($input,$module_name);
        $$module_name_singular->update($input);

        Flash::success("<i class='fas fa-check'></i> '" . Str::singular($module_title) . "' Updated Successfully")->important();

        Log::info(label_case($module_title . ' ' . $module_action) . " | '" . $$module_name_singular->name . '(ID:' . $$module_name_singular->id . ") ' by User:" . auth()->user()->name . '(ID:' . auth()->user()->id . ')');

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
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'destroy';

        $$module_name_singular = $module_model::findOrFail($id);

        $$module_name_singular->delete();

        Flash::success('<i class="fas fa-check"></i> ' . label_case($module_name_singular) . ' Deleted Successfully!')->important();

        Log::info(label_case($module_title . ' ' . $module_action) . " | '" . $$module_name_singular->name . ', ID:' . $$module_name_singular->id . " ' by User:" . auth()->user()->name . '(ID:' . auth()->user()->id . ')');

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
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Trash List';

        $$module_name = $module_model::onlyTrashed()->orderBy('deleted_at', 'desc')->paginate();

        Log::info(label_case($module_title . ' ' . $module_action) . ' | User:' . auth()->user()->name);

        return view(
            "components::backend.$module_name.trash",
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
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Restore';

        $$module_name_singular = $module_model::withTrashed()->find($id);
        $$module_name_singular->restore();

        Flash::success('<i class="fas fa-check"></i> ' . label_case($module_name_singular) . ' Data Restoreded Successfully!')->important();

        Log::info(label_case($module_action) . " '$module_name': '" . $$module_name_singular->name . ', ID:' . $$module_name_singular->id . " ' by User:" . auth()->user()->name . '(ID:' . auth()->user()->id . ')');

        return redirect("admin/$module_name");
    }



    public function files_data($asset_id, Request $request)
    {
        $module_title = $this->module_title;
        $module_name = 'files';
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = "Modules\Components\Entities\Form";
        $module_name_singular = Str::singular($module_name);

        $module_action = 'History';
        $$module_name = $module_model::select('*')
        ->orderBy('form.id', 'desc');

        $data = $$module_name;
        return Datatables::of($$module_name)
            ->editColumn('created_at', function ($data) {
                return date('d-M-Y', strtotime($data->created_at));
            })
            ->addColumn('file_type', function ($data) {
                if ($data->file_extensions == 'png' || $data->file_extensions == 'jpg' || $data->file_extensions == 'jpeg' || $data->file_extensions == 'gif' || $data->file_extensions == 'psd' || $data->file_extensions == 'tiff' || $data->file_extensions == 'ai' || $data->file_extensions == 'eps' || $data->file_extensions == 'indd' || $data->file_extensions == 'raw') {
                    return '<i class="fa fa-image" aria-hidden="true"></i>';
                }
                if ($data->file_extensions == 'csv' || $data->file_extensions == 'pdf' || $data->file_extensions == 'exc' || $data->file_extensions == 'doc' || $data->file_extensions == 'dif' || $data->file_extensions == 'dll' || $data->file_extensions == 'doc' || $data->file_extensions == 'docx' || $data->file_extensions == 'html' || $data->file_extensions == 'ppt') {
                    return '<i class="fa fa-file" aria-hidden="true"></i>';
                }
                if ($data->file_extensions == 'mp4' || $data->file_extensions == 'mov' || $data->file_extensions == 'wmv' || $data->file_extensions == 'avi' || $data->file_extensions == 'mkv' || $data->file_extensions == 'webm') {
                    return '<i class="fa fa-video-camera" aria-hidden="true"></i>';
                }
            })
            ->addColumn('download', function ($data) {

                return '<a href="' . route('backend.assest.getDownload', ['file' => ($data->id)]) . '" class="fa fa-download"></a>';

                // return '<a href="" class="fa fa-download" download></a>';
            })
            ->addColumn('action', function ($data) {

                return '<a href="' . route('backend.assest.deletefile', ['id' => ($data->id)]) . '" class="fa fa-trash text-danger"></a>';
            })
            ->addColumn('image', function ($data) {
            })
            ->rawColumns(['name', 'action', 'image', 'status', 'download', 'file_type'])
            ->orderColumns(['id'], '-:column $1')
            ->make(true);
    }




}
