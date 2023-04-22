@extends('backend.layouts.app')

@section('title') {{ __($module_action) }} {{ __($module_title) }} @endsection

@section('breadcrumbs')
<x-backend-breadcrumbs>
    <x-backend-breadcrumb-item route='{{route("backend.$module_name.index")}}' icon='{{ $module_icon }}'>
        {{ __($module_title) }}
    </x-backend-breadcrumb-item>
    <x-backend-breadcrumb-item type="active">{{ __($module_action) }}</x-backend-breadcrumb-item>
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
        {{-- <div class="container">
            <div class="btn-group btn-group-justified">
              <a href="#" class="btn btn-primary">Upload</a>&nbsp;
              <a href="#" class="btn btn-primary">Samsung</a>&nbsp;
              <a href="#" class="btn btn-primary">Sony</a>
            </div>
        </div> --}}

      {{-- ===================================== --}}
      <div class="row mt-4">
        <div class="col-12 col-sm-12">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#info" role="tab"
                        aria-controls="home" aria-selected="true">Info</a>
                </li>
                {{-- <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#history" role="tab"
                        aria-controls="profile" aria-selected="false">History</a>
                </li> --}}
                {{-- <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#audit" role="tab"
                        aria-controls="contact" aria-selected="false">Audit</a>
                </li> --}}
                <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#files" role="tab"
                        aria-controls="contact" aria-selected="false">Files</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane  show active" id="info" role="tabpanel" aria-labelledby="home-tab">
                    @include('backend.includes.show')

                </div>
                {{-- <div class="tab-pane " id="history" role="tabpanel" aria-labelledby="profile-tab">
                    <br>
                    @include("assest::backend.$module_name.history")
                </div> --}}
                {{-- <div class="tab-pane " id="audit" role="tabpanel" aria-labelledby="contact-tab">
                    <br>
                    @include("assest::backend.$module_name.audit")
                </div> --}}
                <div class="tab-pane " id="files" role="tabpanel" aria-labelledby="contact-tab">
                    <br>
                    @include("components::backend.form.files")
                </div>
            </div>
            {{-- ===================================== --}}


        </div>

    </div>

    {{-- ==== --}}

        <div class="row mt-4">
            <div class="col-12 col-sm-12">

                {{-- @include('backend.includes.show') --}}

            </div>
            <div class="col-12 col-sm-7">

                {{-- <div class="text-center">
                    <a href="{{route("frontend.$module_name.show", [encode_id($$module_name_singular->id), $$module_name_singular->slug])}}" class="btn btn-success" target="_blank"><i class="fas fa-link"></i> Public View</a>
                </div> --}}
                <hr>

                {{-- <div class="card">
                    <div class="card-header">
                        Posts
                    </div>

                    <div class="card-body">
                        <ul class="fa-ul">
                            @forelse($posts as $row)
                            @php
                            switch ($row->status) {
                            case 0:
                            // Unpublished
                            $text_class = 'text-danger';
                            break;

                            case 1:
                            // Published
                            $text_class = 'text-success';
                            break;

                            case 2:
                            // Draft
                            $text_class = 'text-warning';
                            break;

                            default:
                            // Default
                            $text_class = 'text-primary';
                            break;
                            }
                            @endphp
                            <li>
                                <span class="fa-li"><i class="fas fa-check-square {{$text_class}}"></i></span> <a href="{{route('backend.posts.show', $row->id)}}">{{$row->name}}</a> <a href="{{route('frontend.posts.show', [encode_id($row->id), $row->slug])}}" class="btn btn-sm btn-outline-primary" target="_blank" data-toggle="tooltip" title="Public View"> <i class="fas fa-external-link-square-alt"></i> </a>
                            </li>
                            @empty
                            <p class="text-center">
                                No post found.
                            </p>
                            @endforelse
                        </ul>
                        {{$posts->links()}}
                    </div>
                </div> --}}
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
@include('components::backend.form.file-modal')
@endsection


{{-- =========== --}}

@push('after-styles')
    <!-- DataTables Core and Extensions -->

    <link rel="stylesheet" href="{{ asset('vendor/datatable/datatables.min.css') }}">
@endpush
@push('after-scripts')
    {{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> --}}
    {{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> --}}
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- DataTables Core and Extensions -->
    <script type="text/javascript" src="{{ asset('vendor/datatable/datatables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $(".nav-link").click(function() {
                $(".nav-link").removeClass('active');
                $(this).addClass('active');
            })
        })
    </script>
    {{-- <script type="text/javascript">
        $('#history-table').DataTable({
            processing: true,
            serverSide: true,
            autoWidth: true,
            responsive: true,
            ajax: '{{ route("backend.$module_name.history_data", ['asset_id' => $$module_name_singular->id]) }}',
            columns: [{
                    data: 'created_at',
                    name: 'history.created_at'
                },
                {
                    data: 'admin_name',
                    name: 'admin.name'
                },
                {
                    data: 'activity_status',
                    name: 'history.activity_status'
                },
                {
                    data: 'model_name',
                    name: 'assetmodels.name'
                },
                {
                    data: 'target_name',
                    name: 'target.name'
                },
                {
                    data: 'description',
                    name: 'assets.description',
                    orderable: false,
                    searchable: false
                },
                {
                    data: 'history_id',
                    name: 'history.id',
                    orderable: false,
                    searchable: false
                }
            ]
        });
        // function downloadURI(uri, name) {
        //     var link = document.createElement("a");
        //     link.download = name;
        //     link.href = uri;
        //     document.body.appendChild(link);
        //     link.click();
        //     document.body.removeChild(link);
        //     delete link;
        // }
    </script> --}}

   <script type="text/javascript">
         $('#audit-table').DataTable({
            processing: true,
            serverSide: true,
            autoWidth: true,
            responsive: true,
            ajax: '',
            columns: [{
                    data: 'created_at',
                    name: 'audit.created_at'
                },
                {
                    data: 'fleet_no',
                    name: 'assets.fleet_no'
                },
                {
                    data: 'status_name',
                    name: 'statuslabelss.name'
                },
                {
                    data: 'description',
                    name: 'audit.description',
                    orderable: false,
                    searchable: false
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: false,
                    searchable: false
                }
            ]
        });

        function openFileModal() {
            // alert(0);
            $("#uploadFileModal").modal('show');
        }
    </script>


    <script type="text/javascript">
        $('#files-table').DataTable({
            processing: true,
            serverSide: true,
            autoWidth: true,
            responsive: true,
            ajax: '{{ route("backend.$module_name.files_data", ['form_id' => $$module_name_singular->id]) }}',
            columns: [{
                    data: 'file_type',
                    name: 'file_type'
                },
                {
                    data: 'description',
                    name: 'asset_files.description'
                },
                // {
                //     data: 'image',
                //     name: 'image'
                // },
                {
                    data: 'file',
                    name: 'asset_files.file'
                },
                {
                    data: 'download',
                    name: 'download'
                },
                {
                    data: 'created_at',
                    name: 'asset_files.created_at',
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: false,
                    searchable: false
                }
            ]
        });

        function closeModal() {
            $("#uploadFileModal").modal('hide');
        }
    </script>
@endpush
