<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{

    public $user;
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    public function dashboard()
    {
        return view('front.dashboard.index');
    }

}
