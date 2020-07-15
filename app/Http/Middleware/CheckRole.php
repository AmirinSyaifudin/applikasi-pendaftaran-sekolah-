<?php

namespace App\Http\Middleware;

use Closure;

class CheckRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next,...$roles) // tambahakn $role  uttuk mendeteksi adanya penambahakn role
    {
        // membuat percabangan 
        if(in_array($request->user()->role,$roles)){ // apakah request user sama dengan role roel 
            return $next($request); // kalo sama memiliki roel aplikasi nya boleh di lanjutkan
        }
            return redirect('/'); // klo gak ada maka akan di riderect ke Routenya
        
    }
}
