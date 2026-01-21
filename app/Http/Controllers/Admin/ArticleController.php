<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Repositories\Eloquent\Admin\ArticleRepository;
use App\Http\Requests\Admin\ArticleRequests\ArticleStoreRequest;
use App\Http\Requests\Admin\ArticleRequests\ArticleUpdateRequest;

class ArticleController extends Controller
{

    public $articles;

    public function __construct(ArticleRepository $articles)
    {
        $this->articles = $articles;
    }

    public function index($offset, $limit)
    {
        try{
            $articles = $this->articles->index($offset, $limit);
            return view('admin.articles.index', compact('articles'));
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function create()
    {
        return view('admin.articles.create');
    }

    public function createService()
    {
        return view('admin.articles.service');
    }

    public function createArticle()
    {
        return view('admin.articles.article');
    }

    public function store(ArticleStoreRequest $request)
    {
        try{
            $this->articles->store($request);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function edit($id)
    {
        $article = $this->articles->findOne($id);
        // dd(json_decode($article->other_points), explode(',', $article->other_points));
        return view('admin.articles.update', compact('article'));
    }

    public function update(ArticleUpdateRequest $request, $id)
    {
        try{
            return $this->articles->update($request, $id);
            // flash()->success('Success');
            // return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function activate(Request $request)
    {
        try{
            $this->articles->activate($request->record_id);
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
            $this->articles->delete($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function search(Request $request)
    {
        return $this->articles->search($request);
    }

    public function searchByColumn(Request $request)
    {
        return $this->articles->searchByColumn($request);
    }

    public function pagination($offset, $limit)
    {
        return $this->articles->pagination($offset, $limit);
    }

    public function archives($offset, $limit)
    {
        $articles = $this->articles->archives($offset, $limit);
        return view('admin.articles.archives', compact('articles'));
    }

    public function archivesPagination($offset, $limit)
    {
        return $this->articles->archives($offset, $limit);
    }

    public function archivesSearch(Request $request)
    {
        return $this->articles->archivesSearch($request);
    }

    public function archivesSearchByColumn(Request $request)
    {
        return $this->articles->archivesSearchByColumn($request);
    }


    public function back(Request $request)
    {
        try{
            $this->articles->back($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

}