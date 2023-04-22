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
    <div class="col-md-4">
        <div class="form-group">
            <?php
            $field_name = 'department_id';
            $field_lable = __("Business Category");
            $field_relation = "department";
            $field_placeholder = __("Select an option");
            $required = "required";
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->select($field_name, isset($$module_name_singular)?optional($$module_name_singular->$field_relation())->pluck('name', 'id'):'')->placeholder($field_placeholder)->class('form-control select2-department')->attributes(["$required"]) }}
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <?php
            $field_name = 'type';
            $field_lable = __("Service Type");
            $required = "required";
            $options = ["Service" => "Service","Product" => "Product"];
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->select($field_name,$options)->class('form-control')->attributes(["$required"]) }}
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <?php
            $field_name = 'title';
            $field_lable = "Service Title";
            $field_placeholder = "Enter Service Title";
            $required = "required";
            $value = $user_id_value;
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->text($field_name)->placeholder($field_placeholder)->class('form-control')->attributes(["$required"]) }}
            {{-- {{ html()->hidden($field_name)->placeholder($field_placeholder)->class('form-control')->attributes(["$required"]) }} --}}
        </div>
    </div>
    <div class="col-md-12">
        <div class="form-group">
            <?php
            $field_name = 'description';
            $field_lable = "Service Description";
            $field_placeholder = "Enter Service Description";
            $required = "required";
            $value = $user_id_value;
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->textarea($field_name)->placeholder($field_placeholder)->class('form-control ckeditor')->attributes(["$required"]) }}

        </div>
    </div>
    <div class="col-md-12">
        <div class="form-group">
            <?php
            $field_name = 'external_url';
            $field_lable = "External URL";
            $field_placeholder = "Enter External URL";
            $required = "";
            $value = $user_id_value;
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->text($field_name)->placeholder($field_placeholder)->class('form-control')->attributes(["$required"]) }}

        </div>
    </div>

    <div class="col-md-4">
        <div class="form-group">
            <?php
            $field_name = 'status';
            $field_lable = label_case($field_name);
            $field_placeholder = "-- Select an option --";
            $required = "required";
            $select_options = [
                '0'=>'Disable',
                '1'=>'Enable',
            ];
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->select($field_name, $select_options)->placeholder($field_placeholder)->class('form-control')->attributes(["$required"]) }}
        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <?php
            $field_name = 'icon';
            $field_lable = "Service Icon";
            $field_placeholder = "Service Icon";
            $required = "required";
            $value = $user_id_value;
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->file($field_name)->class('form-control') }}

        </div>
    </div>
    <div class="col-md-4">
        <div class="form-group">
            <?php
            $field_name = 'form_id';
            $field_lable = "Forms";
            $field_relation = "form";
            $required = "required";
            $value = $user_id_value;
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->select($field_name,isset($$module_name_singular)?optional($$module_name_singular->$field_relation())->pluck('form_name', 'id'):'')->class('form-control select2-forms')->attributes(["$required"])->value($value) }}
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
    $('.select2-department').select2({
            theme: "bootstrap",
            placeholder: '@lang("Select an option")',
            minimumInputLength: 0,
            allowClear: true,
            ajax: {
                url: '{{route("backend.department.index_list")}}',
                dataType: 'json',
                data: function(params) {
                    return {
                        q: $.trim(params.term)
                    };
                },
                processResults: function(data) {
                    return {
                        results: data
                    };
                },
                cache: true
            }
    });
    $('.select2-forms').select2({
        theme: "bootstrap",
        placeholder: "-- Select an option --",
        minimumInputLength: 0,
        allowClear: true,
        ajax: {
            url: '{{route("backend.assign_form.index_list")}}',
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
