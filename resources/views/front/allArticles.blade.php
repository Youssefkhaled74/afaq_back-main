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
        height: 140px;
        object-fit: cover;
    }

    /* Vertical Slider for Side Media */
    .side-media-slider-container {
        position: relative;
        height: 510px; /* Exact height for 3 items */
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
        right: 1px;
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

    /* Fix for hidden slides to not take space */
    .side-media-slide[style*="display: none"] {
        display: none !important;
        height: 0 !important;
        margin: 0 !important;
        padding: 0 !important;
        visibility: hidden;
    }

    /* Smooth transitions for filtering */
    .side-media-slide,
    .featured-blog-card {
        transition: opacity 0.3s ease, visibility 0.3s ease;
    }

    /* No content message */
    .no-content-message {
        text-align: center;
        padding: 40px 20px;
        color: #666;
        font-size: 1.1rem;
    }

    /* Active tab styling */
    .blog-tab.active {
        background-color: transparent;
        color: #00BCD4;
        border: none;
        /* border-bottom: 3px solid #00BCD4; */
        font-weight: 600;
    }

    .blog-tab {
        padding: 10px 25px;
        margin: 0 15px;
        border: none;
        border-bottom: 3px solid transparent;
        background: transparent;
        border-radius: 0;
        cursor: pointer;
        transition: all 0.3s ease;
        color: #999;
        font-size: 1.1rem;
        font-weight: 500;
    }

    .blog-tab:hover {
        background-color: transparent;
        color: #666;
    }

    .blog-tab:first-child {
        margin-left: 0;
    }

    /* Blog tabs container */
    .blog-tabs {
        display: flex;
        align-items: center;
        border-bottom: 1px solid #f0f0f0;
        padding-bottom: 0;
        margin-bottom: 40px;
    }
</style>
@endsection

@section('content')

    @php
        // Check the current route name
        $currentRoute = Route::currentRouteName();
        if ($currentRoute == 'all-blog') {
            if (isset($report->blog) && !is_null($report->blog)) {
                $title = 'Blog';
                $category = $report->blog;
            }
        } elseif ($currentRoute == 'all-media-center') {
            if (isset($report->media) && !is_null($report->media)) {
                $title = 'Media Center';
                $category = $report->media;
            }
        } else {
            $title = 'Blog';
            $category = $report->blog ?? $report->media;
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
            @if($category && count($category->sub) > 0)
                <div class="blog-tabs mb-5" data-aos="fade-up">
                    @foreach($category->sub as $sub_category)
                        <button class="blog-tab" data-category="{{ $sub_category->name }}">{{ $sub_category->name }}</button>
                    @endforeach
                </div>
            @endif

            <!-- Media Content -->
            <div class="row g-4 align-items-start">
                <!-- Featured Media -->
                <div class="col-lg-6" data-aos="fade-right">
                    @if($articles && count($articles) > 0)
                        @php
                            $firstArticle = $articles[0];
                        @endphp
                    
                        <div class="featured-blog-card" data-category="{{ $firstArticle->category?->name ?? '----' }}">
                            <div class="position-relative">
                                <a href="{{ route('article', $firstArticle->id) }}" style="text-decoration: none;">
                                    <img src="{{ $firstArticle->img }}" alt="{{ $firstArticle->title ?? 'afaq' }}" class="blog-image">
                                </a>
                                <div class="position-absolute top-0 start-0 p-3">
                                    <span class="badge bg-primary">{{ $firstArticle->category?->name ?? '----' }}</span>
                                </div>
                            </div>
                            <div class="blog-content">
                                <a href="{{ route('article', $firstArticle->id) }}" style="text-decoration: none;">
                                    <h3 class="blog-title">{{ $firstArticle->title }}</h3>
                                </a>
                                <p class="blog-excerpt">{{ $firstArticle->desc }}</p>
                            </div>
                        </div>
                    @endif
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
                        {{-- <div class="vertical-slider-indicators" id="sliderIndicators"></div> --}}

                        <!-- Slider Wrapper -->
                        <div class="side-media-slider-wrapper">
                            <div class="side-media-slider" id="verticalSlider">
                                
                                @if($articles && count($articles) > 0)
                                    @foreach($articles as $index => $article)
                                        <!-- Media 1 -->
                                        @if ($index > 0)
                                            <div class="side-media-slide">
                                                <div class="side-blog-card blog-item" data-category="{{ $article->category?->name ?? '----' }}">
                                                    <div class="row g-3">
                                                        <div class="col-4">
                                                            <a href="{{ route('article', $article->id) }}" style="text-decoration: none;">
                                                                <img src="{{ asset($article->img) }}" alt="{{ $article->title ?? 'afaq' }}" class="img-fluid rounded-3">
                                                            </a>
                                                        </div>
                                                        <div class="col-8">
                                                            <div class="blog-meta">
                                                                <span><i class="far fa-calendar"></i> {{ $article->created_at->format('M j, Y') }}</span>
                                                                <span class="ms-3 badge bg-secondary">{{ $article->category?->name ?? '----' }}</span>
                                                            </div>
                                                            <a href="{{ route('article', $article->id) }}" style="text-decoration: none;">
                                                                <h5 class="blog-title">{{ $article->title ?? '----' }}</h5>
                                                            </a>
                                                            <p class="blog-excerpt">{{ $article->desc ?? '----' }}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pagination -->
            <div class="ltn__pagination-area text-center mt-5">
                {{-- pagination area --}}
                <div class="d-flex justify-content-center mt-2">
                    <div class="d-flex justify-content-center mt-2">
                        <nav aria-label="Page navigation">
                            <ul class="pagination flex-wrap justify-content-center" style="align-items: center;">
                                <!-- Previous Button -->
                                @if (!$articles->onFirstPage())
                                    <li class="page-item mt-1">
                                        <a class="page-link" href="{{ $articles->previousPageUrl() }}"
                                        aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                @endif
                
                                <!-- Pagination Numbers -->
                                @for ($i = 1; $i <= $articles->lastPage(); $i++)
                                    <li class="page-item mt-1 {{ $i == $articles->currentPage() ? 'active' : '' }}">
                                        <a class="page-link" href="{{ $articles->url($i) }}"
                                        @if ($i == $articles->currentPage()) style="font-weight:bold;" @endif>
                                            {{ $i }}
                                        </a>
                                    </li>
                                @endfor
                
                                <!-- Next Button -->
                                @if ($articles->hasMorePages())
                                    <li class="page-item mt-1">
                                        <a class="page-link" href="{{ $articles->nextPageUrl() }}" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                @endif
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

        </div>

        @if(isset($recommended_articles) && count($recommended_articles) > 0)
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

                        @foreach ($recommended_articles as $recommended_article)
                            <!-- Article 1 -->
                            <div class="related-article-slide">
                                <div class="related-article-card" data-aos="fade-up">
                                    <div class="row g-3 align-items-center">
                                        <div class="col-4">
                                            <a href="{{ route('article', $recommended_article->id) }}" style="text-decoration: none;">
                                                <img src="{{ asset($recommended_article->img) }}" alt="{{ $recommended_article->title }}" class="related-article-image">
                                            </a>
                                        </div>
                                        <div class="col-8">
                                            <div class="related-article-content">
                                                <div class="related-article-meta">
                                                    <i class="far fa-calendar"></i> {{ $recommended_article->created_at->format('M j, Y') }}
                                                </div>
                                                <a href="{{ route('article', $recommended_article->id) }}" style="text-decoration: none;">
                                                    <h3 class="related-article-title">{{ $recommended_article->title }}</h3>
                                                </a>
                                                <p class="related-article-excerpt">{{ $recommended_article->desc }}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div>
            </div>
        @endif
    </section>

@endsection
<!-- custom js -->
@section('script')
<script>
    // Global variables for vertical slider
    let verticalSliderInstance = null;
    let currentSet = 0;
    let autoScrollInterval = null;

    // Initialize Vertical Slider - Define it globally
    function initializeVerticalSlider() {
            const verticalSlider = document.getElementById('verticalSlider');
            const upBtn = document.getElementById('verticalUp');
            const downBtn = document.getElementById('verticalDown');
            const indicatorsContainer = document.getElementById('sliderIndicators');

            if (!verticalSlider || !upBtn || !downBtn) return;

            // Get only visible slides
            const slides = verticalSlider.querySelectorAll('.side-media-slide:not([style*="display: none"])');
            const totalSlides = slides.length;
            const slidesVisible = 3;
            const totalSets = Math.ceil(totalSlides / slidesVisible);
            const slideHeight = 165;

            // Reset current position
            currentSet = 0;
            verticalSlider.style.transform = 'translateY(0)';

            // Clear any existing intervals
            if (autoScrollInterval) {
                clearInterval(autoScrollInterval);
                autoScrollInterval = null;
            }

            // Check if we need scrolling
            const controlsContainer = document.querySelector('.vertical-slider-controls');
            if (totalSlides <= slidesVisible) {
                if (controlsContainer) {
                    controlsContainer.style.display = 'none';
                }
                // Remove all event listeners
                upBtn.replaceWith(upBtn.cloneNode(true));
                downBtn.replaceWith(downBtn.cloneNode(true));
                return;
            } else {
                if (controlsContainer) {
                    controlsContainer.style.display = 'flex';
                }
            }

            // Get fresh references to buttons
            const newUpBtn = document.getElementById('verticalUp');
            const newDownBtn = document.getElementById('verticalDown');

            // Create indicators based on sets
            function createIndicators() {
                if (indicatorsContainer) {
                    indicatorsContainer.innerHTML = '';
                    for (let i = 0; i < totalSets; i++) {
                        const indicator = document.createElement('div');
                        indicator.className = 'slider-indicator';
                        if (i === 0) indicator.classList.add('active');
                        indicator.addEventListener('click', () => goToSet(i));
                        indicatorsContainer.appendChild(indicator);
                    }
                }
            }

            // Update slider position to show current set of 3
            function updateSlider() {
                const visibleSlides = verticalSlider.querySelectorAll('.side-media-slide:not([style*="display: none"])');
                const actualTotalSets = Math.ceil(visibleSlides.length / slidesVisible);

                // Adjust currentSet if needed
                if (currentSet >= actualTotalSets) {
                    currentSet = 0;
                }

                const translateY = -currentSet * slidesVisible * slideHeight;
                verticalSlider.style.transform = `translateY(${translateY}px)`;

                // Update button states
                newUpBtn.disabled = currentSet === 0;
                newDownBtn.disabled = currentSet >= actualTotalSets - 1;

                // Update indicators
                if (indicatorsContainer) {
                    const indicators = indicatorsContainer.querySelectorAll('.slider-indicator');
                    indicators.forEach((indicator, index) => {
                        indicator.classList.toggle('active', index === currentSet);
                    });
                }

                // Add visual feedback for disabled state
                newUpBtn.style.opacity = newUpBtn.disabled ? '0.5' : '1';
                newDownBtn.style.opacity = newDownBtn.disabled ? '0.5' : '1';
            }

            // Go to specific set
            function goToSet(index) {
                const visibleSlides = verticalSlider.querySelectorAll('.side-media-slide:not([style*="display: none"])');
                const actualTotalSets = Math.ceil(visibleSlides.length / slidesVisible);
                currentSet = Math.max(0, Math.min(index, actualTotalSets - 1));
                updateSlider();
            }

            // Navigation buttons - move by sets of 3
            newUpBtn.onclick = function() {
                if (currentSet > 0) {
                    currentSet--;
                    updateSlider();
                }
            };

            newDownBtn.onclick = function() {
                const visibleSlides = verticalSlider.querySelectorAll('.side-media-slide:not([style*="display: none"])');
                const actualTotalSets = Math.ceil(visibleSlides.length / slidesVisible);
                if (currentSet < actualTotalSets - 1) {
                    currentSet++;
                    updateSlider();
                }
            };

            // Auto-scroll through sets
            function startAutoScroll() {
                autoScrollInterval = setInterval(() => {
                    const visibleSlides = verticalSlider.querySelectorAll('.side-media-slide:not([style*="display: none"])');
                    const actualTotalSets = Math.ceil(visibleSlides.length / slidesVisible);

                    if (currentSet < actualTotalSets - 1) {
                        currentSet++;
                    } else {
                        currentSet = 0;
                    }
                    updateSlider();
                }, 5000);
            }

            // Pause on hover
            const sliderContainer = document.querySelector('.side-media-slider-container');
            sliderContainer.onmouseenter = () => {
                if (autoScrollInterval) {
                    clearInterval(autoScrollInterval);
                    autoScrollInterval = null;
                }
            };

            sliderContainer.onmouseleave = () => {
                startAutoScroll();
            };

            // Initialize
            createIndicators();
            updateSlider();
            startAutoScroll();
        }

    // Initialize sliders when DOM is ready
    document.addEventListener('DOMContentLoaded', function() {
        // Initial call to set up the vertical slider
        initializeVerticalSlider();

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

    // ========================================
    //  Blog/Media Tab Filtering - Custom for Articles Page
    // ========================================

    document.addEventListener('DOMContentLoaded', function() {
        const blogTabs = document.querySelectorAll('.blog-tab');

        blogTabs.forEach(tab => {
            tab.addEventListener('click', function() {
                // Remove active class from all tabs
                blogTabs.forEach(t => t.classList.remove('active'));
                // Add active to clicked tab
                this.classList.add('active');

                const selectedCategory = this.getAttribute('data-category');

                // Handle featured article
                const featuredCard = document.querySelector('.featured-blog-card');
                if (featuredCard) {
                    const featuredCategory = featuredCard.getAttribute('data-category');
                    if (selectedCategory === 'all' || featuredCategory === selectedCategory) {
                        featuredCard.closest('.col-lg-6').style.display = 'block';
                    } else {
                        featuredCard.closest('.col-lg-6').style.display = 'none';
                    }
                }

                // Handle side media slides
                const slides = document.querySelectorAll('.side-media-slide');
                const sliderWrapper = document.querySelector('.side-media-slider-wrapper');
                let visibleSlides = [];

                slides.forEach(slide => {
                    const blogItem = slide.querySelector('.blog-item');
                    if (blogItem) {
                        const itemCategory = blogItem.getAttribute('data-category');

                        if (selectedCategory === 'all' || itemCategory === selectedCategory) {
                            slide.style.display = 'block';
                            visibleSlides.push(slide);
                        } else {
                            slide.style.display = 'none';
                        }
                    }
                });

                // Show/hide "no content" message
                const existingMessage = document.querySelector('.no-content-message');
                if (existingMessage) {
                    existingMessage.remove();
                }

                if (visibleSlides.length === 0 && sliderWrapper) {
                    const noContentMsg = document.createElement('div');
                    noContentMsg.className = 'no-content-message';
                    noContentMsg.innerHTML = '<i class="fas fa-inbox"></i><br>لا توجد مقالات في هذه الفئة';
                    sliderWrapper.appendChild(noContentMsg);
                }

                // Re-initialize the entire vertical slider
                initializeVerticalSlider();
            });
        });

        // Add "All" tab by default if not exists
        const tabsContainer = document.querySelector('.blog-tabs');
        if (tabsContainer) {
            const allTab = document.createElement('button');
            allTab.className = 'blog-tab active';
            allTab.setAttribute('data-category', 'all');
            allTab.textContent = 'All';
            tabsContainer.insertBefore(allTab, tabsContainer.firstChild);

            // Re-bind click event to new "All" tab
            allTab.addEventListener('click', function() {
                const allTabs = document.querySelectorAll('.blog-tab');
                allTabs.forEach(t => t.classList.remove('active'));
                this.classList.add('active');

                // Show all items
                const featuredCard = document.querySelector('.featured-blog-card');
                if (featuredCard) {
                    featuredCard.closest('.col-lg-6').style.display = 'block';
                }

                const slides = document.querySelectorAll('.side-media-slide');
                slides.forEach(slide => {
                    slide.style.display = 'block';
                });

                // Remove any "no content" message
                const existingMessage = document.querySelector('.no-content-message');
                if (existingMessage) {
                    existingMessage.remove();
                }

                // Re-initialize the entire vertical slider
                initializeVerticalSlider();
            });
        }
    });
</script>
@endsection
