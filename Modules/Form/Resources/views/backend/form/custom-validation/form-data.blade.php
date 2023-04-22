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
                <div class="table-responsive">
                    <table class="table table-light table-striped table-bordered">
                        <thead>
                            <tr>

                                <?php

                                        if(($$module_name_singular->fields!=null)) :
                                            echo '<th>#</th>';
                                            $tableHeader = json_decode($$module_name_singular->fields,true);
                                            foreach ($tableHeader as $header) {
                                                echo '<th>'.ucwords(str_replace('_',' ',$header['field_name'])).'</th>';
                                            }
                                        endif;
                                ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php

                                if(($$module_name_singular->form_data!=null)) :
                                    $tableData = json_decode($$module_name_singular->form_data,true);
                                    foreach($tableData as $key => $data){
                                        echo '<tr><td>'.($key+1).'</td>';
                                        foreach($tableHeader as $header1){
                                            echo '<td>';
                                            if(is_array(@$data[@$header1['field_name']]))
                                            {
                                                foreach ($data[@$header1['field_name']] as $v) {
                                                    echo '<span class="badge bg-primary" style="margin-right:2px">'.$v.'</span>';
                                                }
                                            }
                                            elseif(checkImage(@$data[@$header1['field_name']]))
                                                echo '<a href="'.url(@$data[@$header1['field_name']]).'" target="_blank"><img src="'.url(@$data[@$header1['field_name']]).'" style="width:100px;height:100px"></a>';
                                            else if(checkFile(@$data[@$header1['field_name']]))
                                                echo '<a href="'.url(@$data[@$header1['field_name']]).'" target="_blank" class="btn btn-info btn-sm">View/Download</a>';
                                            else
                                                echo @$data[@$header1['field_name']];
                                            echo '</td>';
                                        }
                                        echo '</tr>';
                                    }
                                endif;
                            ?>
                        </tbody>
                    </table>
                </div>
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
@endsection
@push('after-styles')



@endpush
@push('after-scripts')

@endpush
