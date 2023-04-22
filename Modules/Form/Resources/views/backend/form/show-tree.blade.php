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
                <x-buttons.show route='{!!route("backend.$module_name.show", $$module_name_singular)!!}' title="{{__('Show')}} {{ ucwords(Str::singular($module_name)) }}" class="ms-1" />
            </x-slot>
        </x-backend.section-header>

        <hr>

        <div class="row mt-4">
            <div class="col">

                <ul id="treeview">
                   {{makeTreeForDepartments($tree)}}

                </ul>


            </div>
        </div>
    </div>

    <div class="card-footer">
        <div class="row">
            <div class="col">
                <small class="float-end text-muted">
                    Updated: {{$$module_name_singular->updated_at->diffForHumans()}},
                    Created at: {{$$module_name_singular->created_at->isoFormat('LLLL')}}
                </small>
            </div>
        </div>
    </div>
</div>

@endsection
@push('after-scripts')
<link id="themecss" rel="stylesheet" type="text/css" href="https://www.shieldui.com/shared/components/latest/css/light/all.min.css" />
<script type="text/javascript" src="https://www.shieldui.com/shared/components/latest/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script type="text/javascript">
    jQuery(function ($) {
        $("#treeview").shieldTreeView();
    });
</script>
<style>
    .container
    {
        max-width: 400px;
        margin: auto;
    }
    .treeview-icon
    {
        width: 16px;
        height: 16px;
        background-image: url("/Content/img/file/file-icons-sprite.png");
    }
    .icon-folder
    {
        background-position: 0px 0px;
    }
    .icon-png
    {
        background-position: -16px 0px;
    }
    .icon-txt
    {
        background-position: -32px 0px;
    }
    .icon-pdf
    {
        background-position: -48px 0px;
    }
    .icon-doc
    {
        background-position: -64px 0px;
    }
    .icon-xls
    {
        background-position: -80px 0px;
    }
</style>
@endpush
