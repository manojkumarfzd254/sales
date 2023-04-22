<?php

namespace Modules\Form\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Modules\Form\Http\Requests\Backend\FormsRequest;
use Modules\Comment\Notifications\NewCommentAdded;
use Spatie\Activitylog\Models\Activity;
use Yajra\DataTables\DataTables;
use Modules\Service\Entities\Service;

class FormController extends Controller
{

    public function __construct()
    {
        // Page Title
        $this->module_title = 'Form';

        // module name
        $this->module_name = 'form';

        // module icon
        $this->module_icon = 'fas fa-wpforms';
        $this->module_path = 'form';

        // module model name, path
        $this->module_model = "Modules\Form\Entities\ServiceForm";
    }

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

        return view(
            "form::frontend.$module_path.index",
            compact('module_title', 'module_name', "$module_name", 'module_icon', 'module_action', 'module_name_singular')
        );
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($hashid)
    {
        $id = decode_id($hashid);

        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Show';

        $meta_page_type = 'article';

        $$module_name_singular = $module_model::findOrFail($id);

        // event(new PostViewed($$module_name_singular));

        return view(
            "form::frontend.$module_name.show",
            compact('module_title', 'module_name', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular", 'meta_page_type')
        );
    }

    public function enquiryForm($id, Request $request)
    {
        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Enquiry Form';
        $fields = $module_model::where('id',$id)->first();
        $$module_name_singular = $module_model::where('id',$id)->first();
        // Log::info(label_case($module_title.' '.$module_action)." | '".$$module_name_singular->form_name.'(ID:'.$$module_name_singular->id.") ' by User:".Auth::user()->name.'(ID:'.Auth::user()->id.')');

        return view(
            "$module_name::frontend.$module_name.enquiry-form",
            compact('fields','module_title', 'module_name', 'module_icon', 'module_name_singular', 'module_action', "$module_name_singular")
        );
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
        $service = Service::where('form_id',$id)->first();
        Flash::success('<i class="fas fa-check"></i> '.label_case($module_name_singular).' Form Data Saved Successfully!')->important();

        return redirect()->route('frontend.service.show',['id'=>encode_id($service->id),'slug'=>strtolower(str_replace(' ','-',$service->title))]);
    }
}
