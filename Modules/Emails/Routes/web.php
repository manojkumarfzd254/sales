<?php
use Modules\Emails\Http\Controllers\Backend\ComposeController;
/*
*
* Frontend Routes
*
* --------------------------------------------------------------------
*/
Route::group(['namespace' => '\Modules\Emails\Http\Controllers\Frontend', 'as' => 'frontend.', 'middleware' => 'web', 'prefix' => ''], function () {

    /*
     *
     *  Comments Routes
     *
     * ---------------------------------------------------------------------
     */
    $module_name = 'emails';
    $controller_name = 'EmailsController';
    Route::get("$module_name", ['as' => "$module_name.index", 'uses' => "$controller_name@index"]);
    Route::get("$module_name/{id}/{slug?}", ['as' => "$module_name.show", 'uses' => "$controller_name@show"]);
    Route::post("$module_name", ['as' => "$module_name.store", 'uses' => "$controller_name@store"]);
});

/*
*
* Backend Routes
*
* --------------------------------------------------------------------
*/
Route::group(['namespace' => '\Modules\Emails\Http\Controllers\Backend', 'as' => 'backend.', 'middleware' => ['web', 'auth', 'can:view_backend'], 'prefix' => 'admin'], function () {
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
    $module_name = 'emails';
    $controller_name = 'EmailsController';
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::get("$module_name/index_data", ['as' => "$module_name.index_data", 'uses' => "$controller_name@index_data"]);

    Route::get("$module_name/emails_data{id}/{model}", ['as' => "$module_name.emailsData", 'uses' => "$controller_name@emailsData"]);

    Route::get("$module_name/trashed", ['as' => "$module_name.trashed", 'uses' => "$controller_name@trashed"]);
    Route::get("$module_name/{bunch_id}/verifyEmails", ['as' => "$module_name.verifyEmails", 'uses' => "$controller_name@verifyEmails"]);
    Route::get("$module_name/{bunch_id}/exportEmailsData", ['as' => "$module_name.exportEmailsData", 'uses' => "$controller_name@exportEmailsData"]);
    Route::patch("$module_name/trashed/{id}", ['as' => "$module_name.restore", 'uses' => "$controller_name@restore"]);
    Route::resource("$module_name", "$controller_name");



    $module_name = 'compose';
    $controller_name = 'ComposeController';
    Route::get("$module_name/index_list", ['as' => "$module_name.index_list", 'uses' => "$controller_name@index_list"]);
    Route::get("$module_name/webMail", ['as' => "$module_name.webMail", 'uses' => "$controller_name@webMail"]);
    Route::get("$module_name/index_data", ['as' => "$module_name.index_data", 'uses' => "$controller_name@index_data"]);
    Route::get("$module_name/trashed", ['as' => "$module_name.trashed", 'uses' => "$controller_name@trashed"]);
    Route::patch("$module_name/trashed/{id}", ['as' => "$module_name.restore", 'uses' => "$controller_name@restore"]);
    Route::get("$module_name/google", ['as' => "$module_name.redirectToGoogle", 'uses' => "$controller_name@redirectToGoogle"]);

    Route::resource("$module_name", "$controller_name");
});
Route::get('login/google/callback', [ComposeController::class, 'webMail'])->name('social.login.callback');

