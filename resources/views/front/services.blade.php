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
    .service-detail-title {
        padding: 0px 10px;
        text-align: center;
    }
</style>
@endsection

@section('content')

    
    <!-- Page Header -->
    <section class="page-header" style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('{{ asset('front/assets/images/Rectangle 2751 (1).png') }}') center/cover; padding: 339px 0 100px">
        <div class="container">
            <h1 class="text-white" data-aos="fade-up">Services</h1>
        </div>
    </section>

    
    <!-- Services Section -->
    @isset($report['services'])
        <section class="services-section py-5">
            <div class="container">
                
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

                <div class="text-center mb-5" data-aos="fade-up">
                    <h2 class="section-title">Our Services</h2>
                    <p class="section-subtitle">Onlearing is one powerful online software suite that combines all the tools<br>needed to run a successful school or office.</p>
                </div>

                <div class="row g-4">
                    
                    @foreach($report['services'] as $service)
                        <!-- Service 1 -->
                        <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
                            <div class="service-detail-card h-100">
                                <div class="service-icon mb-3">
                                    <img src="{{ asset($service->icon) }}" alt="{{ $service->title }}" class="img-fluid rounded-4">
                                </div>
                                <h4 class="service-detail-title">{{ $service->title }}</h4>
                                <p class="service-detail-description">{{ $service->desc }}</p>
                                <a href="{{ route('service', $service->id) }}" class="btn-more">more</a>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </section>
    @endisset

@endsection
<!-- custom js -->
@section('script')
<script>
</script>
@endsection
