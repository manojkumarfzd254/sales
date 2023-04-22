@extends('frontend.layouts.app')

@section('title') {{ __("Posts") }} @endsection

@section('content')

<section class="bg-gray-100 text-gray-600 py-20">
    <div class="container mx-auto flex px-5 items-center justify-center flex-col">
        <div class="text-center lg:w-2/3 w-full">
            <h1 class="text-3xl sm:text-4xl mb-4 font-medium text-gray-800">
                {{ __($$module_name_singular->title." / Products") }}
            </h1>


            @include('frontend.includes.messages')

        </div>
    </div>
</section>

<section class="bg-white text-gray-600 p-6 sm:p-20">
    <div class="grid grid-cols-2 sm:grid-cols-3 gap-6">
        @foreach ($products as $product)
        @php
        $details_url = "";
        @endphp

        <div class="">
            <div class=" bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="flex flex-col items-stretch">
                    <a href="{{$details_url}}" class="overflow-hidden">
                        <img src="{{url($product['product_image'])}}" alt="" class="rounded-t-lg transform hover:scale-110 duration-200">
                    </a>
                    <div class="p-3 sm:p-5">
                        <a href="{{$details_url}}">
                            <h2 class="mb-2 text-md sm:text-2xl tracking-tight text-gray-900 dark:text-white">
                                {{$product['product_name']}}
                            </h2>
                        </a>

                        {{-- <p class="flex-1 h-full mb-3 font-normal text-gray-700 dark:text-gray-400">
                            {{$product['description']}}
                        </p> --}}
                        <p>
                            <a href="javascript:void(0)" class="bg-blue-100 hover:bg-blue-200 text-blue-800 text-sm font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 dark:hover:bg-blue-300">in Stock :: {{$product['stock']}}</a>
                        </p>
                        <p>
                            {{-- @foreach ($$module_name_singular->tags as $tag)
                            <a href="{{route('frontend.tags.show', [encode_id($tag->id), $tag->slug])}}" class="bg-blue-100 hover:bg-blue-200 text-blue-800 text-sm font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 dark:hover:bg-blue-300">
                                {{$tag->name}}
                            </a>
                            <!-- text-blue-800 text-sm font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 -->
                            @endforeach --}}
                        </p>

                        <div class="text-end">
                            <a href="{{$details_url}}" class="inline-flex items-center text-sm outline outline-1 outline-gray-800 text-gray-700 hover:text-gray-100 bg-gray-200 hover:bg-gray-700 py-2 px-3 focus:outline-none rounded">
                                Enquiry
                                <svg class="ml-2 -mr-1 w-4 h-4" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        @endforeach
    </div>
    <div class="d-flex justify-content-center w-100 mt-3">
        {{-- {{$$module_name->links()}} --}}
    </div>
</section>


@endsection
