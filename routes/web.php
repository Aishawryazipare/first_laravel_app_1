<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/macroex', 'StudController@index');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('stud_list','NewStudController@index');
Route::get('add-stud','NewStudController@add');
Route::post('add-stud','NewStudController@create');


Route::get('stud','StudController@index');
Route::get('stud/create','StudController@create')->name('stud.create');
Route::post('stud/create','StudController@store')->name('stud.create');
Route::get('stud/edit/{id}','StudController@edit')->name('stud.edit');
Route::put('stud/edit/{id}','StudController@update')->name('stud.edit');
Route::delete('stud/delete/{id}','StudController@destroy')->name('stud.delete');

/*
 * Admin routes
 */
Route::group(["prefix"=>'admin','namespace'=>'Admin'],function () {
//    Auth::routes();
    Route::get('/', 'Auth\LoginController@showLoginForm');
   Route::get('login', 'Auth\LoginController@showLoginForm');
   Route::post('login', 'Auth\LoginController@login')->name('admin.login');
   Route::post('logout', 'Auth\LoginController@logout')->name('admin.logout');
   Route::get('register', 'Auth\RegisterController@showRegistrationForm');
   Route::post('register', 'Auth\RegisterController@register')->name('admin.register');
   Route::get('home', 'HomeController@index');
//    Route::get('admin/login','Auth\LoginController@index');
});