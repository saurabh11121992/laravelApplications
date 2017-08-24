<?php

namespace App\Http\Controllers;
use App\User;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
class UsersController extends Controller
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
     * function for getting User Information.
     *
     * @return void
     */
    public function getuserdetails()
    {
      $user_id =  Auth::user()->id; 
      $userdetails = User::where('id', '=', $user_id)->get();
      return view('user_details', [
            'user_details' => $userdetails
        ]);
    }  
}
