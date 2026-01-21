<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Repositories\Eloquent\Admin\AsksTypeRepository;
use App\Http\Requests\Admin\AsksTypeRequests\AsksTypeStoreRequest;
use App\Http\Requests\Admin\AsksTypeRequests\AsksTypeUpdateRequest;

class AsksTypeController extends Controller
{

    public $asksType;

    public function __construct(AsksTypeRepository $asksType)
    {
        $this->asksType = $asksType;
    }

    public function index($offset, $limit)
    {
        try{
            $asksType = $this->asksType->index($offset, $limit);
            return view('admin.asksType.index', compact('asksType'));
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function create()
    {
        return view('admin.asksType.create');
    }

    public function store(AsksTypeStoreRequest $request)
    {
        try{
            $this->asksType->store($request);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function edit($id)
    {
        $asksType = $this->asksType->findOne($id);
        return view('admin.asksType.update', compact('asksType'));
    }

    public function update(AsksTypeUpdateRequest $request, $id)
    {
        try{
            $this->asksType->update($request, $id);
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
            $this->asksType->activate($request->record_id);
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
            $this->asksType->delete($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function search(Request $request)
    {
        return $this->asksType->search($request);
    }

    public function searchByColumn(Request $request)
    {
        return $this->asksType->searchByColumn($request);
    }

    public function pagination($offset, $limit)
    {
        return $this->asksType->pagination($offset, $limit);
    }

    public function archives($offset, $limit)
    {
        $asksType = $this->asksType->archives($offset, $limit);
        return view('admin.asksType.archives', compact('asksType'));
    }

    public function archivesPagination($offset, $limit)
    {
        return $this->asksType->archives($offset, $limit);
    }

    public function archivesSearch(Request $request)
    {
        return $this->asksType->archivesSearch($request);
    }

    public function archivesSearchByColumn(Request $request)
    {
        return $this->asksType->archivesSearchByColumn($request);
    }


    public function back(Request $request)
    {
        try{
            $this->asksType->back($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

}