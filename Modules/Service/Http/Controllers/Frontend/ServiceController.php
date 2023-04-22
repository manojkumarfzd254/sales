<?php

namespace Modules\Service\Http\Controllers\Frontend;

// use App\Authorizable;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
// use Illuminate\Support\Facades\Auth;
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
    public function __construct()
    {
        // Page Title
        $this->module_title = 'Services / Products';

        // module name
        $this->module_name = 'service';

        // directory path of the module
        $this->module_path = 'service';

        // module icon
        $this->module_icon = 'fas fa-file-alt';

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
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'List';

        $$module_name = $module_model::latest()
        // ->with(['category', 'tags', 'comments'])
        ->paginate();

        return view(
            "$module_name::frontend.$module_path.index",
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
            "$module_name::frontend.$module_name.show",
            compact('module_title', 'module_name', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular", 'meta_page_type')
        );
    }

    public function productsShow($id,$slub, Request $request)
    {

        $module_title = $this->module_title;
        $module_name = $this->module_name;
        $module_path = $this->module_path;
        $module_icon = $this->module_icon;
        $module_model = $this->module_model;
        $module_name_singular = Str::singular($module_name);

        $module_action = 'Show';

        $meta_page_type = 'article';

        $$module_name_singular = $module_model::findOrFail($id);

        $products = json_decode(ServiceForm::find($$module_name_singular->form_id)->form_data,true);


        return view(
            "$module_name::frontend.$module_name.products-show",
            compact('products', 'module_title', 'module_name', 'module_icon', 'module_action', 'module_name_singular', "$module_name_singular", 'meta_page_type')
        );
    }
}
