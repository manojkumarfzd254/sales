@extends('backend.layouts.app')

@section('title') {{ __($module_action) }} {{ __($module_title) }} @endsection

@section('breadcrumbs')
<x-backend-breadcrumbs>
    <x-backend-breadcrumb-item type="active" icon='{{ $module_icon }}'>{{ __($module_title) }}</x-backend-breadcrumb-item>
</x-backend-breadcrumbs>
@endsection

@section('content')
<div class="card">
    <div class="card-body">

        <x-backend.section-header>
            <i class="{{ $module_icon }}"></i> {{ __($module_title) }} <small class="text-muted">{{ __($module_action) }}</small>

            <x-slot name="subtitle">
                @lang(":module_name Management Dashboard", ['module_name'=>Str::title($module_name)])
            </x-slot>
            <x-slot name="toolbar">
                <x-backend.buttons.return-back />
                <a href="{{ route("backend.$module_name.index") }}" class="btn btn-secondary ms-1" data-toggle="tooltip" title="{{ __($module_title) }} List"><i class="fas fa-list-ul"></i> List</a>
            </x-slot>
        </x-backend.section-header>

        <hr>

        <div class="row mt-4">
            <div class="col">
                @include ("$module_name::backend.$module_name.custom-validation.form")
                @include ("$module_name::backend.$module_name.custom-validation.show-fields")
            </div>
        </div>
    </div>

    <div class="card-footer">
        <div class="row">
            <div class="col">

            </div>
        </div>
    </div>
</div>
@include("$module_name::backend.$module_name.custom-validation.modal")
@endsection
@push('after-styles')

<!-- Select2 Bootstrap 4 Core UI -->
<link href="{{ asset('vendor/select2/select2-coreui-bootstrap4.min.css') }}" rel="stylesheet" />

<!-- Date Time Picker -->
<link rel="stylesheet" href="{{ asset('vendor/bootstrap-4-datetime-picker/css/tempusdominus-bootstrap-4.min.css') }}" />

@endpush
@push('after-scripts')
<!-- Select2 Bootstrap 4 Core UI -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    $('.field_type').select2({
        theme: "bootstrap",
        placeholder: '@lang("Select an option")',
    });

    $(document).on("change",".field_type",function(){
        let flag = $(this).val();
        if(flag != "")
        {
            let html = '';
            html = makeHTML(flag);
            $("#modalTitle").empty().html(`Add ${flag} Field`);
            $("#setContent").empty().html(html);
            $("#makeFieldModal").modal("show");
        }
    });
});
function makeHTML(flag){
    let returnData = ``;
    switch (flag) {
        case 'text':
        case 'email':
        case 'date':
        case 'color':
        case 'file':
        case 'textarea':

                returnData += `<input type="hidden" name="field_type" value="${flag}"> <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Label Name</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                        <input type="text" class="form-control" name="label_name" placeholder="Enter Label Name">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">PlaceHolder</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                        <input type="text" class="form-control" name="placeholder" placeholder="Enter PlaceHolder ">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Required</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                            <select class="form-control" name="required">
                                                <option value="0">Not Required</option>
                                                <option value="1">Required</option>
                                            </select>
                                    </div>
                               </div>`;
            break;

            case 'selectbox':
                    returnData += `<input type="hidden" name="field_type" value="${flag}"> <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Label Name</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                        <input type="text" class="form-control" name="label_name" placeholder="Enter Label Name">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Add Options</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                        <input type="text" class="form-control" name="options" placeholder="Enter Options Example a,b,c... ">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Required</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                            <select class="form-control" name="required">
                                                <option value="0">Not Required</option>
                                                <option value="1">Required</option>
                                            </select>
                                    </div>
                               </div>`;
            break;
            case 'checkbox':
            returnData += `<input type="hidden" name="field_type" value="${flag}"> <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Label Name</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                        <input type="text" class="form-control" name="label_name" placeholder="Enter Label Name">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Add CheckBox Values</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                        <input type="text" class="form-control" name="checkbox_values" placeholder="Enter CheckBox Values Example a,b,c... ">
                                    </div>
                                </div>`;
            break;

            case 'radio':
            returnData += `<input type="hidden" name="field_type" value="${flag}"> <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Label Name</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                        <input type="text" class="form-control" name="label_name" placeholder="Enter Label Name">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="form-group col-md-3">
                                        <label class="form-label">Add Radio Values</label>
                                    </div>
                                    <div class="form-group col-md-9">
                                        <input type="text" class="form-control" name="radio_values" placeholder="Enter Radio Values Example a,b,c... ">
                                    </div>
                                </div>`;
            break;
        default:
            break;
    }
    return returnData;
}
</script>
<script type="text/javascript" src="{{ asset('vendor/moment/moment.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendor/bootstrap-4-datetime-picker/js/tempusdominus-bootstrap-4.min.js') }}"></script>

@endpush
