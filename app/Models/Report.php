<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    protected $table = 'reports';
	protected $fillable = ['name'];
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
		return ['name' => ''];
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

	public function courses()
	{
		return $this->hasMany(Article::class, 'report_id')->where('article_type', 4)->orderBy('id', 'DESC')->active()->unArchive()->inRandomOrder();
	}

	public function files()
	{
		return $this->hasMany(Article::class, 'report_id')->where('article_type', 3)->orderBy('id', 'DESC')->active()->unArchive()->inRandomOrder();
	}

	public function articles()
	{
		return $this->hasMany(Article::class, 'report_id')->where('article_type', 2)->orderBy('id', 'DESC')->active()->unArchive()->inRandomOrder();
	}

	public function services()
	{
		return $this->hasMany(Article::class, 'report_id')->where('article_type', 1)->orderBy('id', 'DESC')->active()->unArchive()->inRandomOrder();
	}

	public function gen_article()
	{
		return $this->hasOne(Article::class, 'report_id');
	}

	public function categories()
	{
		return $this->hasMany(Category::class, 'report_id')->active()->unArchive()->inRandomOrder();
	}

	public function blog()
	{
		return $this->hasOne(Category::class, 'report_id')->active()->unArchive()->where('id', 1);
	}

	public function media()
	{
		return $this->hasOne(Category::class, 'report_id')->active()->unArchive()->where('id', 2);
	}

	public function category()
	{
		return $this->hasOne(Category::class, 'report_id')->active()->unArchive();
	}
}