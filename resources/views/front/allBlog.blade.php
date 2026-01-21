@extends('layouts.front.home')

<!-- title page -->
@section('title')
    <title>AFAQ</title>
@endsection

<!-- custom page -->
@section('css')
<style>
    /* Ensure proper ordering and spacing */
    .pagination {
        margin-bottom: 2rem;
    }

    /* Featured Article Card - First Large Article */
    .featured-blog-card {
        background: white;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        height: auto !important; /* Don't force equal height */
    }

    .featured-blog-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 30px rgba(0,0,0,0.15);
    }

    .featured-blog-card .blog-image {
        width: 100%;
        height: 350px;
        object-fit: cover;
    }

    .featured-blog-card .blog-content {
        padding: 25px;
    }

    .featured-blog-card .blog-title {
        font-size: 1.5rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 15px;
    }

    .featured-blog-card .blog-excerpt {
        font-size: 1rem;
        color: #666;
        line-height: 1.6;
    }

    /* Side Article Cards - Smaller Articles */
    .side-blog-card {
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 3px 10px rgba(0,0,0,0.08);
        transition: all 0.3s ease;
        margin-bottom: 20px;
        height: auto !important; /* Don't force equal height */
    }

    .side-blog-card .img-fluid {
        width: 100%;
        height: 170px;
        object-fit: cover;
    }

    .side-blog-card:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 20px rgba(0,0,0,0.12);
    }

    .side-blog-card .blog-meta {
        font-size: 0.85rem;
        color: #888;
        margin-bottom: 8px;
    }

    .side-blog-card .blog-title {
        font-size: 1rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 10px;
        line-height: 1.3;
    }

    .side-blog-card .blog-excerpt {
        font-size: 0.9rem;
        color: #666;
        line-height: 1.5;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    /* Fix image heights in side blog cards */
    .side-blog-card .img-fluid {
        width: 100%;
        height: 120px;
        object-fit: cover;
    }

    /* Vertical Slider for Side Media */
    .side-media-slider-container {
        position: relative;
        height: 480px; /* Exact height for 3 items */
        overflow: hidden;
    }

    .side-media-slider-wrapper {
        height: 100%;
        overflow: hidden;
        position: relative;
    }

    .side-media-slider {
        transition: transform 0.5s ease-in-out;
        position: absolute;
        top: 0;
        width: 100%;
    }

    .side-media-slide {
        width: 100%;
        height: 150px; /* Fixed height for each slide */
        margin-bottom: 15px;
    }

    .side-media-slide .side-blog-card {
        height: 100%;
        margin-bottom: 0;
        display: flex;
        align-items: center;
    }

    .side-media-slide .row {
        height: 100%;
    }

    /* Vertical Slider Controls */
    .vertical-slider-controls {
        position: absolute;
        right: -30px;
        top: 50%;
        transform: translateY(-50%);
        display: flex;
        flex-direction: column;
        gap: 10px;
        z-index: 10;
    }

    .vertical-slider-btn {
        background: white;
        border: 1px solid #e0e0e0;
        border-radius: 50%;
        width: 35px;
        height: 35px;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: all 0.3s ease;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }

    .vertical-slider-btn:hover {
        background: #f8f9fa;
        box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    }

    .vertical-slider-btn:disabled {
        opacity: 0.5;
        cursor: not-allowed;
    }

    .vertical-slider-btn i {
        font-size: 14px;
        color: #333;
    }

    /* Slider Indicators */
    .vertical-slider-indicators {
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
        display: flex;
        flex-direction: column;
        gap: 8px;
        z-index: 5;
    }

    .slider-indicator {
        width: 8px;
        height: 8px;
        border-radius: 50%;
        background: #ddd;
        transition: all 0.3s ease;
        cursor: pointer;
    }

    .slider-indicator.active {
        background: #333;
        transform: scale(1.2);
    }

    /* General Blog Styles */
    .blog-meta {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .blog-meta i {
        color: #888;
    }

    /* Related Articles Section with Slider */
    .related-articles-section {
        margin-top: 4rem;
        padding-top: 3rem;
        border-top: 2px solid #f0f0f0;
        position: relative;
        padding-left: 60px;
        padding-right: 60px;
    }

    .related-articles-title {
        font-size: 1.8rem;
        font-weight: 600;
        color: #333;
        margin-bottom: 2rem;
        text-align: center;
    }

    /* Slider Container */
    .related-articles-slider-wrapper {
        overflow: hidden;
        margin: 0 -10px;
        width: 100%;
    }

    .related-articles-slider {
        display: flex;
        transition: transform 0.5s ease-in-out;
        gap: 20px;
        padding: 0;
    }

    .related-article-slide {
        min-width: calc(33.333% - 14px);
        flex: 0 0 calc(33.333% - 14px);
        padding: 0;
    }

    .related-article-card {
        background: white;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0,0.08);
        transition: all 0.3s ease;
        cursor: pointer;
        height: 100%;
        padding: 15px;
    }

    .related-article-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 25px rgba(0,0,0,0.12);
    }

    .related-article-image {
        width: 100%;
        height: 100px;
        object-fit: cover;
        border-radius: 10px;
    }

    .related-article-content {
        padding: 0;
    }

    .related-article-meta {
        font-size: 0.85rem;
        color: #6c757d;
        margin-bottom: 10px;
    }

    .related-article-meta i {
        margin-right: 5px;
    }

    .related-article-title {
        font-size: 1rem;
        font-weight: 600;
        color: #2c3e50;
        margin-bottom: 8px;
        line-height: 1.3;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    .related-article-excerpt {
        font-size: 0.85rem;
        color: #6c757d;
        line-height: 1.5;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }

    /* Slider Controls */
    .related-slider-control {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        background: white;
        border: 1px solid #e0e0e0;
        border-radius: 50%;
        width: 40px;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: all 0.3s ease;
        z-index: 10;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }

    .related-slider-control:hover {
        background: #f8f9fa;
        box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    }

    .related-slider-control.prev {
        left: 10px;
    }

    .related-slider-control.next {
        right: 10px;
    }

    .related-slider-control i {
        font-size: 16px;
        color: #333;
    }

    /* Responsive adjustments */
    @media (max-width: 1199px) {
        .related-article-slide {
            min-width: calc(50% - 10px);
            flex: 0 0 calc(50% - 10px);
        }
    }

    @media (max-width: 767px) {
        .related-article-slide {
            min-width: calc(100% - 10px);
            flex: 0 0 calc(100% - 10px);
        }

        .related-articles-section {
            padding-left: 50px;
            padding-right: 50px;
        }
    }

    @media (max-width: 576px) {
        .related-articles-section {
            padding-left: 40px;
            padding-right: 40px;
        }

        .related-slider-control {
            width: 35px;
            height: 35px;
        }

        .related-slider-control.prev {
            left: 5px;
        }

        .related-slider-control.next {
            right: 5px;
        }
    }
</style>
@endsection

@section('content')

    @php
        if (isset($report->blog) && !is_null($report->blog)) {
            $title = 'Blog';
            $parent = $report->blog;   
        }elseif (isset($report->media) && !is_null($report->media)) {
            $title = 'Media Center';
            $parent = $report->media;
        }
    @endphp

    <!-- Page Header -->
    <section class="page-header" style="background: url('{{ asset('front/assets/images/Rectangle 2751 (1).png') }}') center/cover; padding: 339px 0 100px">
        <div class="container custom-container" style="max-width: 1472px !important;">
            <h1 class="text-white" data-aos="fade-up">{{ $title }}</h1>
        </div>
    </section>

    <!-- Media Section -->
    <section class="py-5">
        <div class="container">
            <!-- Media Title -->
            <div class="text-center mb-5" data-aos="fade-up">
                <h2 class="section-title">{{ $title }}</h2>
            </div>

            <!-- Media Tabs -->
            <div class="blog-tabs mb-5" data-aos="fade-up">
                <button class="blog-tab active" data-category="videos">Videos</button>
                <button class="blog-tab" data-category="powerpoint">Power point</button>
                <button class="blog-tab" data-category="files">Files & Form</button>
                <button class="blog-tab" data-category="general">General Files</button>
                <button class="blog-tab" data-category="ebook">E-book</button>
                <button class="blog-tab" data-category="audio">Audio</button>
            </div>

            <!-- Media Content -->
            <div class="row g-4 align-items-start">
                <!-- Featured Media -->
                <div class="col-lg-6" data-aos="fade-right">
                    <div class="featured-blog-card blog-item" data-category="powerpoint">
                        <div class="position-relative">
                            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=600" alt="Report Engineering" class="blog-image">
                            <div class="position-absolute top-0 start-0 p-3">
                                <span class="badge bg-primary">Power point</span>
                            </div>
                        </div>
                        <div class="blog-content">
                            <h3 class="blog-title">Report Engineering</h3>
                            <p class="blog-excerpt">Reports are the lifeblood through which you ensure continued support for your ideas and their adoption by senior management. God willing.</p>
                        </div>
                    </div>
                </div>

                <!-- Side Media with Vertical Slider -->
                <div class="col-lg-6">
                    <div class="side-media-slider-container position-relative">
                        <!-- Vertical Slider Controls -->
                        <div class="vertical-slider-controls">
                            <button class="vertical-slider-btn" id="verticalUp">
                                <i class="fas fa-chevron-up"></i>
                            </button>
                            <button class="vertical-slider-btn" id="verticalDown">
                                <i class="fas fa-chevron-down"></i>
                            </button>
                        </div>

                        <!-- Slider Indicators -->
                        <div class="vertical-slider-indicators" id="sliderIndicators"></div>

                        <!-- Slider Wrapper -->
                        <div class="side-media-slider-wrapper">
                            <div class="side-media-slider" id="verticalSlider">
                                <!-- Media 1 -->
                                <div class="side-media-slide">
                                    <div class="side-blog-card blog-item" data-category="powerpoint">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=200" alt="Pink stairs" class="img-fluid rounded-3">
                                            </div>
                                            <div class="col-8">
                                                <div class="blog-meta">
                                                    <span><i class="far fa-calendar"></i> Apr 9, 2023</span>
                                                    <span class="ms-3 badge bg-secondary">Power point</span>
                                                </div>
                                                <h5 class="blog-title">Pink stairs leading to the sky</h5>
                                                <p class="blog-excerpt">In my opinion, the foundation of a product, its face and soul. You can create an infinitely high-quality heart, and organize the simulation of breathing, but we won't fall in love with a product just because its heart beats [...]</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Media 2 -->
                                <div class="side-media-slide">
                                    <div class="side-blog-card blog-item" data-category="audio">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img src="https://images.unsplash.com/photo-1551434678-e076c223a692?w=200" alt="Building" class="img-fluid rounded-3">
                                            </div>
                                            <div class="col-8">
                                                <div class="blog-meta">
                                                    <span><i class="far fa-calendar"></i> Apr 9, 2023</span>
                                                    <span class="ms-3 badge bg-secondary">Audio</span>
                                                </div>
                                                <h5 class="blog-title">Building on the corner of the sea</h5>
                                                <p class="blog-excerpt">Cognitive bias (also known as "cognitive illusion" or "cognitive distortion") refers to errors in thinking that can lead to incorrect perception and decision-making. They are an inherent part of our psychology and can</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Media 3 -->
                                <div class="side-media-slide">
                                    <div class="side-blog-card blog-item" data-category="powerpoint">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img src="https://images.unsplash.com/photo-1600880292203-757bb62b4baf?w=200" alt="Breakfast" class="img-fluid rounded-3">
                                            </div>
                                            <div class="col-8">
                                                <div class="blog-meta">
                                                    <span><i class="far fa-calendar"></i> Apr 9, 2023</span>
                                                    <span class="ms-3 badge bg-secondary">Power point</span>
                                                </div>
                                                <h5 class="blog-title">The color of the sun for breakfast</h5>
                                                <p class="blog-excerpt">As is commonly believed, this methodology places the user at the center of the world and focuses on their views and habits. In fact, the product's actual growth revolves around the persona for which the system is</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Media 4 -->
                                <div class="side-media-slide">
                                    <div class="side-blog-card blog-item" data-category="ebook">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img src="https://images.unsplash.com/photo-1497215728101-856f4ea42174?w=200" alt="Office" class="img-fluid rounded-3">
                                            </div>
                                            <div class="col-8">
                                                <div class="blog-meta">
                                                    <span><i class="far fa-calendar"></i> Apr 8, 2023</span>
                                                    <span class="ms-3 badge bg-secondary">E-book</span>
                                                </div>
                                                <h5 class="blog-title">Modern office productivity</h5>
                                                <p class="blog-excerpt">Explore the latest trends in office design and productivity enhancement techniques that are revolutionizing the modern workplace environment</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Media 5 -->
                                <div class="side-media-slide">
                                    <div class="side-blog-card blog-item" data-category="videos">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?w=200" alt="Technology" class="img-fluid rounded-3">
                                            </div>
                                            <div class="col-8">
                                                <div class="blog-meta">
                                                    <span><i class="far fa-calendar"></i> Apr 7, 2023</span>
                                                    <span class="ms-3 badge bg-secondary">Videos</span>
                                                </div>
                                                <h5 class="blog-title">Technology in education</h5>
                                                <p class="blog-excerpt">How digital transformation is reshaping the educational landscape and creating new opportunities for learners worldwide</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Media 6 -->
                                <div class="side-media-slide">
                                    <div class="side-blog-card blog-item" data-category="files">
                                        <div class="row g-3">
                                            <div class="col-4">
                                                <img src="https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?w=200" alt="Business" class="img-fluid rounded-3">
                                            </div>
                                            <div class="col-8">
                                                <div class="blog-meta">
                                                    <span><i class="far fa-calendar"></i> Apr 6, 2023</span>
                                                    <span class="ms-3 badge bg-secondary">Files & Form</span>
                                                </div>
                                                <h5 class="blog-title">Business strategy essentials</h5>
                                                <p class="blog-excerpt">Key components of successful business strategies that drive growth and innovation in competitive markets</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pagination -->
            <nav aria-label="Media pagination" class="mt-5">
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item"><a class="page-link" href="#">...</a></li>
                    <li class="page-item"><a class="page-link" href="#">10</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>

        </div>
        <!-- Related Articles Section with Slider -->
        <div class="related-articles-section">
            <h2 class="related-articles-title"></h2>

            <!-- Slider Controls -->
            <button class="related-slider-control prev" id="relatedPrev">
                <i class="fas fa-chevron-left"></i>
            </button>
            <button class="related-slider-control next" id="relatedNext">
                <i class="fas fa-chevron-right"></i>
            </button>

            <!-- Slider Content -->
            <div class="related-articles-slider-wrapper">
                <div class="related-articles-slider" id="relatedSlider">
                    <!-- Article 1 -->
                    <div class="related-article-slide">
                        <div class="related-article-card" data-aos="fade-up">
                            <div class="row g-3 align-items-center">
                                <div class="col-4">
                                    <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=200" alt="Pink stairs" class="related-article-image">
                                </div>
                                <div class="col-8">
                                    <div class="related-article-content">
                                        <div class="related-article-meta">
                                            <i class="far fa-calendar"></i> Apr 8, 2023
                                        </div>
                                        <h3 class="related-article-title">Pink stairs leading to the sky</h3>
                                        <p class="related-article-excerpt">In my opinion, the foundation of a product, its face and soul. You can create an infinitely high-quality heart...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Article 2 -->
                    <div class="related-article-slide">
                        <div class="related-article-card" data-aos="fade-up" data-aos-delay="50">
                            <div class="row g-3 align-items-center">
                                <div class="col-4">
                                    <img src="https://images.unsplash.com/photo-1551434678-e076c223a692?w=200" alt="Building" class="related-article-image">
                                </div>
                                <div class="col-8">
                                    <div class="related-article-content">
                                        <div class="related-article-meta">
                                            <i class="far fa-calendar"></i> Apr 8, 2023
                                        </div>
                                        <h3 class="related-article-title">Building on the corner of the sea</h3>
                                        <p class="related-article-excerpt">Cognitive bias (also known as "cognitive illusion" or "cognitive distortion") refers to errors in thinking...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Article 3 -->
                    <div class="related-article-slide">
                        <div class="related-article-card" data-aos="fade-up" data-aos-delay="100">
                            <div class="row g-3 align-items-center">
                                <div class="col-4">
                                    <img src="https://images.unsplash.com/photo-1600880292203-757bb62b4baf?w=200" alt="Workspace" class="related-article-image">
                                </div>
                                <div class="col-8">
                                    <div class="related-article-content">
                                        <div class="related-article-meta">
                                            <i class="far fa-calendar"></i> Apr 7, 2023
                                        </div>
                                        <h3 class="related-article-title">Modern workspace design</h3>
                                        <p class="related-article-excerpt">Creating an environment that fosters creativity and productivity is essential for modern businesses...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Article 4 -->
                    <div class="related-article-slide">
                        <div class="related-article-card" data-aos="fade-up">
                            <div class="row g-3 align-items-center">
                                <div class="col-4">
                                    <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=200" alt="Pink stairs" class="related-article-image">
                                </div>
                                <div class="col-8">
                                    <div class="related-article-content">
                                        <div class="related-article-meta">
                                            <i class="far fa-calendar"></i> Apr 8, 2023
                                        </div>
                                        <h3 class="related-article-title">Pink stairs leading to the sky</h3>
                                        <p class="related-article-excerpt">In my opinion, the foundation of a product, its face and soul. You can create an infinitely high-quality heart...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Article 5 -->
                    <div class="related-article-slide">
                        <div class="related-article-card" data-aos="fade-up" data-aos-delay="50">
                            <div class="row g-3 align-items-center">
                                <div class="col-4">
                                    <img src="https://images.unsplash.com/photo-1551434678-e076c223a692?w=200" alt="Building" class="related-article-image">
                                </div>
                                <div class="col-8">
                                    <div class="related-article-content">
                                        <div class="related-article-meta">
                                            <i class="far fa-calendar"></i> Apr 8, 2023
                                        </div>
                                        <h3 class="related-article-title">Building on the corner of the sea</h3>
                                        <p class="related-article-excerpt">Cognitive bias (also known as "cognitive illusion" or "cognitive distortion") refers to errors in thinking...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Article 6 -->
                    <div class="related-article-slide">
                        <div class="related-article-card" data-aos="fade-up" data-aos-delay="100">
                            <div class="row g-3 align-items-center">
                                <div class="col-4">
                                    <img src="https://images.unsplash.com/photo-1600880292203-757bb62b4baf?w=200" alt="Workspace" class="related-article-image">
                                </div>
                                <div class="col-8">
                                    <div class="related-article-content">
                                        <div class="related-article-meta">
                                            <i class="far fa-calendar"></i> Apr 7, 2023
                                        </div>
                                        <h3 class="related-article-title">Modern workspace design</h3>
                                        <p class="related-article-excerpt">Creating an environment that fosters creativity and productivity is essential for modern businesses...</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
<!-- custom js -->
@section('script')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Vertical Slider for Side Media
        const verticalSlider = document.getElementById('verticalSlider');
        const upBtn = document.getElementById('verticalUp');
        const downBtn = document.getElementById('verticalDown');
        const indicatorsContainer = document.getElementById('sliderIndicators');

        if (verticalSlider && upBtn && downBtn) {
            const slides = verticalSlider.querySelectorAll('.side-media-slide');
            const totalSlides = slides.length;
            const slidesVisible = 3; // Number of slides visible at once
            let currentSet = 0; // Current set of 3 slides
            const totalSets = Math.ceil(totalSlides / slidesVisible); // Total number of sets

            // Fixed height for consistent sliding
            const slideHeight = 165; // 150px height + 15px margin

            // Create indicators based on sets
            function createIndicators() {
                indicatorsContainer.innerHTML = '';
                for (let i = 0; i < totalSets; i++) {
                    const indicator = document.createElement('div');
                    indicator.className = 'slider-indicator';
                    if (i === 0) indicator.classList.add('active');
                    indicator.addEventListener('click', () => goToSet(i));
                    indicatorsContainer.appendChild(indicator);
                }
            }

            // Update slider position to show current set of 3
            function updateSlider() {
                const translateY = -currentSet * slidesVisible * slideHeight;
                verticalSlider.style.transform = `translateY(${translateY}px)`;

                // Update button states
                upBtn.disabled = currentSet === 0;
                downBtn.disabled = currentSet >= totalSets - 1;

                // Update indicators
                const indicators = indicatorsContainer.querySelectorAll('.slider-indicator');
                indicators.forEach((indicator, index) => {
                    indicator.classList.toggle('active', index === currentSet);
                });

                // Add visual feedback for disabled state
                upBtn.style.opacity = upBtn.disabled ? '0.5' : '1';
                downBtn.style.opacity = downBtn.disabled ? '0.5' : '1';
            }

            // Go to specific set
            function goToSet(index) {
                currentSet = Math.max(0, Math.min(index, totalSets - 1));
                updateSlider();
            }

            // Navigation buttons - move by sets of 3
            upBtn.addEventListener('click', function() {
                if (currentSet > 0) {
                    currentSet--;
                    updateSlider();
                }
            });

            downBtn.addEventListener('click', function() {
                if (currentSet < totalSets - 1) {
                    currentSet++;
                    updateSlider();
                }
            });

            // Auto-scroll through sets
            let autoScrollInterval;
            function startAutoScroll() {
                autoScrollInterval = setInterval(() => {
                    if (currentSet < totalSets - 1) {
                        currentSet++;
                    } else {
                        currentSet = 0;
                    }
                    updateSlider();
                }, 5000); // Change every 5 seconds
            }

            // Pause on hover
            const sliderContainer = document.querySelector('.side-media-slider-container');
            sliderContainer.addEventListener('mouseenter', () => {
                if (autoScrollInterval) {
                    clearInterval(autoScrollInterval);
                }
            });

            sliderContainer.addEventListener('mouseleave', () => {
                startAutoScroll();
            });

            // Initialize
            createIndicators();
            updateSlider();
            startAutoScroll();
        }

        // Related Articles Slider
        const relatedSlider = document.getElementById('relatedSlider');
        const relatedPrevBtn = document.getElementById('relatedPrev');
        const relatedNextBtn = document.getElementById('relatedNext');

        if (relatedSlider && relatedPrevBtn && relatedNextBtn) {
            const slides = relatedSlider.querySelectorAll('.related-article-slide');
            const totalSlides = slides.length;
            let currentIndex = 0;
            let slidesToShow = 3; // Show 3 slides by default

            // Adjust slides to show based on screen size
            function updateSlidesToShow() {
                if (window.innerWidth <= 767) {
                    slidesToShow = 1;
                } else if (window.innerWidth <= 1199) {
                    slidesToShow = 2;
                } else {
                    slidesToShow = 3;
                }
                updateSlider();
            }

            // Update slider position
            function updateSlider() {
                // Simple calculation for sliding one at a time
                const slidePercentage = 33.333; // Each slide is 33.333% wide
                const translateX = -currentIndex * slidePercentage;
                relatedSlider.style.transform = `translateX(${translateX}%)`;

                // Update button states
                relatedPrevBtn.disabled = currentIndex === 0;
                relatedNextBtn.disabled = currentIndex >= totalSlides - slidesToShow;

                // Add visual feedback for disabled state
                relatedPrevBtn.style.opacity = relatedPrevBtn.disabled ? '0.5' : '1';
                relatedNextBtn.style.opacity = relatedNextBtn.disabled ? '0.5' : '1';
                relatedPrevBtn.style.cursor = relatedPrevBtn.disabled ? 'not-allowed' : 'pointer';
                relatedNextBtn.style.cursor = relatedNextBtn.disabled ? 'not-allowed' : 'pointer';
            }

            // Navigate to previous slide (move one slide at a time)
            relatedPrevBtn.addEventListener('click', function() {
                if (currentIndex > 0) {
                    currentIndex--;
                    updateSlider();
                }
            });

            // Navigate to next slide (move one slide at a time)
            relatedNextBtn.addEventListener('click', function() {
                if (currentIndex < totalSlides - slidesToShow) {
                    currentIndex++;
                    updateSlider();
                }
            });

            // Handle window resize
            window.addEventListener('resize', updateSlidesToShow);

            // Initialize
            updateSlidesToShow();

            // Optional: Auto-play functionality
            // Uncomment the following code if you want auto-play
            /*
            setInterval(function() {
                if (currentIndex < totalSlides - slidesToShow) {
                    currentIndex++;
                } else {
                    currentIndex = 0;
                }
                updateSlider();
            }, 5000); // Change slide every 5 seconds
            */
        }

        // Click handler for related articles
        const relatedCards = document.querySelectorAll('.related-article-card');
        relatedCards.forEach(card => {
            card.addEventListener('click', function() {
                // Add navigation logic here when connected to backend
                console.log('Related article clicked');
            });
        });
    });
</script>
@endsection
