<?php

/*
*
* Frontend Routes
*
* --------------------------------------------------------------------
*/
Route::group(['namespace' => '\Modules\Form\Http\Controllers\Frontend', 'as' => 'frontend.', 'middleware' => 'web', 'prefix' => ''], function () {

    /*
     *
     *  Comments Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'form';
    $controller_name = 'FormController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/{id}/{slug?}", ['as' => "$module_name.show", 'uses' => "$controller_name@show"]);
    Route::post("$module_name", ['as' => "$module_name.store", 'uses' => "$controller_name@store"]);
    Route::get("$module_name/service/enquiry-form/{id}", ['as' => "$module_name.enquiry-form", 'uses' => "$controller_name@enquiryForm"]);
    Route::post("$module_name/service/submitServiceFormData/{id}", ['as' => "$module_name.submitServiceFormData", 'uses' => "$controller_name@submitServiceFormData"]);
});

/*
*
* Backend Routes
*
* --------------------------------------------------------------------
*/
Route::group(['namespace' => '\Modules\Form\Http\Controllers\Backend', 'as' => 'backend.', 'middleware' => ['web', 'auth', 'can:view_backend'], 'prefix' => 'admin'], function () {
    /*
    * These routes need view-backend permission
    * (good if you want to allow more than one group in the backend,
    * then limit the backend features by different roles or permissions)
    *
    * Note: Administrator has all permissions so you do not have to specify the administrator role everywhere.
    */

    /*
     *
     *  Tags Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'form';
    $controller_name = 'FormController';
    Route::post("$module_name/createFormFields/{id}", ['as' => "$module_name.createFormFields", 'uses' => "$controller_name@createFormFields"]);
    Route::post("$module_name/submitServiceFormData/{id}", ['as' => "$module_name.submitServiceFormData", 'uses' => "$controller_name@submitServiceFormData"]);
    Route::get("$module_name/custom-validations/{id}", ['as' => "$module_name.custom-validations", 'uses' => "$controller_name@customValidations"]);
    Route::get("$module_name/form-data/{id?}", ['as' => "$module_name.form-data", 'uses' => "$controller_name@formData"]);
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    // Route::get("$module_name/show-tree/{id}", ['as' => "$module_name.show-tree", 'uses' => "$controller_name@showTree"]);
    // Route::get("$module_name/index_list2", ['as' => "$module_name.index_list2", 'uses' => "$controller_name@index_list2"]);
    Route::get("$module_name/index_data", ['as' => "$module_name.index_data", 'uses' => "$controller_name@index_data"]);
    Route::get("$module_name/trashed", ['as' => "$module_name.trashed", 'uses' => "$controller_name@trashed"]);
    Route::patch("$module_name/trashed/{id}", ['as' => "$module_name.restore", 'uses' => "$controller_name@restore"]);
    Route::resource("$module_name", "$controller_name");


    // Assign Form Routes
    $module_name = 'assign_form';
    $controller_name = 'AssignFormController';
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::get("$module_name/index_data", ['as' => "$module_name.index_data", 'uses' => "$controller_name@index_data"]);
    Route::get("$module_name/trashed", ['as' => "$module_name.trashed", 'uses' => "$controller_name@trashed"]);
    Route::patch("$module_name/trashed/{id}", ['as' => "$module_name.restore", 'uses' => "$controller_name@restore"]);
    Route::resource("$module_name", "$controller_name");


});

