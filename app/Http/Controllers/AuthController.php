<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

class AuthController extends Controller
{
    public function login()
    {
        return view('auths.login');
    }


    public function postlogin(Request $request)
    {
        // fitur percabangan untuk membuat login pada laravel
        if (Auth::attempt($request->only('email', 'password'))) { // kalo sukses kita akan di redirect ke halaman dashbord
            return redirect('/dashboard');
        }
        return redirect('/login');
    }


    public function logout()
    {
        Auth::logout();
        // di arahkan ke login
        return redirect('/login');
    }
}