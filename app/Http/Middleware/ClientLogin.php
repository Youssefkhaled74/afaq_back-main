<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class ClientLogin
{
    
    public function handle(Request $request, Closure $next)
    {
        if(auth()->guard('web')->check()){
            return $next($request);
        }else{
            flash()->error("FORBIDDEN , Please Contact Technical Support");
            return redirect(route('login-form'));
        }
    }
}
