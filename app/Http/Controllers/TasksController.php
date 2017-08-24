<?php

namespace App\Http\Controllers;
use App\Task;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class TasksController extends Controller
{
    use AuthenticatesUsers;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    /**
     * function for tasklist.
     *
     * @return void
     */
    public function tasklist()
    {   
        $user_id =  Auth::user()->id; 
     	$tasks = Task::where('user_id', '=', $user_id)->orderBy('created_at', 'asc')->get();
       //  echo '<pre>';
        // print_r($tasks);
        return view('tasks', [
            'tasks' => $tasks
        ]);

    }

    /**
     * function for add task.
     *
     * @return void
     */
    public function addtask()
    {

     return view('addtask');
    }

     /**
     * function for add task.
     *
     * @return void
     */
    public function savetask(Request $request)
    {   

    //image upload process
    $this->validate($request, [
    'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
    ]); 
    $imageName = time().'.'.$request->image->getClientOriginalExtension();
    $request->image->move(public_path('images/task'), $imageName);
    //end image upload    
    $user_id =  Auth::user()->id;    
    $task = new Task;
    $task->name = $_POST['name'];
    $task->image = $imageName;
	$task->createdby = $_POST['createdby'];
    $task->user_id = $user_id;
    $task->save();
    return redirect('/tasklist');

    }

     /**
     * function for deleting the created task.
     *
     * @return void
     */
public function deletetask($request)
    {
     Task::findOrFail($request)->delete();
    // $user = Task::find($id);    
    // $user->delete();
     return redirect('/tasklist');

    }

}
