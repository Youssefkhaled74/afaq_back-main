<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\Comment;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CommentController extends Controller
{

    public $user;
    public $comment;
    public function __construct(User $user, Comment $comment)
    {
        $this->user = $user;
        $this->comment = $comment;
    }

    public function store(Request $request, Article $id)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'comment' => 'required|string|max:1255',
        ]);
        if ($validator->fails()) {
            return redirect()->to(url()->previous())->withErrors($validator)->withInput();
        }

        try {
            $comment = $this->comment->create([
                'comment' => $request->comment,
                'article_id' => $id->id ?? null,
                'user_id' => auth()->guard('web')->user()->id ?? null,
            ]);
            $comment->is_activate = 0;
            $comment->save();
        } catch (\Exception $ex) {
            flash()->error('there is something wrong , please contact technical support');
            return back();
        }

        flash()->success('success');
        return back();
    }

}
