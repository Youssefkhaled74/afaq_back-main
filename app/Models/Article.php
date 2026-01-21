<?php

namespace App\Models;

use App\Models\Comment as ModelsComment;
use Dom\Comment;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $table = 'articles';
	protected $fillable = [
		'icon', 
		'img', 
		'category_id', 
		'writer_id', 
		'title', 
		'desc', 
		'importance', 
		'features', 
		'what_we_offer', 
		'other_points', 
		'students_count', 
		'article_type', 
		'is_recommended', 
		'report_id', 
		'article_file',
		'linkedin',
		'whatsapp',
		'facebook',
		'email',
		'x_url',
	];
    public $timestamps = true;

	public function scopeActive($query){
		return $query->where('is_activate', 1);
	}
	
	public function scopeUnActive($query){
		return $query->where('is_activate', 0);
	}

	public function scopeArchive($query){
		return $query->whereNotNull('deleted_at');
	}
	
	public function scopeUnArchive($query){
		return $query->whereNull('deleted_at');
	}
	
	public function fildes(){
		return [
			'icon' => '',
			'img' => '',
			'category_id' => '',
			'writer_id' => '',
			'title' => '',
			'desc' => '',
			'importance' => '',
			'features' => '',
			'what_we_offer' => '',
			'other_points' => '',
			'students_count' => '',
			'article_type' => '',
			'is_recommended' => '',
			'article_file',
			'linkedin' => '',
			'whatsapp' => '',
			'facebook' => '',
			'email' => '',
			'x_url' => '',
		];
	}

	public function scopeModelSearch($model, $query)
	{
		return $model->latest()->where('id', 'LIKE', '%'. $query .'%')
					 ->orWhere('name', 'LIKE', '%'. $query .'%')
					 ->limit(PAGINATION_COUNT);
	}

	public function scopeModelSearchInArchives($model, $query)
	{
		return $model->latest()->where('id', 'LIKE', '%'. $query .'%')
					 ->orWhere('name', 'LIKE', '%'. $query .'%')
					 ->limit(PAGINATION_COUNT);
	}

	public function model_relations()
	{
		return ['category'];
	}

	public function model_relations_counts()
	{
		return [];
	}

	public function category()
	{
		return $this->belongsTo(Category::class, 'category_id');
	}

	public function writer()
	{
		return $this->belongsTo(Writer::class, 'writer_id');
	}

	public function comments()
	{
		return $this->hasMany(ModelsComment::class, 'article_id')->active()->unArchive()->orderBy('id', 'desc')->limit(20);
	}
}