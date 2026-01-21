<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\Comment;
use App\Models\Contact;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ContactController extends Controller
{

    public $user;
    public $contact;
    public function __construct(User $user, Contact $contact)
    {
        $this->user = $user;
        $this->contact = $contact;
    }

    public function store(Request $request, Article $id)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'first_name' => 'required|string|max:255',
			'last_name' => 'required|string|max:255',
			'email' => 'required|string|max:255',
			'phone' => 'required|string|max:255',
			'message' => 'required|string',
        ]);
        if ($validator->fails()) {
            return redirect()->to(url()->previous())->withErrors($validator)->withInput();
        }

        try {
            $this->contact->create([
                'first_name' => $request->first_name,
                'last_name' => $request->last_name,
                'email' => $request->email,
                'phone' => $request->phone,
                'message' => $request->message,
            ]);
        } catch (\Exception $ex) {
            flash()->error('there is something wrong , please contact technical support');
            return back();
        }

        flash()->success('success');
        return back();
    }

}
