<?php

namespace App\Http\Repositories\Eloquent\Admin;

use App\Models\AsksType;
use DevxPackage\AbstractRepository;

class AsksTypeRepository extends AbstractRepository
{

    protected $model;

    public function __construct(AsksType $model)
    {
        $this->model = $model;
    }

    public function crudName(): string
    {
        return 'asksType';
    }

    public function index($offset, $limit)
    {
        return $this->pagination($offset, $limit);
    }

    public function pagination($offset, $limit)
    {
        return $this->model->with($this->model->model_relations())->withCount($this->model->model_relations_counts())->unArchive()->orderBy('id', 'DESC')->paginate(PAGINATION_COUNT);
    }

    public function create(){}

    public function edit($id){}

    public function archivesPage($offset, $limit){}

}