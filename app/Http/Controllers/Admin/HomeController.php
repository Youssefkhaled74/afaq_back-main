<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Repositories\Eloquent\Admin\AsksTypeRepository;
use App\Http\Repositories\Eloquent\Admin\CategoryRepository;
use App\Http\Repositories\Eloquent\Admin\HomeRepository;
use App\Http\Repositories\Eloquent\Admin\WriterRepository;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public $home;
    public $writerRepository;
    public $categoryRepository;
    public $asksTypeRepository;

    public function __construct(HomeRepository $home, WriterRepository $writerRepository, CategoryRepository $categoryRepository, AsksTypeRepository $asksTypeRepository)
    {
        $this->home = $home;
        $this->writerRepository = $writerRepository;
        $this->categoryRepository = $categoryRepository;
        $this->asksTypeRepository = $asksTypeRepository;
    }

    public function home()
    {
        return $this->home->home();
    }

    public function writers(Request $request)
    {
        return $this->writerRepository->search($request);
    }

    public function categories(Request $request)
    {
        return $this->categoryRepository->search($request);
    }

    public function asks_type(Request $request)
    {
        return $this->asksTypeRepository->search($request);
    }

}
