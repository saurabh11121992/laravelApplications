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
use App\Task;
use Illuminate\Http\Request;


Route::get('/', function () {
    return view('welcome');
});

//Routing for task Controller
Route::get('/tasklist', 'TasksController@tasklist');
Route::get('/addtask', 'TasksController@addtask');
Route::post('/savetask', 'TasksController@savetask');
Route::delete('/deletetask/{id}','TasksController@deletetask');
/**
 * Delete An Existing Task
 */
/*Route::delete('/deletetask/{id}', function ($id) {
    //
	
	 Task::findOrFail($id)->delete();

     return redirect('/tasklist');
});*/
//Routing for user controller
Route::get('/getuserdetails', 'UsersController@getuserdetails');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::any('foo', function () {
    return "nothing";
    die;
    //
});
