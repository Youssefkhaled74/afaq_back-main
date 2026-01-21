<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Repositories\Eloquent\Admin\CommentRepository;
use App\Http\Requests\Admin\CommentRequests\CommentStoreRequest;
use App\Http\Requests\Admin\CommentRequests\CommentUpdateRequest;

class CommentController extends Controller
{

    public $comments;

    public function __construct(CommentRepository $comments)
    {
        $this->comments = $comments;
    }

    public function index($offset, $limit)
    {
        try{
            $comments = $this->comments->index($offset, $limit);
            return view('admin.comments.index', compact('comments'));
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function create()
    {
        return view('admin.comments.create');
    }

    public function store(CommentStoreRequest $request)
    {
        try{
            $this->comments->store($request);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function edit($id)
    {
        $comment = $this->comments->findOne($id);
        return view('admin.comments.update', compact('comment'));
    }

    public function update(CommentUpdateRequest $request, $id)
    {
        try{
            $this->comments->update($request, $id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function activate(Request $request)
    {
        try{
            $this->comments->activate($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function delete(Request $request)
    {
        try{
            $this->comments->delete($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function search(Request $request)
    {
        return $this->comments->search($request);
    }

    public function searchByColumn(Request $request)
    {
        return $this->comments->searchByColumn($request);
    }

    public function pagination($offset, $limit)
    {
        return $this->comments->pagination($offset, $limit);
    }

    public function archives($offset, $limit)
    {
        $comments = $this->comments->archives($offset, $limit);
        return view('admin.comments.archives', compact('comments'));
    }

    public function archivesPagination($offset, $limit)
    {
        return $this->comments->archives($offset, $limit);
    }

    public function archivesSearch(Request $request)
    {
        return $this->comments->archivesSearch($request);
    }

    public function archivesSearchByColumn(Request $request)
    {
        return $this->comments->archivesSearchByColumn($request);
    }


    public function back(Request $request)
    {
        try{
            $this->comments->back($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

}