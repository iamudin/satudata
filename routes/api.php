<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('login', 'Api\ElemenController@login')->name('login');
Route::group(['middleware'=>['auth:sanctum']], function () {
    Route::post('cari', 'Api\ElemenController@cari')->name('cari');
    Route::post('caridetail', 'Api\ElemenController@caridetail')->name('caridetail');
});
Route::get('data.json', 'Api\ElemenController@dcat')->name('dcat');

Route::post('login', 'Api\ElemenController@login')->name('login');