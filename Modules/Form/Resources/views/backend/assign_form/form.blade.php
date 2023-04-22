<?php
$user_id_value = '';
$published_at_value = '';
$moderated_at_value = '';
$parent_name = '';

if (isset($$module_name_singular)){

    $user_id_value = ($$module_name_singular->user_name != '')? $$module_name_singular->user_name : '';

    $published_at_value = ($$module_name_singular->moderated_at != '')? $$module_name_singular->moderated_at->isoFormat('llll') : '';

    $moderated_at_value = ($$module_name_singular->moderated_at != '')? $$module_name_singular->moderated_at->isoFormat('llll') : '';

    $parent_name = ($$module_name_singular->parent_id != '')? $$module_name_singular->parent->name : '';

}
?>
<div class="row mb-3">

    <div class="col">
        <div class="form-group">
            <?php
            $field_name = 'user_id';
            $field_lable = "User";
            $field_relation = "user";
            $required = "required";
            $value = $user_id_value;
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->select($field_name,isset($$module_name_singular)?optional($$module_name_singular->$field_relation())->pluck('name', 'id'):'')->class('form-control select2-users')->attributes(["$required"])->value($value) }}
        </div>
    </div>

    <div class="col">
        <div class="form-group">
            <?php
            $field_name = 'form_id';
            $field_lable = "Forms";
            $field_relation = "form";
            $required = "required";
            $value = $user_id_value;
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->select($field_name,isset($$module_name_singular)?optional($$module_name_singular->$field_relation())->pluck('form_name', 'id'):'')->class('form-control select2-form')->attributes(["$required"])->value($value) }}
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
    $('.select2-users').select2({
        theme: "bootstrap",
        placeholder: "-- Select an option --",
        minimumInputLength: 0,
        allowClear: true,
        ajax: {
            url: '{{route("backend.users.index_list")}}',
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

    $('.select2-form').select2({
        theme: "bootstrap",
        placeholder: "-- Select an option --",
        minimumInputLength: 0,
        allowClear: true,
        ajax: {
            url: '{{route("backend.form.index_list")}}',
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
