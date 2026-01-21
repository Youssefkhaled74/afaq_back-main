<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::group([ 'namespace' => 'App\Http\Controllers\Front'], function() {

    Route::group(['middleware' => ['limitReq']],function(){

        Route::get('user/get/sub-categories', 'HomeController@subCategories')->name('user/get/sub-categories');
        
        Route::get('/', 'HomeController@home');
        Route::get('/home', 'HomeController@home')->name('home');
        Route::get('/about-us', 'HomeController@about')->name('about');
        Route::get('/services', 'HomeController@services')->name('services');
        Route::get('/service/{id?}', 'HomeController@service')->name('service');
        Route::get('/blog/{id?}', 'HomeController@service')->name('blog');
        Route::get('/all-blog', 'HomeController@allBlog')->name('all-blog');
        Route::get('/media-center/{id?}', 'HomeController@service')->name('media-center');
        Route::get('/all-media-center', 'HomeController@allMediaCenter')->name('all-media-center');
        Route::get('/article/{id?}', 'HomeController@article')->name('article');
        Route::get('/tools', 'HomeController@tools')->name('tools');
        Route::get('/contact-us', 'HomeController@contact')->name('contact');

        Route::get('/login', 'AuthController@login')->name('login-form');
        Route::get('/register', 'AuthController@registerForm')->name('register-form');
        
        Route::post('/check-login', 'AuthController@check_login')->name('login');
        Route::post('/register-save', 'AuthController@register')->name('register');
        
        Route::post('/contact-us', 'ContactController@store')->name('contact-us');
        Route::post('/comment-save/{id?}', 'CommentController@store')->name('comment');
        
        Route::group(['middleware' => ['clientLogin']],function(){

            Route::get('/dashboard', 'DashboardController@dashboard')->name('user/dashboard');
        
        });
    });

});
