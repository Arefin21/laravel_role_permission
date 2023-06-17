<?php

namespace App\Http\Controllers\Backend\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::ADMIN_DASHBOARD;
//Show login form for admin gurd

    public function showLoginForm()
    {
    return view ('backend.auth.login');
    }

    public function login(Request $request)
    {
       //Validate Login Data

       $request->validate([
            'email'=>'required|max:50',
            'password'=>'required',
       ]);

       //Attempt to Login
       if(Auth::guard('admin')->attempt(['email'=>$request->email,'password'=>$request->password],$request->remember)){
        //Redirect to dashboard
        session()->flash('success','Successfully Logged in !');
        return redirect()->intended(route('admin.dashboard'));
    }
       else{
        if(Auth::guard('admin')->attempt(['username'=>$request->email,'password'=>$request->password],$request->remember)){
            //Search Using Username
            session()->flash('success','Successfully Logged in !');
            return redirect()->intended(route('admin.dashboard'));
        }
        session()->flash('error','Invalid email and password !');
        return back();
    }
    }
    public function logout()
    {
        Auth::guard('admin')->logout();
        return redirect()->route('admin.login');
    }
}

