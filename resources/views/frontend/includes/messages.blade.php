@if ($errors->any())
<div class="alert alert-danger" role="alert">
    <p>
        <i class="fa fa-exclamation-triangle"></i> {{__('Please fix the following errors & try again!')}}
    </p>
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

@include('flash::message')

@if (session('status'))

<p class="p-4 mb-4 text-sm text-green-800 rounded-lg bg-green-50 dark:bg-gray-800 dark:text-green-400" role="alert" class="alert alert-success">{{ session('status') }}</p>
@endif
