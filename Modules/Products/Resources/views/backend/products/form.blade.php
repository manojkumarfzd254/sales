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

    {{-- <div class="col">
        <div class="form-group">
            <?php
            $field_name = 'user_id';
            $field_lable = "User";
            $field_relation = "user";
            $field_placeholder = "-- Select an option --";
            $required = "required";
            $value = $user_id_value;
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->text($field_name)->placeholder($field_placeholder)->class('form-control')->attributes(["$required"])->value($value)->disabled() }}
            {{ html()->hidden($field_name)->placeholder($field_placeholder)->class('form-control')->attributes(["$required"]) }}
        </div>
    </div> --}}

    {{-- <div class="col">
        <div class="form-group">
            <?php
            $field_name = 'parent_id';
            $field_lable = "Parent Comment";
            $field_relation = "parent";
            $field_placeholder = "-- Select an option --";
            $required = "required";
            $value = $parent_name;
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->text($field_name)->placeholder($field_placeholder)->class('form-control')->attributes(["$required"])->value($value)->disabled() }}
            {{ html()->hidden($field_name)->placeholder($field_placeholder)->class('form-control')->attributes(["$required"]) }}
        </div>
    </div> --}}
</div>
<div class="row mb-3">
    <div class="col-md-6">
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
    <div class="col-md-6">
        <div class="form-group">
            <?php
            $field_name = 'form_id';
            $field_lable = __("Form");
            $field_relation = "form";
            $field_placeholder = __("Select an option");
            $required = "required";
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->select($field_name, isset($$module_name_singular)?optional($$module_name_singular->$field_relation)->pluck('form_name', 'id'):'')->placeholder($field_placeholder)->class('form-control select2-form')->attributes(["$required"]) }}
        </div>
    </div>
    <div class="col-12 col-md-6">
        <div class="form-group">
            <?php
            $field_name = 'name';
            $field_lable = label_case($field_name);
            $field_placeholder = $field_lable;
            $required = "required";
            ?>
            {{ html()->label($field_lable, $field_name)->class('form-label') }} {!! fielf_required($required) !!}
            {{ html()->text($field_name)->placeholder($field_placeholder)->class('form-control')->attributes(["$required"]) }}
        </div>
    </div>
    <div class="col-12 col-md-6">
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
        minimumInputLength: 2,
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
        $('.select2-form').select2({
            theme: "bootstrap",
            placeholder: '@lang("Select an option")',
            minimumInputLength: 0,
            allowClear: true,
            ajax: {
                url: '{{route("backend.form.index_list")}}',
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
