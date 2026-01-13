<?php

/*
|--------------------------------------------------------------------------
| Backend Routes
|--------------------------------------------------------------------------
|
|
*/

use Illuminate\Support\Facades\Route;

Route::get(config('master.aplikasi.author').'/{folder}/{file}', 'jsController@backend');
Route::get(config('master.aplikasi.author').'/{folder}/{id}/{file}', 'jsController@backendWithId');
Route::get(config('master.aplikasi.author').'/{folder}/{link}/{kode}/{file}', 'jsController@backendWithKode');

Route::get('/home', 'berandaController@index')->name('beranda.home');
Route::group(['prefix' => config('master.url.admin')], function () {
	// dashboard - beranda
	// Route::get('/', 'berandaController@index')->name('beranda.index');

	// Url Public
    Route::group(['middleware' => ['throttle:5']], function () {
		Route::post('lock-screen', 'userController@lockScreen');
    });
	//user ubah password
	Route::get('user/ubahpassword/{id}', 'userController@ubahpassword')->name('user.ubahpassword');
	Route::group(['middleware' => ['throttle:10']], function () {
		Route::post('user/ubahpassword', 'userController@resetpassword')->name('user.store_ubahpassword');
	});
	Route::group(['middleware' => ['aksesmenu']], function () {
        //user
        Route::get('user/hapus/{id}', 'userController@hapus')->name('user.hapus');
        Route::get('user/data', 'userController@data')->name('user.data');
        Route::resource('user', 'userController');
        //menu
        Route::get('menu/hapus/{id}', 'menuController@hapus')->name('menu.hapus');
        Route::get('menu/data', 'menuController@data')->name('menu.data');
        Route::post('menu/susun-menu', 'menuController@susunMenu')->name('menu.susun-menu');
        Route::get('menu/extract-menu', 'menuController@extract')->name('menu.extract-menu');
        Route::resource('menu', 'menuController');
        //aksesgrup
        Route::get('aksesgrup/hapus/{id}', 'aksesgrupController@hapus')->name('aksesgrup.hapus');
        Route::get('aksesgrup/data', 'aksesgrupController@data')->name('aksesgrup.data');
        Route::get('aksesgrup/detail/data/{id}', 'aksesgrupController@data_detail')->name('aksesgrup.data_detail');
        Route::resource('aksesgrup', 'aksesgrupController');
        //aksesmenu
        Route::get('aksesmenu/data/{id}', 'aksesmenuController@data')->name('aksesmenu.data');
        Route::get('aksesmenu/create/{id}', 'aksesmenuController@create')->name('aksesmenu.create_id');
        Route::resource('aksesmenu', 'aksesmenuController');
        
        // slider
        Route::prefix('slider')->as('slider')->group(function () {
            Route::get('/data', 'sliderController@data');
            Route::get('/hapus/{id}', 'sliderController@hapus');
        });
        Route::resource('slider', 'sliderController');

        // kontak
        Route::prefix('kontak')->as('kontak')->group(function () {
            Route::get('/data', 'kontakController@data');
            Route::get('/hapus/{id}', 'kontakController@hapus');
        });
        Route::resource('kontak', 'kontakController');
        
        // opd
        Route::prefix('opd')->as('opd')->group(function () {
            Route::get('/data', 'opdController@data');
            Route::get('/hapus/{id}', 'opdController@hapus');
        });
        Route::resource('opd', 'opdController');
        
        // Laporan
        Route::prefix('laporan')->as('laporan')->group(function () {
            Route::get('/opd', 'laporanController@opd');
            Route::get('/chart/{id}', 'laporanController@chart');
        });
        Route::resource('laporan', 'laporanController');
        // Laporan
        Route::prefix('keloladata')->as('keloladata')->group(function () {
            Route::get('/opd', 'keloladataController@opd');
            Route::post('/save', 'keloladataController@save');
        });
        Route::resource('keloladata', 'keloladataController');
        
        // wilayah
        Route::prefix('wilayah')->as('wilayah')->group(function () {
            Route::get('/data', 'wilayahController@data');
            Route::get('/hapus/{id}', 'wilayahController@hapus');
        });
        Route::resource('wilayah', 'wilayahController');
        
        // data
        Route::prefix('data')->as('data')->group(function () {
            Route::get('/{id?}', 'dataController@index');
            Route::get('/data/{id}', 'dataController@data');
            Route::get('/create/{id}', 'dataController@create');
            Route::get('/hapus/{id}', 'dataController@hapus');
            Route::get('/kelengkapan/{id}', 'dataController@kelengkapan');
            Route::post('/store_kelengkapan', 'dataController@store_kelengkapan');
        });
        Route::resource('data', 'dataController');

        // elemen
        Route::prefix('elemen')->as('elemen')->group(function () {
            Route::get('/data/{id?}', 'elemenController@data');
            Route::get('/hapus/{id}', 'elemenController@hapus');
            Route::get('/save/{id}', 'elemenController@save');
            Route::get('/create_child/{id}', 'elemenController@create_child');
            Route::post('/store_elemen', 'elemenController@store_elemen');
            Route::get('/detail-data/{id}', 'elemenController@detaildataindex');
            Route::get('/detail-data/{id}/data', 'elemenController@detaildata');
            Route::get('/detail-data/{id}/create', 'elemenController@createdata');
            Route::post('/store_data', 'elemenController@store_data')->name('store_data');
        });
        Route::resource('elemen', 'elemenController');
        
        // aplikasi
        Route::prefix('aplikasi')->as('aplikasi')->group(function () {
            Route::get('/data/{id?}', 'aplikasiController@data');
            Route::get('/logo/{id}', 'aplikasiController@logo');
            Route::post('/store_logo', 'aplikasiController@store_logo');
            Route::get('/favicon/{id}', 'aplikasiController@favicon');
            Route::post('/store_favicon', 'aplikasiController@store_favicon');
        });
        Route::resource('aplikasi', 'aplikasiController');   

        // slider
        Route::prefix('dokumen')->as('dokumen')->group(function () {
            Route::get('/data', 'dokumenController@data');
            Route::get('/hapus/{id}', 'dokumenController@hapus');
        });
        Route::resource('dokumen', 'dokumenController');
        
        // monografi
        Route::prefix('monografi')->as('monografi')->group(function () {
            Route::get('/data', 'monografiController@data');
            Route::get('/hapus/{id}', 'monografiController@hapus');
        });
        Route::resource('monografi', 'monografiController');
    });
});
