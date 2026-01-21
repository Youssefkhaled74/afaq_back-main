<?php

namespace App\Http\Repositories\Eloquent\Admin;

use App\Models\Article;
use DevxPackage\AbstractRepository;

class ArticleRepository extends AbstractRepository
{

    protected $model;

    public function __construct(Article $model)
    {
        $this->model = $model;
    }

    public function crudName(): string
    {
        return 'articles';
    }

    public function index($offset, $limit)
    {
        return $this->pagination($offset, $limit);
    }

    public function pagination($offset, $limit)
    {
        return $this->model->with($this->model->model_relations())->withCount($this->model->model_relations_counts())->unArchive()->orderBy('id', 'DESC')->paginate(PAGINATION_COUNT);
    }
    
    public function store($request)
    {
        $features = isset($request['features']) ? json_encode(array_values($request['features'])) : null;
        $what_we_offer = isset($request['what_we_offer']) ? json_encode(array_values($request['what_we_offer'])) : null;
        $other_points = isset($request['other_points']) ? json_encode(array_values($request['other_points'])) : null;
        if (!$request->hasFile('file') == null) {
            $file = uploadIamge($request->file('file'), $this->crudName()); // function on helper file to upload file
        }
        if (!$request->hasFile('icon') == null) {
            $icon = uploadIamge($request->file('icon'), $this->crudName()); // function on helper file to upload file
        }
        if (!$request->hasFile('article_file') == null) {
            $article_file = uploadIamge($request->file('article_file'), $this->crudName()); // function on helper file to upload file
        }
        return $this->model->create([ 
            'img' => $file ?? null,
            'icon' => $icon ?? null,
            'title' => $request->title,
            'desc' => $request->desc,
            'importance' => $request->importance,
            'category_id' => $request->category_id,
            'writer_id' => $request->writer_id,
            'features' => $features, 
            'what_we_offer' => $what_we_offer, 
            'other_points' => $other_points,
            'article_type' => $request->article_type,
            'students_count' => $request->students_count,
            'is_recommended' => $request->is_recommended ?? 0,
            'article_file' => $article_file ?? null,
            'linkedin' => $request->linkedin ?? null,
            'whatsapp' => $request->whatsapp ?? null,
            'facebook' => $request->facebook ?? null,
            'email' => $request->email ?? null,
            'x_url' => $request->x_url ?? null,
        ]);
    }
    
    public function update($request, $id)
    {
        
        $article = $this->model->where('id', $id)->first();
        if (is_null($article)) {
            flash()->error('not found');
            return back();
        }
        $features = isset($request['features']) ? json_encode(array_values($request['features'])) : null;
        $what_we_offer = isset($request['what_we_offer']) ? json_encode(array_values($request['what_we_offer'])) : null;
        $other_points = isset($request['other_points']) ? json_encode(array_values($request['other_points'])) : null;
        if (!$request->hasFile('file') == null) {
            $file = uploadIamge($request->file('file'), $this->crudName()); // function on helper file to upload file
        }
        if (!$request->hasFile('icon') == null) {
            $icon = uploadIamge($request->file('icon'), $this->crudName()); // function on helper file to upload file
        }
        if (!$request->hasFile('article_file') == null) {
            $article_file = uploadIamge($request->file('article_file'), $this->crudName()); // function on helper file to upload file
        }
        $article->update([ 
            'img' => $file ?? $article->img,
            'icon' => $icon ?? $article->icon,
            'title' => $request->title,
            'desc' => $request->desc,
            'importance' => $request->importance,
            'category_id' => $request->category_id,
            'writer_id' => $request->writer_id,
            'features' => $features, 
            'what_we_offer' => $what_we_offer, 
            'other_points' => $other_points, 
            'article_type' => $request->article_type,
            'students_count' => $request->students_count,
            'is_recommended' => $request->is_recommended ?? 0,
            'article_file' => $article_file ?? $article->article_file,
            'linkedin' => $request->linkedin ?? null,
            'whatsapp' => $request->whatsapp ?? null,
            'facebook' => $request->facebook ?? null,
            'email' => $request->email ?? null,
            'x_url' => $request->x_url ?? null,
        ]);
        flash()->success('Success');
        return back();
    }

    public function create(){}

    public function edit($id){}

    public function archivesPage($offset, $limit){}

    public function handle_request($request)
    {
        $request->password ? $request->merge(['password' => bcrypt($request->password)]) : "";
        if (!$request->hasFile('file') == null) {
            $file = uploadIamge($request->file('file'), $this->crudName()); // function on helper file to upload file
            $request->merge(['img' => $file]);
        }
        if (!$request->hasFile('icon') == null) {
            $icon = uploadIamge($request->file('icon'), $this->crudName()); // function on helper file to upload file
            $request->merge(['icon' => $icon]);
        }
        if (!$request->hasFile('files') == null) {
            $files = uploadIamges($request->file('files'), $this->crudName()); // function on helper file to upload file
            $request->merge(['imgs' => $files]);
        }
        $request = array_filter(array_intersect_key($request->all(), $this->model->fildes()));
        return $request;
    }

}