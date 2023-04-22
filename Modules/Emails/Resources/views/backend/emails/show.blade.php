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
                <a href="{{ route("backend.$module_name.index") }}" class="btn btn-secondary" data-toggle="tooltip" title="{{ ucwords($module_name) }} List"><i class="fas fa-list"></i> List</a>
                @can('edit_'.$module_name)
                <x-buttons.edit route='{!!route("backend.$module_name.edit", $$module_name_singular)!!}' title="{{__('Edit')}} {{ ucwords(Str::singular($module_name)) }}" class="ms-1" />
                @endcan
            </x-slot>
        </x-backend.section-header>

        <hr>

        <div class="row mt-4">
            <div class="col">

                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#Verified" type="button" role="tab" aria-controls="home" aria-selected="true">Verified</button>
                    </li>
                    <li class="nav-item" role="presentation">
                      <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#unverified" type="button" role="tab" aria-controls="profile" aria-selected="false">Un-Verified</button>
                    </li>
                    <li class="nav-item" role="presentation">
                      <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#invalid" type="button" role="tab" aria-controls="contact" aria-selected="false">Invalid</button>
                    </li>
                  </ul>
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="Verified" role="tabpanel" aria-labelledby="home-tab">
                        @include('emails::backend.emails.tabs.verified')
                    </div>
                    <div class="tab-pane fade" id="unverified" role="tabpanel" aria-labelledby="profile-tab">
                        @include('emails::backend.emails.tabs.unverified')
                    </div>
                    <div class="tab-pane fade" id="invalid" role="tabpanel" aria-labelledby="contact-tab">
                        @include('emails::backend.emails.tabs.invalid')
                    </div>
                  </div>

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
    <script>
         $(document).ready(function() {
            $(".nav-link").click(function() {
                $(".nav-link").removeClass('active');
                $(this).addClass('active');
                $tabContent = $(this).attr('data-bs-target');
                $("#myTabContent").children('.tab-pane').removeClass('active show');
                $($tabContent).addClass('active show');
            })
        })
    </script>
@endpush
