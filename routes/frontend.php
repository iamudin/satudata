<?php

/*
|--------------------------------------------------------------------------
| Frontend Routes
|--------------------------------------------------------------------------
|
*/
use Illuminate\Support\Facades\Route;
Route::post('walidata', 'frontendController@get_dssd_final')->name('data');
Route::get('ewalidata', function(){
return view ('walidata');
} );
Route::get('/', 'frontendController@index');
Route::get('opdDetail/{id}', 'frontendController@opdDetail')->name('opdDetail');
Route::get('opdAll', 'frontendController@opdAll')->name('opdAll');
Route::get('cari', 'frontendController@cari');
Route::get('caridetail/{id}', 'frontendController@caridetail');
Route::get('chart/{id}', 'frontendController@chart');
Route::get('export/{id}', 'frontendController@export');