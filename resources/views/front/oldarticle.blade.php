@extends('layouts.front.home')

<!-- title page -->
@section('title')
    <title>AFAQ</title>
@endsection

<!-- custom page -->
@section('css')
    <style>
        /* Hero Section */
        .hero-section {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)),
                        url('https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=1920') center/cover;
            height: 300px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
        }

        .hero-section h1 {
            font-size: 3rem;
            font-weight: 700;
            margin: 0;
            animation: fadeInUp 0.8s ease;
        }

        /* Service Content */
        .service-content {
            background: white;
            padding: 60px 0;
        }

        .service-title {
            color: #2B3E6F;
            font-size: 2.5rem;
            font-weight: 700;
            text-align: center;
            margin-bottom: 30px;
            position: relative;
        }

        .service-description {
            color: #6c757d;
            font-size: 1.05rem;
            line-height: 1.8;
            text-align: center;
            max-width: 900px;
            margin: 0 auto 50px;
        }

        /* Features Section */
        .features-section {
            display: flex;
            align-items: center;
            gap: 60px;
            margin-top: 50px;
        }

        .features-image {
            flex: 0 0 520px;
        }

        .features-image img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .features-content {
            flex: 1;
        }

        .features-content h3 {
            color: #2B3E6F;
            font-size: 1.8rem;
            font-weight: 600;
            margin-bottom: 25px;
        }

        .feature-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 20px;
        }

        .feature-bullet {
            width: 8px;
            height: 8px;
            background: #667eea;
            border-radius: 50%;
            margin-top: 8px;
            margin-right: 15px;
            flex-shrink: 0;
        }

        .feature-text {
            color: #4a5568;
            line-height: 1.7;
            flex: 1;
        }

        /* Service Importance */
        .importance-section {
            background: #f8f9fa;
            padding: 60px 0;
            margin-top: 60px;
        }

        .importance-card {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .importance-card h3 {
            color: #2B3E6F;
            font-size: 1.8rem;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .importance-card p {
            color: #6c757d;
            line-height: 1.8;
            margin-bottom: 0;
        }

        /* What We Offer */
        .offer-section {
            padding: 60px 0;
            background: white;
        }

        .offer-title {
            color: #2B3E6F;
            font-size: 2rem;
            font-weight: 600;
            text-align: center;
            margin-bottom: 40px;
        }

        .offer-list {
            list-style: none;
            padding: 0;
            max-width: 800px;
            margin: 0 auto;
        }

        .offer-item {
            position: relative;
            padding-left: 30px;
            margin-bottom: 20px;
            color: #4a5568;
            line-height: 1.7;
        }

        .offer-item:before {
            content: counter(item);
            counter-increment: item;
            position: absolute;
            left: 0;
            top: 0;
            width: 20px;
            height: 20px;
            background: #667eea;
            color: white;
            border-radius: 50%;
            font-size: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 600;
        }

        .offer-list {
            counter-reset: item;
        }

        /* CTA Button */
        .cta-section {
            text-align: center;
            padding: 40px 0;
            background: white;
        }

        .btn-request {
            background: #2B3E6F;
            color: white;
            padding: 12px 40px;
            border: none;
            border-radius: 5px;
            font-weight: 500;
            font-size: 1rem;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .btn-request:hover {
            background: #1e2d4f;
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(43, 62, 111, 0.3);
            color: white;
        }

        /* Footer */
        .footer {
            background: white;
            padding: 50px 0 20px;
            border-top: 1px solid #e7e7e7;
        }

        .footer h5 {
            color: #2B3E6F;
            font-size: 1.1rem;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }

        .social-links a {
            width: 35px;
            height: 35px;
            background: #2B3E6F;
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
            text-decoration: none;
        }

        .social-links a:hover {
            background: #667eea;
            transform: translateY(-3px);
        }

        .footer-links {
            list-style: none;
            padding: 0;
        }

        .footer-links li {
            margin-bottom: 10px;
        }

        .footer-links a {
            color: #6c757d;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: #667eea;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            margin-top: 30px;
            border-top: 1px solid #e7e7e7;
            color: #6c757d;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero-section h1 {
                font-size: 2rem;
            }

            .features-section {
                flex-direction: column;
            }

            .features-image {
                flex: 1;
                width: 100%;
                max-width: 400px;
            }

            .service-title {
                font-size: 1.8rem;
            }
        }
    </style>
@endsection

@section('content')

    <!-- Service Content -->
    @isset($report['gen_article'])
        
        <!-- Page Header -->
        <section class="page-header" style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('{{ asset('front/assets/images/Rectangle 2751 (1).png') }}') center/cover;">
            <div class="container">
                <h1 class="text-white" data-aos="fade-up">{{ $report['gen_article']->title }}</h1>
            </div>
        </section>
        
        <section class="service-content">
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

                <h2 class="service-title" data-aos="fade-up">{{ $report['gen_article']->title }}</h2>
                <img src="{{ asset('front/assets/images/Vector 9.png') }}" alt="vector" class="img-fluid rounded-4" style="margin-left: 55%; margin-top: -75px;">
                <p class="service-description" data-aos="fade-up" data-aos-delay="100">{{ $report['gen_article']->desc }}</p>

                <!-- Features Section -->
                <div class="features-section" data-aos="fade-up" data-aos-delay="200">
                    <div class="features-image">
                        <img src="{{ is_null($report['gen_article']->img) ? 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=600' : asset($report['gen_article']->img) }}" alt="{{ $report['gen_article']->title }}">
                    </div>
                    @if (!is_null($report['gen_article']->features))
                        <div class="features-content">
                            <h3>Service Features</h3>
                            @foreach (json_decode($report['gen_article']->features) as $feature)
                                <div class="feature-item">
                                    <div class="feature-bullet"></div>
                                    <div class="feature-text">{{ $feature }}</div>
                                </div>
                            @endforeach
                        </div>
                    @endif
                </div>
            </div>
        </section>

        <!-- Service Importance -->
        @if (!is_null($report['gen_article']->importance))
            <section class="importance-section">
                <div class="container">
                    <div class="importance-card" data-aos="fade-up">
                        <h3>Service Importance</h3>
                        <p>{{$report['gen_article']->importance}}</p>
                    </div>
                </div>
            </section>
        @endif

        <!-- What We Offer -->
        @if (!is_null($report['gen_article']->what_we_offer))
            <section class="offer-section">
                <div class="container">
                    <h3 class="offer-title" data-aos="fade-up">What We Offer:</h3>
                    <ol class="offer-list">
                        @foreach (json_decode($report['gen_article']->what_we_offer) as $offer)
                            <li class="offer-item" data-aos="fade-up" data-aos-delay="100">{{$offer}}</li>
                        @endforeach
                    </ol>
                </div>
            </section>
        @endif

        <!-- CTA Section -->
        <section class="cta-section">
            <a href="contact.html" class="btn-request" data-aos="fade-up">Add Request</a>
        </section>
    @endisset

@endsection
<!-- custom js -->
@section('script')
<script>
</script>
@endsection
