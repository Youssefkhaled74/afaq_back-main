<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Repositories\Eloquent\Admin\WriterRepository;
use App\Http\Requests\Admin\WriterRequests\WriterStoreRequest;
use App\Http\Requests\Admin\WriterRequests\WriterUpdateRequest;

class WriterController extends Controller
{

    public $writers;

    public function __construct(WriterRepository $writers)
    {
        $this->writers = $writers;
    }

    public function index($offset, $limit)
    {
        try{
            $writers = $this->writers->index($offset, $limit);
            return view('admin.writers.index', compact('writers'));
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function create()
    {
        return view('admin.writers.create');
    }

    public function store(WriterStoreRequest $request)
    {
        try{
            $this->writers->store($request);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function edit($id)
    {
        $writer = $this->writers->findOne($id);
        return view('admin.writers.update', compact('writer'));
    }

    public function update(WriterUpdateRequest $request, $id)
    {
        try{
            $this->writers->update($request, $id);
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
            $this->writers->activate($request->record_id);
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
            $this->writers->delete($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

    public function search(Request $request)
    {
        return $this->writers->search($request);
    }

    public function searchByColumn(Request $request)
    {
        return $this->writers->searchByColumn($request);
    }

    public function pagination($offset, $limit)
    {
        return $this->writers->pagination($offset, $limit);
    }

    public function archives($offset, $limit)
    {
        $writers = $this->writers->archives($offset, $limit);
        return view('admin.writers.archives', compact('writers'));
    }

    public function archivesPagination($offset, $limit)
    {
        return $this->writers->archives($offset, $limit);
    }

    public function archivesSearch(Request $request)
    {
        return $this->writers->archivesSearch($request);
    }

    public function archivesSearchByColumn(Request $request)
    {
        return $this->writers->archivesSearchByColumn($request);
    }


    public function back(Request $request)
    {
        try{
            $this->writers->back($request->record_id);
            flash()->success('Success');
            return back();
        }catch(\Exception $e){
            flash()->error('There is something wrong , please contact technical support');
            return back();
        }
    }

}