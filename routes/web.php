<?php


use Illuminate\Support\Facades\Route;


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

// Route::get('/', function () {
//     return view('welcome');
// });
Auth::routes();

Route::get('/', 'App\Http\Controllers\HomeController@redirectAdmin')->name('index');
Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix'=>'admin'],function(){
    Route::get('/','App\Http\Controllers\Backend\DashboardController@index')->name('admin.dashboard');
    Route::resource('roles','App\Http\Controllers\Backend\RolesController',['names'=>'admin.roles']);
    Route::resource('users','App\Http\Controllers\Backend\UsersController',['names'=>'admin.users']);
    Route::resource('admins','App\Http\Controllers\Backend\AdminsController',['names'=>'admin.admins']);

    Route::get('/login','App\Http\Controllers\Backend\Auth\LoginController@showLoginForm')->name('admin.login');
    Route::post('/login/submit','App\Http\Controllers\Backend\Auth\LoginController@login')->name('admin.login.submit');
    
    Route::post('/logout/submit','App\Http\Controllers\Backend\Auth\LoginController@logout')->name('admin.logout.submit');

    Route::get('/password/reset','App\Http\Controllers\Backend\Auth\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
    Route::post('/password/reset/submit','App\Http\Controllers\Backend\Auth\ForgotPasswordController@reset')->name('admin.password.update');
});



