<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\Category;
use App\Models\Report;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public $report;
    public $category;
    public $article;
    public function __construct(Report $report, Category $category, Article $article)
    {
        $this->report = $report;
        $this->category = $category;
        $this->article = $article;
    }

    public function home()
    {
        $report = $this->report->with(['courses', 'files', 'articles', 'services'])->first();
        return view('front.home', compact('report'));
    }

    public function about()
    {
        $report = $this->report->first();
        return view('front.about', compact('report'));
    }

    public function services()
    {
        $report = $this->report->with(['services'])->first();
        return view('front.services', compact('report'));
    }

    public function service($id)
    {
        $report = $this->report->with(['gen_article' => fn($q) => $q->where('id', $id)->first()])->first();
        return view('front.service', compact('report'));
    }

    public function allBlog()
    {
        $report = $this->report->with(['blog.sub'])->first();
        $arr_categories = array_column($report->blog->sub->toArray(), 'id');
        array_push($arr_categories, 1);
        $articles = $this->article->whereIn('category_id', $arr_categories)->where('is_recommended', 0)->active()->unArchive()->with('category')->orderBy('id', 'DESC')->paginate(PAGINATION_COUNT);
        $recommended_articles = $this->article->whereIn('category_id', $arr_categories)->where('is_recommended', 1)->active()->unArchive()->with('category')->orderBy('id', 'DESC')->paginate(PAGINATION_COUNT);
        // dd($arr_categories);
        // dd($report->blog->sub, $articles);
        return view('front.allArticles', compact(['report', 'articles', 'recommended_articles']));
    }

    public function allMediaCenter()
    {
        $report = $this->report->with(['media.sub'])->first();
        $arr_categories = array_column($report->media->sub->toArray(), 'id');
        array_push($arr_categories, 2);
        $articles = $this->article->whereIn('category_id', $arr_categories)->where('is_recommended', 0)->active()->unArchive()->with('category')->orderBy('id', 'DESC')->paginate(PAGINATION_COUNT);
        $recommended_articles = $this->article->whereIn('category_id', $arr_categories)->where('is_recommended', 1)->active()->unArchive()->with('category')->orderBy('id', 'DESC')->paginate(PAGINATION_COUNT);
        // dd($arr_categories);
        // dd($report->media->sub, $articles);
        return view('front.allArticles', compact(['report', 'articles', 'recommended_articles']));
    }

    public function article($id)
    {
        $report = $this->report->with(['gen_article' => fn($q) => $q->where('id', $id)->with(['category.siblings.articles', 'writer', 'comments.user'])->first()])->first();
        return view('front.article', compact('report'));
    }

    public function tools()
    {
        $report = $this->report->first();
        return view('front.tools', compact('report'));
    }

    public function contact()
    {
        $report = $this->report->first();
        return view('front.contact', compact('report'));
    }

    public function subCategories(Request $request)
    {
        return $this->category->where('parent_id', $request->category_id)->latest()->get(); 
    }

}
