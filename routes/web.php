<?php
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
Route::get('/', function () { return view('welcome'); });

use App\Http\Controllers\cHome;
Route::get('/home', ['uses'=>'cHome@index'])->name('home.index');
Route::get('/home/tambah','cHome@tambah');
Route::post('/home/store','cHome@store');
Route::get('/home/edit/{id}','cHome@edit');
Route::post('/home/update','cHome@update');
Route::get('/home/hapus/{id}','cHome@hapus');
