<?php
$user_id_value = '';
$published_at_value = '';
$moderated_at_value = '';
$parent_name = '';

if (isset($$module_name_singular)){

    $user_id_value = ($$module_name_singular->user_name != '')? $$module_name_singular->user_name : '';

    $published_at_value = ($$module_name_singular->moderated_at != '')? $$module_name_singular->moderated_at->isoFormat('llll') : '';

    $moderated_at_value = ($$module_name_singular->moderated_at != '')? $$module_name_singular->moderated_at->isoFormat('llll') : '';

    // $parent_name = ($$module_name_singular->parent_id != '')? $$module_name_singular->parent->name : '';

}
?>

<div class="row mb-3">
    @if ($module_action != 'Edit')
    <div class="col-md-12">
        <div class="form-group">
           <a href="{{url('csv_demo/demo.csv')}}" class="btn btn-dark btn-sm"><i class="fa fa-download"></i> CSV Demo</a>
        </div>
    </div>
    <div class="col-12 col-md-6">
        <div class="form-group">
            <?php
            $field_name = 'file_name';
            $field_lable = label_case("Upload a file");
            $field_placeholder = $field_lable;
            $required = "required";
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->file($field_name)->class('form-control')->attributes(["$required"]) }}
        </div>
    </div>
    @endif
    <div class="col-12 col-md-6">
        <div class="form-group">
            <?php
            $field_name = 'status';
            $field_lable = label_case("Status");
            $field_placeholder = $field_lable;
            $required = "required";
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->select($field_name,['DeActive','Active'])->class('form-control')->attributes(["$required"]) }}
        </div>
    </div>


</div>


@push('after-styles')

<!-- Select2 Bootstrap 4 Core UI -->
<link href="{{ asset('vendor/select2/select2-coreui-bootstrap4.min.css') }}" rel="stylesheet" />

<!-- Date Time Picker -->
<link rel="stylesheet" href="{{ asset('vendor/bootstrap-4-datetime-picker/css/tempusdominus-bootstrap-4.min.css') }}" />

@endpush

@push ('after-scripts')
<!-- Select2 Bootstrap 4 Core UI -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    let selfId = "{{@$$module_name_singular->id}}";
    $('.select2-departments').select2({
        theme: "bootstrap",
        placeholder: "-- Select an option --",
        minimumInputLength: 0,
        allowClear: true,
        ajax: {
            url: '{{route("backend.department.index_list2")}}',
            dataType: 'json',
            data: function (params) {
                return {
                    q: $.trim(params.term),
                    selfId : selfId
                };
            },
            processResults: function (data) {
                return {
                    results: data
                };
            },
            cache: true
        }
    });

    $('.select2-posts').select2({
        theme: "bootstrap",
        placeholder: "-- Select an option --",
        minimumInputLength: 2,
        allowClear: true,
        ajax: {
            url: '{{route("backend.posts.index_list")}}',
            dataType: 'json',
            data: function (params) {
                return {
                    q: $.trim(params.term)
                };
            },
            processResults: function (data) {
                return {
                    results: data
                };
            },
            cache: true
        }
    });


});
</script>

<!-- Date Time Picker & Moment Js-->
<script type="text/javascript" src="{{ asset('vendor/moment/moment.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('vendor/bootstrap-4-datetime-picker/js/tempusdominus-bootstrap-4.min.js') }}"></script>

<script type="text/javascript">
$(function() {
    $('.datetime').datetimepicker({
        format: 'YYYY-MM-DD HH:mm:ss',
        icons: {
            time: 'far fa-clock',
            date: 'far fa-calendar-alt',
            up: 'fas fa-arrow-up',
            down: 'fas fa-arrow-down',
            previous: 'fas fa-chevron-left',
            next: 'fas fa-chevron-right',
            today: 'far fa-calendar-check',
            clear: 'far fa-trash-alt',
            close: 'fas fa-times'
        }
    });
});
</script>

@endpush
