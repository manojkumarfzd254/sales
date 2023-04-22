<div class="text-end">
    @can('edit_'.$module_name)
    <x-buttons.edit route='{!!route("backend.$module_name.edit", $data)!!}' title="{{__('Edit')}} {{ ucwords(Str::singular($module_name)) }}" small="true" />
    @endcan
    <x-buttons.show route='{!!route("backend.$module_name.show", $data)!!}' title="{{__('Show')}} {{ ucwords(Str::singular($module_name)) }}" small="true" />
    @if ($module_name == 'form')
        @if (auth()->user()->roles[0]->name == 'super admin')
            <a href="{{route('backend.form.custom-validations',['id'=>$data])}}" title="Custom validations"  rel="noopener noreferrer" class="btn btn-info btn-sm"><i class="fa fa-gear"></i></a>
        @endif
        <a href="{{route('backend.form.form-data',['id'=>$data])}}" title="Form Data"  rel="noopener noreferrer" class="btn btn-primary btn-sm"><i class="fa fa-database"></i></a>
    @endif
    @if ($module_name == 'department')
        <a href="{{route('backend.department.show-tree',['id'=>$data])}}" title="Show Tree Form" rel="noopener noreferrer" class="btn btn-info btn-sm"><i class="fa fa-tree"></i></a>
    @endif
    @if ($module_name == 'service')
        @if ($data->type == 'Product')
            <a href="{{route('backend.form.custom-validations',['id'=>$data->form_id])}}" title="Custom validations"  rel="noopener noreferrer" class="btn btn-info btn-sm"><i class="fa fa-gear"></i></a>
        @endif
        <a href="{{route('backend.form.form-data',['id'=>$data->form_id])}}" title="Form Data"  rel="noopener noreferrer" class="btn btn-primary btn-sm"><i class="fa fa-database"></i></a>
    @endif
    @if ($module_name == 'emails')
        <a href="{{route('backend.emails.verifyEmails',['bunch_id'=>$data])}}" onclick="return confirm('Are you sure to Execute Process for verify emails data?')" title="Execute Process"  rel="noopener noreferrer" class="btn btn-info btn-sm"><i class="fa fa-gears"></i></a>
        @if($data->verify_status)
            <a href="{{route('backend.emails.exportEmailsData',['bunch_id'=>$data])}}" title="Export Emails"  rel="noopener noreferrer" class="btn btn-warning btn-sm"><i class="fa fa-file"></i></a>
        @endif
    @endif
    @if ($module_name == 'emails')
    <a href="{{url($data->file_name)}}" target="_blank" title="Download CSV File"  rel="noopener noreferrer" class="btn btn-danger btn-sm"><i class="fa fa-download"></i></a>
    @endif
</div>
