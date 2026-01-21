@extends('layouts.front.home')

<!-- title page -->
@section('title')
    <title>AFAQ</title>
@endsection

<!-- custom page -->
@section('css')
<style>
    /* Courses Carousel Styles */
    .courses-carousel-container {
        padding: 0 60px;
    }

    .courses-carousel-wrapper {
        overflow: hidden;
        margin: 0 -10px;
    }

    .courses-carousel {
        display: flex;
        transition: transform 0.5s ease-in-out;
        padding: 0 10px;
    }

    .carousel-item-wrapper {
        width: 33.333%;
        padding: 0 10px;
        flex-shrink: 0;
    }

    .course-card {
        background: white;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        height: 100%;
    }

    .course-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 30px rgba(0,0,0,0.15);
    }

    .course-image {
        width: 100%;
        height: 200px;
        object-fit: cover;
        border-radius: 15px 15px 0 0;
    }

    .course-content {
        padding: 20px;
    }

    .course-content h5 {
        font-size: 1.1rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 15px;
        min-height: 50px;
    }

    .course-meta {
        display: flex;
        align-items: center;
        font-size: 0.9rem;
        color: #666;
    }

    .course-meta i {
        margin-right: 5px;
    }

    /* Carousel Navigation Buttons */
    .carousel-nav-btn {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        background: transparent;
        border: none;
        border-radius: 50%;
        width: 45px;
        height: 45px;
        display: flex;
        align-items: center;
        justify-content: center;
        box-shadow: none;
        cursor: pointer;
        transition: all 0.3s ease;
        z-index: 10;
    }

    .carousel-nav-btn:hover {
        background: rgba(0, 0, 0, 0.05);
        transform: translateY(-50%) scale(1.1);
    }

    .carousel-nav-btn i {
        font-size: 18px;
        color: #666;
    }

    .carousel-prev {
        left: 0;
    }

    .carousel-next {
        right: 0;
    }

    .carousel-nav-btn:disabled {
        opacity: 0.5;
        cursor: not-allowed;
    }

    .carousel-nav-btn:disabled:hover {
        transform: translateY(-50%) scale(1);
    }

    /* Responsive Design */
    @media (max-width: 991px) {
        .carousel-item-wrapper {
            width: 50%;
        }
    }

    @media (max-width: 767px) {
        .carousel-item-wrapper {
            width: 100%;
        }

        .courses-carousel-container {
            padding: 0 40px;
        }

        .carousel-nav-btn {
            width: 35px;
            height: 35px;
        }

        .carousel-nav-btn i {
            font-size: 14px;
        }
    }

    /* Services Carousel Styles */
    .services-carousel-container {
        padding: 0 60px;
    }

    .services-carousel-wrapper {
        overflow: hidden;
        margin: 0 -10px;
    }

    .services-carousel {
        display: flex;
        transition: transform 0.5s ease-in-out;
        padding: 0 10px;
    }

    .service-carousel-item {
        width: 33.333%;
        padding: 0 10px;
        flex-shrink: 0;
    }

    .service-card {
        background: white;
        border-radius: 20px;
        padding: 30px 20px;
        box-shadow: 0 5px 15px rgba(0,0,0,0.08);
        transition: all 0.3s ease;
        height: 100%;
        display: flex;
        flex-direction: column;
    }

    .service-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 15px 40px rgba(0,0,0,0.15);
    }

    .service-icon {
        margin-bottom: 20px;
    }

    .service-icon img {
        width: 80px;
        height: 80px;
        object-fit: contain;
    }

    .service-title {
        color: #333;
        font-size: 1.3rem;
        font-weight: 600;
        margin-bottom: 15px;
        min-height: 60px;
    }

    .service-description {
        color: #666;
        font-size: 0.95rem;
        line-height: 1.6;
        margin-bottom: 20px;
        flex-grow: 1;
    }

    .btn-more {
        display: inline-block;
        padding: 8px 25px;
        background: white;
        /* background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); */
        /* color: white; */
        text-decoration: none;
        border-radius: 25px;
        font-weight: 500;
        transition: all 0.3s ease;
        margin-top: auto;
    }

    .btn-more:hover {
        background: white;
        /* background: linear-gradient(135deg, #764ba2 0%, #667eea 100%); */
        transform: scale(1.05);
        /* color: white; */
        border: 1px solid #333;
    }

    /* Responsive Design for Services Carousel */
    @media (max-width: 991px) {
        .service-carousel-item {
            width: 50%;
        }
    }

    @media (max-width: 767px) {
        .service-carousel-item {
            width: 100%;
        }

        .services-carousel-container {
            padding: 0 40px;
        }

        .service-title {
            font-size: 1.1rem;
        }
    }

    /* Articles Section Styles */
    .article-featured {
        background: white;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        height: 100%;
    }

    .article-featured img {
        width: 100%;
        height: 300px;
        object-fit: cover;
    }

    .article-content {
        padding: 25px;
    }

    .article-content h3 {
        color: #333;
        font-size: 1.5rem;
        font-weight: 600;
        margin-bottom: 15px;
    }

    .article-content p {
        color: #666;
        line-height: 1.6;
    }

    .article-list {
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .article-item {
        background: white;
        border-radius: 10px;
        padding: 15px;
        box-shadow: 0 3px 10px rgba(0,0,0,0.08);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .article-item:hover {
        transform: translateY(-3px);
        box-shadow: 0 5px 20px rgba(0,0,0,0.12);
    }

    .article-thumb {
        width: 120px;
        height: 90px;
        object-fit: cover;
        border-radius: 8px;
        flex-shrink: 0;
    }

    .article-date {
        color: #999;
        font-size: 0.85rem;
        display: inline-block;
        margin-bottom: 8px;
    }

    .article-date i {
        margin-right: 5px;
    }

    .article-item h5 {
        color: #333;
        font-size: 1.1rem;
        font-weight: 600;
        margin-bottom: 10px;
        line-height: 1.3;
    }

    .article-item p {
        color: #666;
        font-size: 0.9rem;
        line-height: 1.5;
        margin: 0;
    }

    @media (max-width: 767px) {
        .article-featured img {
            height: 200px;
        }

        .article-item {
            flex-direction: column;
        }

        .article-thumb {
            width: 100%;
            height: 150px;
            margin-bottom: 15px;
            margin-right: 0 !important;
        }
    }

    /* Files Carousel Styles */
    .files-carousel-container {
        max-width: 1400px;
        margin: 0 auto;
        padding: 0 60px;
        position: relative;
    }

    .files-carousel-wrapper {
        overflow: visible;
        position: relative;
    }

    .files-carousel {
        display: flex;
        transition: transform 0.5s cubic-bezier(0.4, 0, 0.2, 1);
        gap: 30px;
        padding: 20px 0;
    }

    .file-carousel-item {
        width: 50%;
        min-width: 50%;
        padding: 0;
        flex-shrink: 0;
        opacity: 0.4;
        transform: scale(0.9);
        transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
        filter: blur(2px);
    }

    .file-carousel-item.active {
        opacity: 1;
        transform: scale(1);
        filter: blur(0);
    }

    .file-card-wrapper {
        display: flex;
        gap: 30px;
        align-items: stretch;
        background: white;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0 10px 40px rgba(0,0,0,0.1);
        min-height: 320px;
        transition: box-shadow 0.3s ease;
    }

    .file-carousel-item.active .file-card-wrapper {
        box-shadow: 0 20px 60px rgba(0,0,0,0.15);
    }

    .file-card-image {
        flex: 0 0 40%;
        position: relative;
        overflow: hidden;
    }

    .file-image {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.3s ease;
    }

    .file-card-wrapper:hover .file-image {
        transform: scale(1.05);
    }

    .file-card-content {
        flex: 1;
        padding: 40px 30px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .file-date {
        color: #999;
        font-size: 0.85rem;
        margin-bottom: 15px;
        font-weight: 500;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    .file-title {
        font-size: 1.8rem;
        font-weight: 700;
        margin-bottom: 20px;
        color: #1a1a1a;
        line-height: 1.3;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    .file-author {
        color: #666;
        font-size: 0.9rem;
        margin-bottom: 20px;
        font-style: italic;
    }

    .file-author::before {
        content: "By ";
        font-style: normal;
    }

    .file-description {
        font-size: 0.95rem;
        line-height: 1.6;
        color: #555;
        margin: 0;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    /* Responsive for Files Carousel */
    @media (max-width: 1199px) {
        .file-carousel-item {
            width: 100%;
        }
    }

    @media (max-width: 991px) {
        .file-card-wrapper {
            flex-direction: column;
            min-height: auto;
            padding: 25px;
        }

        .file-card-image {
            flex: none;
            width: 100%;
            height: 200px;
            margin-bottom: 20px;
        }

        .file-card-content {
            flex: none;
            width: 100%;
            padding: 0;
        }

        .files-carousel-container {
            padding: 0 40px;
        }

        .file-title {
            font-size: 1.5rem;
        }
    }

    @media (max-width: 767px) {
        .file-card-wrapper {
            padding: 20px;
        }

        .file-title {
            font-size: 1.3rem;
        }

        .file-author {
            font-size: 0.85rem;
        }

        .file-description {
            font-size: 0.9rem;
        }

        .files-carousel-container {
            padding: 0 30px;
        }
    }
</style>
@endsection

@section('content')

    <!-- Hero Section -->
    <section class="hero-section" data-aos="fade-up">
        <div class="container" style="max-width: 1515px; padding: 0;">
            <div class="row align-items-center mt-4">
                <div class="col-lg-6">
                    <div class="hero-desciption-area">
                        <h1 class="display-5 fw-bold text-dark mb-2">Evaluate Your Organization's</h1>
                        <h1 class="display-5 fw-bold text-dark mb-4">Marketing Management</h1>
                        <div class="d-inline-flex flex-column align-items-start gap-2 position-relative">
                            <img src="{{ asset('front/assets/images/Drop 1.png') }}" alt="shape" class="shape-drop" style="position: absolute; margin-top: -22px; left: -22px; width: 29%;">
                            <h2 class="display-3 fw-bold m-0" style="z-index: 100000;">Online Course</h2>
                        </div>
                        <p class="text-secondary mt-3 mb-4">Get a report of your strengths and weaknesses</p>
                        <a href="#" class="btn btn-primary rounded-pill px-4 py-2">Read More</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="hero-image" data-aos="fade-left" data-aos-delay="500">
                        <img src="{{ asset('front/assets/images/Hourglass.png') }}" alt="Team Meeting" class="img-fluid rounded-4">
                        <div class="floating-card card-1" data-aos="zoom-in" data-aos-delay="600">
                            <div class="card-icon" style="margin-bottom: 30% !important;">
                                <img src="{{ asset('front/assets/images/Ellipse 1.png') }}" alt="Team Meeting" class="img-fluid rounded-4">
                            </div>
                            <div class="card-content">
                                <h5>Asmaa Ebrahem</h5>
                                <img src="{{ asset('front/assets/images/Frame 1 (1).png') }}" alt="Team Meeting" class="img-fluid rounded-4" style="width: 65%;">
                                <p>Comprehensive <br> Marketing and Sales <br> Assessment
                                </p>
                            </div>
                        </div>
                        <div class="floating-card card-2" data-aos="zoom-in" data-aos-delay="700">
                            <div class="row">
                                <div class="col-3">
                                    <div class="card-icon" style="margin-bottom: 30% !important;">
                                        <img src="{{ asset('front/assets/images/Ellipse 1 (2).png') }}" alt="Team Meeting" class="img-fluid rounded-4">
                                    </div>
                                </div>
                                <div class="col-9">
                                    <div class="card-content" style="margin-left: 7px;">
                                        <p>Ahmed Ebrahem</p>
                                        <img src="{{ asset('front/assets/images/Frame 1.png') }}" alt="Team Meeting" class="img-fluid rounded-4" style="width: 65%;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    @include('flash::message')
    @if ($errors->any())
        <div style="text-align: left; margin: 15px;">
            <ul dir="ltr">
                @foreach ($errors->all() as $error)
                    <li class="text-danger">{{$error}}</li>
                @endforeach
            </ul>
        </div>
    @endif
    
    @isset($report['services'])
        <section class="services-section py-5" data-aos="fade-up">
            <div class="container">

                <div class="text-center mb-5">
                    <h2 class="fw-bold text-primary-emphasis display-6 mb-1">
                        Our Services
                    </h2>
                    <img src="{{ asset('front/assets/images/Vector 9.png') }}" alt="vector" class="img-fluid rounded-4" style="margin-left: 20%; margin-top: -20px;">
                    <p class="text-secondary fs-5 mx-auto" style="max-width: 760px;">
                        Onlearning is one powerful online software suite that combines all the tools
                        needed to run a successful school or office.
                    </p>
                </div>

                <!-- Services Carousel Container -->
                <div class="services-carousel-container position-relative">
                    <!-- Previous Button -->
                    <button class="carousel-nav-btn carousel-prev position-absolute" type="button" id="servicesPrevBtn">
                        <i class="fas fa-chevron-left"></i>
                    </button>

                    <!-- Next Button -->
                    <button class="carousel-nav-btn carousel-next position-absolute" type="button" id="servicesNextBtn">
                        <i class="fas fa-chevron-right"></i>
                    </button>

                    <!-- Carousel Wrapper -->
                    <div class="services-carousel-wrapper overflow-hidden">
                        <div class="services-carousel d-flex transition-transform" id="servicesCarousel">

                            @foreach($report['services'] as $service)
                                <!-- Service Item 1 -->
                                <div class="service-carousel-item flex-shrink-0" data-aos="fade-up" data-aos-delay="200">
                                    <div class="service-card text-center">
                                        <div class="service-icon mb-3">
                                            <img src="{{ asset($service->icon) }}" alt="{{ $service->title }}" class="img-fluid rounded-4">
                                        </div>
                                        <h4 class="service-title">{{ $service->title }}</h4>
                                        <p class="service-description">{{ Str::limit(strip_tags($service->desc), 150) }}</p>
                                        {{-- <p class="service-description">{{ $service->desc }}</p> --}}
                                        <a href="{{ route('service', $service->id) }}" class="btn-more">more</a>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endisset

    <!-- Latest Articles Section -->
    @isset($report['articles'])
        <section class="articles-section py-5 bg-light" data-aos="fade-up">
            <div class="container">
                <div class="text-center mb-5">
                    <h2 class="fw-bold text-primary-emphasis display-6 mb-1">
                        Latest Articles
                    </h2>
                    <img src="{{ asset('front/assets/images/Vector 9.png') }}" alt="vector" class="img-fluid rounded-4" style="margin-left: 20%; margin-top: -20px;">
                </div>
                <div class="row g-4">

                    @if(count($report['articles']) > 0)
                        @php
                            $featuredArticle = $report['articles']->first();
                            $otherArticles = $report['articles']->skip(1)->take(3);
                        @endphp

                        <!-- Featured Article (First Article) -->
                        <div class="col-md-6" data-aos="fade-right">
                            <div class="article-featured">
                                <a href="{{ route('article', $featuredArticle->id) }}" style="text-decoration: none;">
                                    <img src="{{ asset($featuredArticle->img ?? 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=500') }}" alt="{{ $featuredArticle->title }}" class="img-fluid rounded-3 mb-3">
                                </a>
                                <div class="article-content">
                                    <a href="{{ route('article', $featuredArticle->id) }}" style="text-decoration: none;">
                                        <h3>{{ $featuredArticle->title }}</h3>
                                    </a>
                                    <p>{{ Str::limit($featuredArticle->desc, 150) }}</p>
                                </div>
                            </div>
                        </div>

                        <!-- Articles List (Other Articles) -->
                        <div class="col-md-6">
                            <div class="article-list">
                                @foreach($otherArticles as $index => $article)
                                    <div class="article-item d-flex mb-3" data-aos="fade-left" data-aos-delay="{{ ($index + 1) * 100 }}">
                                        <a href="{{ route('article', $article->id) }}" style="text-decoration: none;">
                                            <img src="{{ asset($article->img ?? 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=150') }}" alt="{{ $article->title }}" class="article-thumb me-3">
                                        </a>
                                        <div>
                                            <span class="article-date">
                                                <i class="far fa-calendar"></i>
                                                {{ $article->created_at ? $article->created_at->format('M d, Y') : 'Apr 9, 2023' }}
                                            </span>
                                            <h5>{{ $article->title }}</h5>
                                            <p>{{ Str::limit($article->desc, 200) }}</p>
                                        </div>
                                    </div>
                                @endforeach

                                <!-- If less than 3 other articles, fill with placeholders or show all available -->
                                @if($otherArticles->count() == 0)
                                    <!-- Show placeholder if no other articles -->
                                    <div class="article-item d-flex mb-3" data-aos="fade-left" data-aos-delay="100">
                                        <div class="text-center w-100 py-4">
                                            <p class="text-muted">No more articles available</p>
                                        </div>
                                    </div>
                                @endif
                            </div>
                        </div>
                    @else
                        <!-- No articles available -->
                        <div class="col-12">
                            <div class="text-center py-5">
                                <p class="text-muted fs-5">No articles available at the moment</p>
                            </div>
                        </div>
                    @endif

                </div>
            </div>
        </section>
    @endisset

    <!-- Latest Files Section -->
    @isset($report['files'])
        <section class="files-section py-5" data-aos="fade-up">
            <div class="text-center mb-5">
                <h2 class="fw-bold text-primary-emphasis display-6 mb-1">
                    Latest Files
                </h2>
                <img src="{{ asset('front/assets/images/Vector 9.png') }}" alt="vector" class="img-fluid rounded-4" style="margin-left: 20%; margin-top: -20px;">
                <p class="text-secondary fs-5 mx-auto" style="max-width: 760px;">Onlearing is one powerful online software suite that combines all the tools<br>needed to run a successful school or office.</p>
            </div>

            <!-- Files Carousel Container - Full Width -->
            <div class="files-carousel-container position-relative">
                <!-- Previous Button -->
                <button class="carousel-nav-btn carousel-prev position-absolute" type="button" id="filesPrevBtn">
                    <i class="fas fa-chevron-left"></i>
                </button>

                <!-- Next Button -->
                <button class="carousel-nav-btn carousel-next position-absolute" type="button" id="filesNextBtn">
                    <i class="fas fa-chevron-right"></i>
                </button>

                <!-- Carousel Wrapper -->
                <div class="files-carousel-wrapper">
                    <div class="files-carousel d-flex" id="filesCarousel">

                            @foreach($report['files'] as $index => $file)
                                <!-- File Item -->
                                <div class="file-carousel-item flex-shrink-0 {{ $loop->first ? 'active' : '' }}" data-aos="fade-up" data-aos-delay="100">
                                    <div class="file-card-wrapper">
                                        <!-- Left side image -->
                                        <div class="file-card-image">
                                            <a href="{{ route('article', $file->id) }}" style="text-decoration: none;">
                                                <img src="{{ asset($file->img ?? 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=400') }}" alt="{{ $file->title }}" class="file-image">
                                            </a>
                                        </div>
                                        <!-- Right side content -->
                                        <div class="file-card-content">
                                            <div class="file-date">
                                                {{-- <span>{{ $file->created_at ?? '1 - 28 July 2022' }}</span> --}}
                                                <span>{{ $file->created_at->format('d F Y') }}</span>
                                            </div>
                                            <a href="{{ route('article', $file->id) }}" style="text-decoration: none;">
                                                <h3 class="file-title">{{ $file->title }}</h3>
                                            </a>
                                            <div class="file-author">
                                                {{ $file->author ?? 'Abdulmoniem Sulieman Al-Sheikh' }} - {{ $file->location ?? 'Sudan' }}
                                            </div>
                                            <p class="file-description">{{ $file->desc }}</p>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endisset

    <!-- Latest Courses Section -->
    @isset($report['courses'])
        <section class="courses-section py-5 bg-light" data-aos="fade-up">
            <div class="container">
                <div class="text-center mb-5">
                    <h2 class="fw-bold text-primary-emphasis display-6 mb-1">
                        Latest Courses
                    </h2>
                    <img src="{{ asset('front/assets/images/Vector 9.png') }}" alt="vector" class="img-fluid rounded-4" style="margin-left: 20%; margin-top: -20px;">
                </div>

                <!-- Carousel Container -->
                <div class="courses-carousel-container position-relative">
                    <!-- Previous Button -->
                    <button class="carousel-nav-btn carousel-prev position-absolute" type="button" id="coursesPrevBtn">
                        <i class="fas fa-chevron-left"></i>
                    </button>

                    <!-- Next Button -->
                    <button class="carousel-nav-btn carousel-next position-absolute" type="button" id="coursesNextBtn">
                        <i class="fas fa-chevron-right"></i>
                    </button>

                    <!-- Carousel Wrapper -->
                    <div class="courses-carousel-wrapper overflow-hidden">
                        <div class="courses-carousel d-flex transition-transform" id="coursesCarousel">
                            
                            @foreach($report['courses'] as $course)
                                <!-- Course Item 1 -->
                                <div class="carousel-item-wrapper flex-shrink-0" data-aos="zoom-in" data-aos-delay="100">
                                    <div class="course-card">
                                        <a href="{{ route('article', $course->id) }}" style="text-decoration: none;">
                                            <img src="{{ asset($course->img) }}" alt="Course" class="course-image mb-3">
                                        </a>
                                        <div class="course-content">
                                            <a href="{{ route('article', $course->id) }}" style="text-decoration: none;">
                                                <h5>{{ $course->title }}</h5>
                                            </a>
                                            <div class="course-meta">
                                                <span><i class="fas fa-users"></i> {{ $course->students_count ?? 10 }} Students</span>
                                                <span class="ms-3"><i class="fas fa-star text-warning"></i> 4.9</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endisset

    <!-- Newsletter Section -->
    <section class="newsletter-section py-5" data-aos="fade-up">
        <div class="container"> 
            <div class="newsletter-box text-center text-white" style="background-image: url('{{ asset('front/assets/images/Rectangle 534.png') }}');">
                <h2 class="mb-3">Enter your Email to get the <br> Latest News</h2>
                <p class="mb-4">Lorem ipsum is simply dummy text of the printing and typesetting</p>
                <form class="newsletter-form mx-auto">
                    <div class="input-group">
                        <input type="email" class="form-control" placeholder="Enter your email address">
                        <button class="btn btn-light" type="submit">Get Started</button>
                    </div>
                </form>
            </div>
        </div>
    </section>

        
@endsection
<!-- custom js -->
@section('script')
<script>
    // Courses Carousel Functionality
    document.addEventListener('DOMContentLoaded', function() {
        const carousel = document.getElementById('coursesCarousel');
        const prevBtn = document.getElementById('coursesPrevBtn');
        const nextBtn = document.getElementById('coursesNextBtn');
        const carouselItems = carousel.querySelectorAll('.carousel-item-wrapper');

        let currentIndex = 0;
        let itemsPerView = 3; // Default for desktop

        // Calculate items per view based on screen size
        function calculateItemsPerView() {
            if (window.innerWidth <= 767) {
                itemsPerView = 1;
            } else if (window.innerWidth <= 991) {
                itemsPerView = 2;
            } else {
                itemsPerView = 3;
            }
        }

        // Update carousel position
        function updateCarousel() {
            const itemWidth = 100 / itemsPerView;
            const translateX = -currentIndex * itemWidth;
            carousel.style.transform = `translateX(${translateX}%)`;

            // Update button states
            prevBtn.disabled = currentIndex === 0;
            nextBtn.disabled = currentIndex >= carouselItems.length - itemsPerView;
        }

        // Previous button click
        prevBtn.addEventListener('click', function() {
            if (currentIndex > 0) {
                currentIndex--;
                updateCarousel();
            }
        });

        // Next button click
        nextBtn.addEventListener('click', function() {
            if (currentIndex < carouselItems.length - itemsPerView) {
                currentIndex++;
                updateCarousel();
            }
        });

        // Handle window resize
        window.addEventListener('resize', function() {
            calculateItemsPerView();
            // Reset to beginning if current index is out of bounds
            if (currentIndex > carouselItems.length - itemsPerView) {
                currentIndex = Math.max(0, carouselItems.length - itemsPerView);
            }
            updateCarousel();
        });

        // Touch/Swipe support for mobile
        let touchStartX = 0;
        let touchEndX = 0;

        carousel.addEventListener('touchstart', function(e) {
            touchStartX = e.changedTouches[0].screenX;
        });

        carousel.addEventListener('touchend', function(e) {
            touchEndX = e.changedTouches[0].screenX;
            handleSwipe();
        });

        function handleSwipe() {
            const swipeThreshold = 50;
            const diff = touchStartX - touchEndX;

            if (Math.abs(diff) > swipeThreshold) {
                if (diff > 0 && currentIndex < carouselItems.length - itemsPerView) {
                    // Swiped left - go next
                    currentIndex++;
                    updateCarousel();
                } else if (diff < 0 && currentIndex > 0) {
                    // Swiped right - go previous
                    currentIndex--;
                    updateCarousel();
                }
            }
        }

        // Auto-play functionality (optional)
        let autoPlayInterval;
        const autoPlayDelay = 5000; // 5 seconds

        function startAutoPlay() {
            autoPlayInterval = setInterval(function() {
                if (currentIndex < carouselItems.length - itemsPerView) {
                    currentIndex++;
                } else {
                    currentIndex = 0; // Loop back to beginning
                }
                updateCarousel();
            }, autoPlayDelay);
        }

        function stopAutoPlay() {
            clearInterval(autoPlayInterval);
        }

        // Pause auto-play on hover
        const carouselContainer = document.querySelector('.courses-carousel-container');
        carouselContainer.addEventListener('mouseenter', stopAutoPlay);
        carouselContainer.addEventListener('mouseleave', startAutoPlay);

        // Initialize
        calculateItemsPerView();
        updateCarousel();
        startAutoPlay();
    });

    // Services Carousel Functionality
    document.addEventListener('DOMContentLoaded', function() {
        const servicesCarousel = document.getElementById('servicesCarousel');
        const servicesPrevBtn = document.getElementById('servicesPrevBtn');
        const servicesNextBtn = document.getElementById('servicesNextBtn');
        const serviceCarouselItems = servicesCarousel.querySelectorAll('.service-carousel-item');

        let servicesCurrentIndex = 0;
        let servicesItemsPerView = 3; // Default for desktop

        // Calculate items per view based on screen size
        function calculateServicesItemsPerView() {
            if (window.innerWidth <= 767) {
                servicesItemsPerView = 1;
            } else if (window.innerWidth <= 991) {
                servicesItemsPerView = 2;
            } else {
                servicesItemsPerView = 3;
            }
        }

        // Update carousel position
        function updateServicesCarousel() {
            const itemWidth = 100 / servicesItemsPerView;
            const translateX = -servicesCurrentIndex * itemWidth;
            servicesCarousel.style.transform = `translateX(${translateX}%)`;

            // Update button states
            servicesPrevBtn.disabled = servicesCurrentIndex === 0;
            servicesNextBtn.disabled = servicesCurrentIndex >= serviceCarouselItems.length - servicesItemsPerView;
        }

        // Previous button click
        servicesPrevBtn.addEventListener('click', function() {
            if (servicesCurrentIndex > 0) {
                servicesCurrentIndex--;
                updateServicesCarousel();
            }
        });

        // Next button click
        servicesNextBtn.addEventListener('click', function() {
            if (servicesCurrentIndex < serviceCarouselItems.length - servicesItemsPerView) {
                servicesCurrentIndex++;
                updateServicesCarousel();
            }
        });

        // Handle window resize
        window.addEventListener('resize', function() {
            calculateServicesItemsPerView();
            // Reset to beginning if current index is out of bounds
            if (servicesCurrentIndex > serviceCarouselItems.length - servicesItemsPerView) {
                servicesCurrentIndex = Math.max(0, serviceCarouselItems.length - servicesItemsPerView);
            }
            updateServicesCarousel();
        });

        // Touch/Swipe support for mobile
        let servicesTouchStartX = 0;
        let servicesTouchEndX = 0;

        servicesCarousel.addEventListener('touchstart', function(e) {
            servicesTouchStartX = e.changedTouches[0].screenX;
        });

        servicesCarousel.addEventListener('touchend', function(e) {
            servicesTouchEndX = e.changedTouches[0].screenX;
            handleServicesSwipe();
        });

        function handleServicesSwipe() {
            const swipeThreshold = 50;
            const diff = servicesTouchStartX - servicesTouchEndX;

            if (Math.abs(diff) > swipeThreshold) {
                if (diff > 0 && servicesCurrentIndex < serviceCarouselItems.length - servicesItemsPerView) {
                    // Swiped left - go next
                    servicesCurrentIndex++;
                    updateServicesCarousel();
                } else if (diff < 0 && servicesCurrentIndex > 0) {
                    // Swiped right - go previous
                    servicesCurrentIndex--;
                    updateServicesCarousel();
                }
            }
        }

        // Auto-play functionality
        let servicesAutoPlayInterval;
        const servicesAutoPlayDelay = 5000; // 5 seconds

        function startServicesAutoPlay() {
            servicesAutoPlayInterval = setInterval(function() {
                if (servicesCurrentIndex < serviceCarouselItems.length - servicesItemsPerView) {
                    servicesCurrentIndex++;
                } else {
                    servicesCurrentIndex = 0; // Loop back to beginning
                }
                updateServicesCarousel();
            }, servicesAutoPlayDelay);
        }

        function stopServicesAutoPlay() {
            clearInterval(servicesAutoPlayInterval);
        }

        // Pause auto-play on hover
        const servicesCarouselContainer = document.querySelector('.services-carousel-container');
        servicesCarouselContainer.addEventListener('mouseenter', stopServicesAutoPlay);
        servicesCarouselContainer.addEventListener('mouseleave', startServicesAutoPlay);

        // Initialize
        calculateServicesItemsPerView();
        updateServicesCarousel();
        startServicesAutoPlay();
    });

    // Files Carousel Functionality
    document.addEventListener('DOMContentLoaded', function() {
        const filesCarousel = document.getElementById('filesCarousel');
        const filesPrevBtn = document.getElementById('filesPrevBtn');
        const filesNextBtn = document.getElementById('filesNextBtn');
        const fileCarouselItems = filesCarousel.querySelectorAll('.file-carousel-item');

        let filesCurrentIndex = 0;

        // Update carousel position
        function updateFilesCarousel() {
            // Calculate position based on 45% width items with gap
            const itemWidth = 47.5; // 45% + half of gap
            const translateX = -filesCurrentIndex * itemWidth + 27.5; // Center the active item
            filesCarousel.style.transform = `translateX(${translateX}%)`;

            // Update active class
            fileCarouselItems.forEach((item, index) => {
                if (index === filesCurrentIndex) {
                    item.classList.add('active');
                } else {
                    item.classList.remove('active');
                }
            });

            // Update button states
            filesPrevBtn.disabled = filesCurrentIndex === 0;
            filesNextBtn.disabled = filesCurrentIndex >= fileCarouselItems.length - 1;
        }

        // Previous button click
        filesPrevBtn.addEventListener('click', function() {
            if (filesCurrentIndex > 0) {
                filesCurrentIndex--;
                updateFilesCarousel();
            }
        });

        // Next button click
        filesNextBtn.addEventListener('click', function() {
            if (filesCurrentIndex < fileCarouselItems.length - 1) {
                filesCurrentIndex++;
                updateFilesCarousel();
            }
        });

        // Touch/Swipe support for mobile
        let filesTouchStartX = 0;
        let filesTouchEndX = 0;

        filesCarousel.addEventListener('touchstart', function(e) {
            filesTouchStartX = e.changedTouches[0].screenX;
        });

        filesCarousel.addEventListener('touchend', function(e) {
            filesTouchEndX = e.changedTouches[0].screenX;
            handleFilesSwipe();
        });

        function handleFilesSwipe() {
            const swipeThreshold = 50;
            const diff = filesTouchStartX - filesTouchEndX;

            if (Math.abs(diff) > swipeThreshold) {
                if (diff > 0 && filesCurrentIndex < fileCarouselItems.length - 1) {
                    // Swiped left - go next
                    filesCurrentIndex++;
                    updateFilesCarousel();
                } else if (diff < 0 && filesCurrentIndex > 0) {
                    // Swiped right - go previous
                    filesCurrentIndex--;
                    updateFilesCarousel();
                }
            }
        }

        // Auto-play functionality
        let filesAutoPlayInterval;
        const filesAutoPlayDelay = 6000; // 6 seconds (slower for files)

        function startFilesAutoPlay() {
            filesAutoPlayInterval = setInterval(function() {
                if (filesCurrentIndex < fileCarouselItems.length - 1) {
                    filesCurrentIndex++;
                } else {
                    filesCurrentIndex = 0; // Loop back to beginning
                }
                updateFilesCarousel();
            }, filesAutoPlayDelay);
        }

        function stopFilesAutoPlay() {
            clearInterval(filesAutoPlayInterval);
        }

        // Pause auto-play on hover
        const filesCarouselContainer = document.querySelector('.files-carousel-container');
        filesCarouselContainer.addEventListener('mouseenter', stopFilesAutoPlay);
        filesCarouselContainer.addEventListener('mouseleave', startFilesAutoPlay);

        // Initialize
        updateFilesCarousel();
        startFilesAutoPlay();
    });
</script>
@endsection
