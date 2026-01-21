<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth as FacadesAuth;
use Illuminate\Support\Facades\Hash as FacadesHash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{

    public $user;
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    public function login()
    {
        return view('front.auth.login');
    }

    public function registerForm()
    {
        return view('front.auth.register');
    }

    public function check_login(Request $request)
    {
        try{

            $user = $this->user->where('email', strtolower(trim($request->email)))->first();
            if($user){

                if(FacadesHash::check($request->password, $user->password)){

                    if(FacadesAuth::guard('web')->attempt($request->only('email', 'password'))){
                        return redirect(route('user/dashboard'));
                    }else{
                        flash()->error("There IS Something Worng");
                        return back();
                    }

                }else{
                    flash()->error("There IS Something Worng00");
                    return back();
                }

            }else{
                flash()->error("There IS Something Wrong11");
                return back();
            }
        }catch(\Exception $ex){
            flash()->error("There IS Something Wrong , Please Contact Technical Support");
            return back();
        }
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:254',
            'email' => 'required|string|max:254|unique:users,email',
            'mobile' => 'required|string|max:254|unique:users,mobile',
            'password' => 'required|confirmed|max:30',
        ]);
        if ($validator->fails()) {
            return redirect()->to(url()->previous())->withErrors($validator)->withInput();
        }

        $user = $this->user->create([
            'name' => $request->name,
            'email' => $request->email,
            'mobile' => $request->mobile,
            'password' => bcrypt($request->password),
        ]);

        if(FacadesAuth::guard('web')->attempt($user->only('email', 'password'))){
            return redirect(route('user/dashboard'));
        }else{
            flash()->error("There IS Something Worng");
            return back();
        }
    }

    public function logout()
    {
        // return $this->auth->logout();
    }

}
