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

Route::group([ 'namespace' => 'App\Http\Controllers\Admin', 'prefix' => 'admin-panel' ], function(){
        
    // login routes
    Route::get('/', 'AuthController@login'); 
    Route::get('login', 'AuthController@login')->name('admin/login');
    Route::post('login', 'AuthController@check_login')->name('admin/check-login');
    
    Route::group(['middleware' => ['adminLogin', 'limitReq']],function(){

        Route::get('get/writers', 'HomeController@writers')->name('get/writers'); 
        Route::get('get/categories', 'HomeController@categories')->name('get/categories');
        Route::get('get/asks_type', 'HomeController@asks_type')->name('get/asks_type');
        
        Route::get('/home', 'HomeController@home')->name('admin/index');
        Route::get('logout', 'AuthController@logout')->name('admin/logout');

        // admin routes
        Route::get('admins/info', 'AdminController@info')->name('admin/admins/info');
        Route::post('admins/info-update', 'AdminController@info_update')->name('admin/admins/info-update');
        Route::post('admins/change-password', 'AdminController@change_password')->name('admin/admins/change-password');
        
        Route::get('admins/index/{offset?}/{limit?}', 'AdminController@index')->name('admin/admins/index');
        Route::get('admins/create', 'AdminController@create')->name('admin/admins/create');
        Route::post('admins/create', 'AdminController@store')->name('admin/admins/store');
        Route::get('admins/activate', 'AdminController@activate')->name('admin/admins/activate');
        Route::get('admins/delete', 'AdminController@delete')->name('admin/admins/delete');
        Route::post('admins/pagination/{offset?}/{limit?}', 'AdminController@pagination')->name('admin/admins/pagination');
        Route::post('admins/search', 'AdminController@search')->name('admin/admins/search');
        Route::post('admins/search/byColumn', 'AdminController@searchByColumn')->name('admin/admins/search/byColumn'); 
        Route::get('admins/archives/{offset?}/{limit?}', 'AdminController@archives')->name('admin/admins/archives');
        Route::get('admins/back', 'AdminController@back')->name('admin/admins/back');
        Route::post('admins/pagination/archives/{offset?}/{limit?}', 'AdminController@archivesPagination')->name('admin/admins/pagination/archives');
        Route::post('admins/search/archives', 'AdminController@archivesSearch')->name('admin/admins/search/archives');
        Route::post('admins/search/byColumn/archives', 'AdminController@archivesSearchByColumn')->name('admin/admins/search/byColumn/archives');

        
      	    
        // category routes
        Route::get('categories/index/{offset?}/{limit?}', 'CategoryController@index')->name('admin/categories/index');
        Route::get('categories/create', 'CategoryController@create')->name('admin/categories/create');
        Route::post('categories/create', 'CategoryController@store')->name('admin/categories/store');
        Route::get('categories/edit/{id?}', 'CategoryController@edit')->name('admin/categories/edit');
        Route::post('categories/edit/{id}', 'CategoryController@update')->name('admin/categories/update');
        Route::get('categories/activate', 'CategoryController@activate')->name('admin/categories/activate');
        Route::get('categories/delete', 'CategoryController@delete')->name('admin/categories/delete');
        Route::post('categories/pagination/{offset?}/{limit?}', 'CategoryController@pagination')->name('admin/categories/pagination');
        Route::post('categories/search', 'CategoryController@search')->name('admin/categories/search');
        Route::post('categories/search/byColumn', 'CategoryController@searchByColumn')->name('admin/categories/search/byColumn');
        Route::get('categories/archives/{offset?}/{limit?}', 'CategoryController@archives')->name('admin/categories/archives');
        Route::get('categories/back', 'CategoryController@back')->name('admin/categories/back');
        Route::post('categories/pagination/archives/{offset?}/{limit?}', 'CategoryController@archivesPagination')->name('admin/categories/pagination/archives');
        Route::post('categories/search/archives', 'CategoryController@archivesSearch')->name('admin/categories/search/archives');
        Route::post('categories/search/byColumn/archives', 'CategoryController@archivesSearchByColumn')->name('admin/categories/search/byColumn/archives');

        
          
        // asksType routes
        Route::get('asksType/index/{offset?}/{limit?}', 'AsksTypeController@index')->name('admin/asksType/index');
        Route::get('asksType/create', 'AsksTypeController@create')->name('admin/asksType/create');
        Route::post('asksType/create', 'AsksTypeController@store')->name('admin/asksType/store');
        Route::get('asksType/edit/{id?}', 'AsksTypeController@edit')->name('admin/asksType/edit');
        Route::post('asksType/edit/{id}', 'AsksTypeController@update')->name('admin/asksType/update');
        Route::get('asksType/activate', 'AsksTypeController@activate')->name('admin/asksType/activate');
        Route::get('asksType/delete', 'AsksTypeController@delete')->name('admin/asksType/delete');
        Route::post('asksType/pagination/{offset?}/{limit?}', 'AsksTypeController@pagination')->name('admin/asksType/pagination');
        Route::post('asksType/search', 'AsksTypeController@search')->name('admin/asksType/search');
        Route::post('asksType/search/byColumn', 'AsksTypeController@searchByColumn')->name('admin/asksType/search/byColumn');
        Route::get('asksType/archives/{offset?}/{limit?}', 'AsksTypeController@archives')->name('admin/asksType/archives');
        Route::get('asksType/back', 'AsksTypeController@back')->name('admin/asksType/back');
        Route::post('asksType/pagination/archives/{offset?}/{limit?}', 'AsksTypeController@archivesPagination')->name('admin/asksType/pagination/archives');
        Route::post('asksType/search/archives', 'AsksTypeController@archivesSearch')->name('admin/asksType/search/archives');
        Route::post('asksType/search/byColumn/archives', 'AsksTypeController@archivesSearchByColumn')->name('admin/asksType/search/byColumn/archives');

        
          
        // article routes
        Route::get('articles/index/{offset?}/{limit?}', 'ArticleController@index')->name('admin/articles/index');

        Route::get('articles/create', 'ArticleController@create')->name('admin/articles/create');
        Route::get('articles/create/service', 'ArticleController@createService')->name('admin/articles/create/service');
        Route::get('articles/create/article', 'ArticleController@createArticle')->name('admin/articles/create/article');

        Route::post('articles/create', 'ArticleController@store')->name('admin/articles/store');
        
        Route::get('articles/edit/{id?}', 'ArticleController@edit')->name('admin/articles/edit');
        Route::post('articles/edit/{id}', 'ArticleController@update')->name('admin/articles/update');
        Route::get('articles/activate', 'ArticleController@activate')->name('admin/articles/activate');
        Route::get('articles/delete', 'ArticleController@delete')->name('admin/articles/delete');
        Route::post('articles/pagination/{offset?}/{limit?}', 'ArticleController@pagination')->name('admin/articles/pagination');
        Route::post('articles/search', 'ArticleController@search')->name('admin/articles/search');
        Route::post('articles/search/byColumn', 'ArticleController@searchByColumn')->name('admin/articles/search/byColumn');
        Route::get('articles/archives/{offset?}/{limit?}', 'ArticleController@archives')->name('admin/articles/archives');
        Route::get('articles/back', 'ArticleController@back')->name('admin/articles/back');
        Route::post('articles/pagination/archives/{offset?}/{limit?}', 'ArticleController@archivesPagination')->name('admin/articles/pagination/archives');
        Route::post('articles/search/archives', 'ArticleController@archivesSearch')->name('admin/articles/search/archives');
        Route::post('articles/search/byColumn/archives', 'ArticleController@archivesSearchByColumn')->name('admin/articles/search/byColumn/archives');

        
          
        // ask routes
        Route::get('asks/index/{offset?}/{limit?}', 'AskController@index')->name('admin/asks/index');
        Route::get('asks/create', 'AskController@create')->name('admin/asks/create');
        Route::post('asks/create', 'AskController@store')->name('admin/asks/store');
        Route::get('asks/edit/{id?}', 'AskController@edit')->name('admin/asks/edit');
        Route::post('asks/edit/{id}', 'AskController@update')->name('admin/asks/update');
        Route::get('asks/activate', 'AskController@activate')->name('admin/asks/activate');
        Route::get('asks/delete', 'AskController@delete')->name('admin/asks/delete');
        Route::post('asks/pagination/{offset?}/{limit?}', 'AskController@pagination')->name('admin/asks/pagination');
        Route::post('asks/search', 'AskController@search')->name('admin/asks/search');
        Route::post('asks/search/byColumn', 'AskController@searchByColumn')->name('admin/asks/search/byColumn');
        Route::get('asks/archives/{offset?}/{limit?}', 'AskController@archives')->name('admin/asks/archives');
        Route::get('asks/back', 'AskController@back')->name('admin/asks/back');
        Route::post('asks/pagination/archives/{offset?}/{limit?}', 'AskController@archivesPagination')->name('admin/asks/pagination/archives');
        Route::post('asks/search/archives', 'AskController@archivesSearch')->name('admin/asks/search/archives');
        Route::post('asks/search/byColumn/archives', 'AskController@archivesSearchByColumn')->name('admin/asks/search/byColumn/archives');

        
          
        // writer routes
        Route::get('writers/index/{offset?}/{limit?}', 'WriterController@index')->name('admin/writers/index');
        Route::get('writers/create', 'WriterController@create')->name('admin/writers/create');
        Route::post('writers/create', 'WriterController@store')->name('admin/writers/store');
        Route::get('writers/edit/{id?}', 'WriterController@edit')->name('admin/writers/edit');
        Route::post('writers/edit/{id}', 'WriterController@update')->name('admin/writers/update');
        Route::get('writers/activate', 'WriterController@activate')->name('admin/writers/activate');
        Route::get('writers/delete', 'WriterController@delete')->name('admin/writers/delete');
        Route::post('writers/pagination/{offset?}/{limit?}', 'WriterController@pagination')->name('admin/writers/pagination');
        Route::post('writers/search', 'WriterController@search')->name('admin/writers/search');
        Route::post('writers/search/byColumn', 'WriterController@searchByColumn')->name('admin/writers/search/byColumn');
        Route::get('writers/archives/{offset?}/{limit?}', 'WriterController@archives')->name('admin/writers/archives');
        Route::get('writers/back', 'WriterController@back')->name('admin/writers/back');
        Route::post('writers/pagination/archives/{offset?}/{limit?}', 'WriterController@archivesPagination')->name('admin/writers/pagination/archives');
        Route::post('writers/search/archives', 'WriterController@archivesSearch')->name('admin/writers/search/archives');
        Route::post('writers/search/byColumn/archives', 'WriterController@archivesSearchByColumn')->name('admin/writers/search/byColumn/archives');

        
          
        // comment routes
        Route::get('comments/index/{offset?}/{limit?}', 'CommentController@index')->name('admin/comments/index');
        Route::get('comments/create', 'CommentController@create')->name('admin/comments/create');
        Route::post('comments/create', 'CommentController@store')->name('admin/comments/store');
        Route::get('comments/edit/{id?}', 'CommentController@edit')->name('admin/comments/edit');
        Route::post('comments/edit/{id}', 'CommentController@update')->name('admin/comments/update');
        Route::get('comments/activate', 'CommentController@activate')->name('admin/comments/activate');
        Route::get('comments/delete', 'CommentController@delete')->name('admin/comments/delete');
        Route::post('comments/pagination/{offset?}/{limit?}', 'CommentController@pagination')->name('admin/comments/pagination');
        Route::post('comments/search', 'CommentController@search')->name('admin/comments/search');
        Route::post('comments/search/byColumn', 'CommentController@searchByColumn')->name('admin/comments/search/byColumn');
        Route::get('comments/archives/{offset?}/{limit?}', 'CommentController@archives')->name('admin/comments/archives');
        Route::get('comments/back', 'CommentController@back')->name('admin/comments/back');
        Route::post('comments/pagination/archives/{offset?}/{limit?}', 'CommentController@archivesPagination')->name('admin/comments/pagination/archives');
        Route::post('comments/search/archives', 'CommentController@archivesSearch')->name('admin/comments/search/archives');
        Route::post('comments/search/byColumn/archives', 'CommentController@archivesSearchByColumn')->name('admin/comments/search/byColumn/archives');

        
          
        // contact routes
        Route::get('contacts/index/{offset?}/{limit?}', 'ContactController@index')->name('admin/contacts/index');
        Route::get('contacts/create', 'ContactController@create')->name('admin/contacts/create');
        Route::post('contacts/create', 'ContactController@store')->name('admin/contacts/store');
        Route::get('contacts/edit/{id?}', 'ContactController@edit')->name('admin/contacts/edit');
        Route::post('contacts/edit/{id}', 'ContactController@update')->name('admin/contacts/update');
        Route::get('contacts/activate', 'ContactController@activate')->name('admin/contacts/activate');
        Route::get('contacts/delete', 'ContactController@delete')->name('admin/contacts/delete');
        Route::post('contacts/pagination/{offset?}/{limit?}', 'ContactController@pagination')->name('admin/contacts/pagination');
        Route::post('contacts/search', 'ContactController@search')->name('admin/contacts/search');
        Route::post('contacts/search/byColumn', 'ContactController@searchByColumn')->name('admin/contacts/search/byColumn');
        Route::get('contacts/archives/{offset?}/{limit?}', 'ContactController@archives')->name('admin/contacts/archives');
        Route::get('contacts/back', 'ContactController@back')->name('admin/contacts/back');
        Route::post('contacts/pagination/archives/{offset?}/{limit?}', 'ContactController@archivesPagination')->name('admin/contacts/pagination/archives');
        Route::post('contacts/search/archives', 'ContactController@archivesSearch')->name('admin/contacts/search/archives');
        Route::post('contacts/search/byColumn/archives', 'ContactController@archivesSearchByColumn')->name('admin/contacts/search/byColumn/archives');

        
      //ROUTEFROMCOMMANDLINE

    });
});
