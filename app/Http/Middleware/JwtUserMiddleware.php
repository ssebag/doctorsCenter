<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

class JwtUserMiddleware
{
     /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
       try{
        $user=JWTAuth::parseToken()->authenticate();

        if($user || $user->role == 'admin'){
             return $next($request);
        }
        else{
            return response()->json(['status' => 'You are Not Admin']);
        }
       }
       catch(\Exception $e){
        if($e instanceof TokenInvalidException){
            return response()->json(['status' => 'Token is Invalid']);
        }
        else if($e instanceof TokenExpiredException){
            return response()->json(['status' => 'Token is Expired']);
        }
        else{
            return response()->json(['status' => 'Authorization Token not found']);
        }
       }

    }


}
