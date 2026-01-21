<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Repositories\Eloquent\Admin\AskRepository;
use App\Http\Requests\Admin\AskRequests\AskStoreRequest;
use App\Http\Requests\Admin\AskRequests\AskUpdateRequest;

class AskController extends Controller
{

    public $asks;

    public function __construct(AskRepository $asks)
    {
        $this->asks = $asks;
    }

    public function index($offset, $limit)
    {
        try{
            $asks = $this->asks->index($offset, $limit);
            return view('admin.asks.index', compact('asks'));
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function create()
    {
        return view('admin.asks.create');
    }

    public function store(AskStoreRequest $request)
    {
        try{
            $this->asks->store($request);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function edit($id)
    {
        $ask = $this->asks->findOne($id);
        return view('admin.asks.update', compact('ask'));
    }

    public function update(AskUpdateRequest $request, $id)
    {
        try{
            $this->asks->update($request, $id);
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
            $this->asks->activate($request->record_id);
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
            $this->asks->delete($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function search(Request $request)
    {
        return $this->asks->search($request);
    }

    public function searchByColumn(Request $request)
    {
        return $this->asks->searchByColumn($request);
    }

    public function pagination($offset, $limit)
    {
        return $this->asks->pagination($offset, $limit);
    }

    public function archives($offset, $limit)
    {
        $asks = $this->asks->archives($offset, $limit);
        return view('admin.asks.archives', compact('asks'));
    }

    public function archivesPagination($offset, $limit)
    {
        return $this->asks->archives($offset, $limit);
    }

    public function archivesSearch(Request $request)
    {
        return $this->asks->archivesSearch($request);
    }

    public function archivesSearchByColumn(Request $request)
    {
        return $this->asks->archivesSearchByColumn($request);
    }


    public function back(Request $request)
    {
        try{
            $this->asks->back($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

}