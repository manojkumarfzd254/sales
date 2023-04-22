<?php
if(isset($fields)){
    $fieldsData = json_decode($fields->fields,true);
    if(isset($fieldsData)){
?>
<br>
<center><h2>Form</h2></center>
<form action="{{route('backend.form.submitServiceFormData',['id'=>$$module_name_singular])}}" method="post" enctype="multipart/form-data">
    @csrf
@foreach ($fieldsData as $item)
    @if ($item['field_type'] == 'text' || $item['field_type'] == 'email' || $item['field_type'] == 'date' || $item['field_type'] == 'color' || $item['field_type'] == 'file' || $item['field_type'] == 'number')
        <div class="row mb-3">
            <div class="form-group col-md-2">
                <label for="{{$item['field_name']}}" class="form-label">{{$item['label_name']}}</label>
            </div>
            <div class="form-group col-md-10">
                <input type="{{$item['field_type']}}" id="{{$item['field_name']}}" class="form-control" name="{{$item['field_name']}}" placeholder="{{$item['placeholder']}}" @if ($item['required'])
                    required
                @endif>
            </div>
        </div>
    @elseif($item['field_type'] == 'textarea')
        <div class="row mb-3">
            <div class="form-group col-md-2">
                <label for="{{$item['field_name']}}" class="form-label">{{$item['label_name']}}</label>
            </div>
            <div class="form-group col-md-10">
                <textarea @if ($item['required'])
                required
            @endif name="{{$item['field_name']}}" id="{{$item['field_name']}}" class="form-control" placeholder="{{$item['placeholder']}}"></textarea>
            </div>
        </div>
    @elseif($item['field_type'] == 'selectbox')
        <div class="row mb-3">
            <div class="form-group col-md-2">
                <label for="{{$item['field_name']}}" class="form-label">{{$item['label_name']}}</label>
            </div>
            <div class="form-group col-md-10">
                <select name="{{$item['field_name']}}" id="{{$item['field_name']}}" class="form-control" @if ($item['required'])
                required
            @endif>
                    <option value="">Select a option</option>
                    @php
                        $options = explode(',',$item['options']);
                        foreach ($options as $option) {
                            echo '<option value="'.$option.'">'.ucwords($option).'</option>';
                        }
                    @endphp
                </select>

            </div>
        </div>
    @elseif($item['field_type'] == 'checkbox')
        <div class="row mb-3">
            <div class="form-group col-md-2">
                <label for="{{$item['field_name']}}" class="form-label">{{$item['label_name']}}</label>
            </div>
            <div class="form-group col-md-10">
                <?php
                    $checkBoxes = explode(',',$item['checkbox_values']);
                    foreach ($checkBoxes as $checkBox) {
                        ?>
                            <label for="{{$checkBox}}"><input id="{{$checkBox}}" type="{{$item['field_type']}}" name="{{$item['field_name']}}[]" value="{{$checkBox}}"> {{$checkBox}}</label>
                        <?php
                    }
                ?>
                {{-- <textarea name="{{$item['field_name']}}" id="{{$item['field_name']}}" class="form-control" placeholder="{{$item['placeholder']}}"></textarea> --}}
            </div>
        </div>
    @elseif($item['field_type'] == 'radio')
        <div class="row mb-3">
            <div class="form-group col-md-2">
                <label for="{{$item['field_name']}}" class="form-label">{{$item['label_name']}}</label>
            </div>
            <div class="form-group col-md-10">
                <?php
                    $radioBoxes = explode(',',$item['radio_values']);
                    foreach ($radioBoxes as $radio) {
                        ?>
                            <label for="{{$radio}}"><input id="{{$radio}}" type="{{$item['field_type']}}" name="{{$item['field_name']}}" value="{{$radio}}"> {{$radio}}</label>
                        <?php
                    }
                ?>
                {{-- <textarea name="{{$item['field_name']}}" id="{{$item['field_name']}}" class="form-control" placeholder="{{$item['placeholder']}}"></textarea> --}}
            </div>
        </div>
    @endif

@endforeach
<div class="row mb-3">
    <div class="form-group col-md-2">

    </div>
    <div class="form-group col-md-10">
        <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Submit</button>
    </div>
</div>
</form>
<?php }} ?>
