<?php

Route::get('/', 'SiteController@home');
Route::get('/register', 'SiteController@register');
Route::post('/postregister', 'SiteController@postregister');
// Route::get('about','SiteController@about');

Route::get('/login', 'AuthController@login')->name('login');
Route::post('/postlogin', 'AuthController@postlogin');
Route::get('/logout', 'AuthController@logout');

Route::group(['middleware' => ['auth', 'checkRole:admin']], function () {

    Route::get('/siswa', 'SiswaController@index');
    Route::post('/siswa/create', 'SiswaController@create');
    Route::get('/siswa/{siswa}/edit', 'SiswaController@edit');
    Route::post('/siswa/{siswa}/update', 'SiswaController@update');
    Route::get('/siswa/{siswa}/delete', 'SiswaController@delete');
    Route::get('/siswa/{siswa}/profile', 'SiswaController@profile');
    Route::post('/siswa/{siswa}/addnilai', 'SiswaController@addnilai');

    Route::get('/materi', 'MateriController@index');
    Route::get('materi/add', [
        'uses' => 'MateriController@add',
        'as' => 'materi.add',
    ]);

    Route::post('/materi/create', 'MateriController@create');

    Route::get('/siswa/{siswa}/{idmapel}/deletenilai', 'SiswaController@deletenilai');

    Route::get('/siswa/exportexcel', 'SiswaController@exportExcel');

    Route::get('siswa/exportpdf', 'SiswaController@exportPdf');

    Route::get('/guru/{id}/profile', 'GuruController@profile');

    Route::get('/posts', 'PostController@index')->name('posts.index');
    Route::get('/posts/{post}/delete', 'PostController@delete');

    Route::get('posts/add', [
        'uses' => 'PostController@add',
        'as' => 'posts.add',
    ]);

    Route::post('post/create', [
        'uses' => 'PostController@create',
        'as' => 'posts.create',
    ]);

    Route::get('/biodata', 'BiodataController@index');
    Route::post('/biodata/create', 'BiodataController@create');
    Route::get('/biodata/{id}/edit', 'BiodataController@edit');
});


Route::group(['middleware' => ['auth', 'checkRole:admin,siswa']], function () {
    Route::get('/dashboard', 'DashboardController@index');
});

Route::get('/{slug}', [
    'uses' => 'SiteController@singlepost',
    'as' => 'site.single.post'
]);