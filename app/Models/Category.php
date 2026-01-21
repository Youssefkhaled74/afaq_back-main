<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'categories';
	protected $fillable = ['name', 'parent_id', 'report_id'];
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
		return ['name' => '', 'parent_id' => ''];
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
		return [];
	}

	public function model_relations_counts()
	{
		return [];
	}

	public function parent()
	{
		return $this->belongsTo(Category::class, 'parent_id');
	}

	public function sub()
	{
		return $this->hasMany(Category::class, 'parent_id');
	}

	public function children()
	{
		return $this->hasMany(Category::class, 'parent_id')->with('children');
	}

	public function parents()
	{
		return $this->belongsTo(Category::class, 'parent_id')->with('parents');
	}

	public function siblings()
	{
		return $this->hasMany(Category::class, 'parent_id', 'parent_id')->where('id', '!=', $this->id);
	}
	
	public function articles()
	{
		return $this->hasMany(Article::class, 'category_id')->active()->unArchive();
	}
}