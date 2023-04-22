@extends('frontend.layouts.app')

@section('title')
    {{ $$module_name_singular->form_name }}
@endsection

@section('content')
    <div class="container max-w-7xl mx-auto px-4 sm:px-6 py-10">
        <div class="mb-10 md:grid md:grid-cols-3 md:gap-6">
            <div class="md:col-span-1">
                <div class="px-4 sm:px-0">
                    <{{$$module_name_singular->heading_type}} class="text-lg font-medium leading-6 text-gray-800">Profile</{{$$module_name_singular->heading_type}}>
                    <p class="mt-1 text-sm text-gray-600">
                        {{$$module_name_singular->heading_data}}
                    </p>


                    <p>
                        {!!$$module_name_singular->description!!}
                    </p>
                </div>
            </div>
            <div class="mt-5 md:mt-0 md:col-span-2">
                {{-- ======================================================================== --}}
                <?php
                if(isset($fields)){
                    $fieldsData = json_decode($fields->fields,true);
                    if(isset($fieldsData)){
                ?>

                <form action="{{route('frontend.form.submitServiceFormData',['id'=>$$module_name_singular])}}" method="post" enctype="multipart/form-data">
                    @csrf
                @foreach ($fieldsData as $item)
                    @if ($item['field_type'] == 'text' || $item['field_type'] == 'email' || $item['field_type'] == 'date' || $item['field_type'] == 'color' || $item['field_type'] == 'file' || $item['field_type'] == 'number')
                        <div class="row mb-3">
                            <div class="form-group col-md-2">
                                <label for="{{$item['field_name']}}" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">{{$item['label_name']}}</label>
                            </div>
                            <div class="form-group col-md-10">
                                <input type="{{$item['field_type']}}" id="{{$item['field_name']}}"
                                @if ($item['field_type'] == 'file')
                                class="block w-full mb-5 text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400"
                                @else
                                    class="mt-1 border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-300 rounded border shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent"
                                @endif
                                name="{{$item['field_name']}}" placeholder="{{$item['placeholder']}}" @if ($item['required'])
                                    required
                                @endif>
                            </div>
                        </div>
                    @elseif($item['field_type'] == 'textarea')
                        <div class="row mb-3">
                            <div class="form-group col-md-2">
                                <label for="{{$item['field_name']}}" class="block-inline text-sm font-medium text-gray-700">{{$item['label_name']}}</label>
                            </div>
                            <div class="form-group col-md-10">
                                <textarea @if ($item['required'])
                                required
                            @endif name="{{$item['field_name']}}" id="{{$item['field_name']}}" class="mt-1 border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-300 rounded border shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent" placeholder="{{$item['placeholder']}}"></textarea>
                            </div>
                        </div>
                    @elseif($item['field_type'] == 'selectbox')
                        <div class="row mb-3">
                            <div class="form-group col-md-2">
                                <label for="{{$item['field_name']}}" class="block-inline text-sm font-medium text-gray-700">{{$item['label_name']}}</label>
                            </div>
                            <div class="form-group col-md-10">
                                <select name="{{$item['field_name']}}" id="{{$item['field_name']}}" class="mt-1 border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-300 rounded border shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-600 focus:border-transparent" @if ($item['required'])
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
                                            <label class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300" for="{{$checkBox}}"><input class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600" id="{{$checkBox}}" type="{{$item['field_type']}}" name="{{$item['field_name']}}[]" value="{{$checkBox}}"> {{$checkBox}}</label>
                                        <?php
                                    }
                                ?>
                                {{-- <textarea name="{{$item['field_name']}}" id="{{$item['field_name']}}" class="form-control" placeholder="{{$item['placeholder']}}"></textarea> --}}
                            </div>
                        </div>
                    @elseif($item['field_type'] == 'radio')
                        <div class="row mb-3">
                            <div class="form-group col-md-2">
                                <label class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600" for="{{$item['field_name']}}" class="form-label">{{$item['label_name']}}</label>
                            </div>
                            <div class="form-group col-md-10">
                                <?php
                                    $radioBoxes = explode(',',$item['radio_values']);
                                    foreach ($radioBoxes as $radio) {
                                        ?>
                                            <label for="{{$radio}}"><input class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300" id="{{$radio}}" type="{{$item['field_type']}}" name="{{$item['field_name']}}" value="{{$radio}}"> {{$radio}}</label>
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
                        <button type="submit" class="inline-flex w-full justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-blue-600 hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"><i class="fa fa-save"></i> Submit</button>
                    </div>
                </div>
                </form>
                <?php }} ?>

                {{-- ======================================================================== --}}
            </div>
        </div>
    </div>
@endsection

@push('after-style')
@endpush

@push('after-scripts')
    <script src="https://cdn.jsdelivr.net/npm/sharer.js@latest/sharer.min.js"></script>
@endpush
