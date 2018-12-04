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
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', 'ArticleController@index');

Route::post('/store', 'ArticleController@store');
Route::get('/detail/{article}', 'ArticleController@detail');
/*
Route::get('/test',function(){
    Session::flash('status','Matne Peygha !!!');
    return view('test');
    //return Redirect::to('/add');
    //return redirect('/add');
});
*/

//Route::middleware('auth')->get('/add', 'ArticleController@add');
Route::get('/add', 'ArticleController@add')->middleware('auth');
Route::get('/upload', 'ArticleController@upload');
Route::post('/uploader', 'ArticleController@uploader');

//Page Route


Route::middleware('auth')->group(function(){
    $this->resource('posts','PostController');
});

Route::resource('categories','CategoryController');

Route::get('/category/{category}','CategoryController@index');
Route::post('/comment/add/{article}','CommentController@add')->name('comment.add');
