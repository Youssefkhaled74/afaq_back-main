@extends('layouts.front.home')

<!-- title page -->
@section('title')
    <title>AFAQ</title>
@endsection

<!-- custom page -->
@section('css')
    <style>
        .custom-container {
            max-width: 1531px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Helvetica Neue', Arial, sans-serif;
            background: #f8f9fa;
            color: #333;
            line-height: 1.6;
        }

        /* Container */
        .main-container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
        }

        /* Two Column Layout */
        .content-grid {
            display: grid;
            grid-template-columns: 1fr 380px;
            gap: 30px;
            align-items: start;
        }

        /* Breadcrumb Navigation */
        .breadcrumb {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 25px;
            font-size: 14px;
            color: #666;
            margin-top: 22px;
        }

        .breadcrumb a {
            color: #0052cc;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .breadcrumb a:hover {
            color: #004099;
        }

        .breadcrumb-separator {
            color: #999;
        }

        /* Article Meta */
        .article-meta-info {
            display: flex;
            align-items: center;
            gap: 20px;
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 1px solid #f0f0f0;
            font-size: 14px;
            color: #666;
        }

        .article-meta-item {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .article-meta-item i {
            color: #0052cc;
            font-size: 16px;
        }

        /* Left Column - Article with Image */
        .article-section {
            animation: fadeInLeft 0.8s ease;
        }

        /* Main Image */
        .article-image {
            width: 100%;
            height: 400px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 30px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            animation: slideDown 0.6s ease;
        }

        .article-header {
            margin-bottom: 30px;
        }

        .article-title {
            font-size: 36px;
            font-weight: 800;
            color: #1a1a1a;
            margin-bottom: 25px;
            line-height: 1.3;
            animation: fadeIn 0.8s ease 0.2s both;
        }

        /* Social Media Links */
        .social-share {
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 25px 0;
            padding: 20px 0;
            border-top: 1px solid #e9ecef;
            border-bottom: 1px solid #e9ecef;
            animation: fadeIn 0.8s ease 0.4s both;
        }

        .social-share-label {
            font-size: 14px;
            font-weight: 600;
            color: #2c3e50;
            margin-right: 10px;
        }

        .social-link {
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: #f5f5f5;
            color: #666;
            text-decoration: none;
            transition: all 0.3s ease;
            font-size: 18px;
        }

        .social-link:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .social-link.facebook {
            background: #1877f2;
            color: white;
        }

        .social-link.facebook:hover {
            background: #1564d0;
        }

        .social-link.twitter {
            background: #1da1f2;
            color: white;
        }

        .social-link.twitter:hover {
            background: #1a8cd8;
        }

        .social-link.linkedin {
            background: #0077b5;
            color: white;
        }

        .social-link.linkedin:hover {
            background: #006399;
        }

        .social-link.whatsapp {
            background: #25d366;
            color: white;
        }

        .social-link.whatsapp:hover {
            background: #20c05c;
        }

        .social-link.telegram {
            background: #0088cc;
            color: white;
        }

        .social-link.telegram:hover {
            background: #0077b3;
        }

        .social-link.email {
            background: #ea4335;
            color: white;
        }

        .social-link.email:hover {
            background: #d33b2c;
        }

        .article-content {
            color: #4a4a4a;
            font-size: 16px;
            line-height: 1.9;
            margin-bottom: 30px;
            animation: fadeIn 0.8s ease 0.3s both;
        }

        .article-content p {
            margin-bottom: 20px;
            text-align: justify;
        }

        /* Section Divider */
        .section-divider {
            width: 100px;
            height: 3px;
            background: linear-gradient(90deg, #0052cc, #667eea);
            margin: 35px 0;
            border-radius: 2px;
            animation: slideInLeft 0.6s ease 0.4s both;
        }

        /* Marketing CTA Section */
        .marketing-cta-section {
            background: linear-gradient(135deg, #0052cc 0%, #004099 100%);
            border-radius: 12px;
            padding: 0;
            margin: 50px 0;
            display: flex;
            align-items: stretch;
            gap: 0;
            position: relative;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 82, 204, 0.2);
            animation: fadeInUp 0.8s ease 0.5s both;
        }

        /* .marketing-cta-section::before { */
        .marketing-cta-content::after {
            content: '';
            position: absolute;
            top: -10%;
            left: 55%;
            width: 140px;
            height: 120%;
            background: white;
            transform: skewX(-15deg);
            z-index: 1;
        }

        .marketing-cta-content {
            flex: 1;
            z-index: 2;
            padding: 50px 40px;
            animation: slideInLeft 0.8s ease 0.6s both;
            background: #1F3057;
            color: white;
        }

        .marketing-cta-title {
            font-size: 28px;
            font-weight: 700;
            color: white;
            margin-bottom: 15px;
            line-height: 1.3;
        }

        .marketing-cta-subtitle {
            font-size: 15px;
            color: rgba(255, 255, 255, 0.9);
            line-height: 1.6;
            margin-bottom: 25px;
            max-width: 450px;
        }

        .marketing-cta-button {
            display: inline-block;
            padding: 12px 35px;
            background: #008DA3;
            color: white;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 600;
            font-size: 15px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .marketing-cta-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
            background: #f8f9fa;
        }

        .marketing-cta-image {
            flex-shrink: 0;
            z-index: 2;
            background: white;
            padding: 40px 70px 0px 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            animation: slideInRight 0.8s ease 0.7s both;
        }

        .marketing-cta-image img {
            width: 280px;
            height: auto;
            border-radius: 8px;
            /* box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2); */
        }

        /* Right Column - How it Works */
        .sidebar {
            margin-top: 65px;
            position: sticky;
            top: 20px;
            animation: fadeInRight 0.8s ease 0.2s both;
        }

        .how-it-works {
            background: white;
            padding: 20px 20px 15px 20px;
            border-radius: 12px;
            box-shadow: 0 2px 15px rgba(0,0,0,0.08);
            margin-bottom: 30px;
            animation: slideInRight 0.6s ease 0.3s both;
        }

        .section-title {
            font-size: 22px;
            font-weight: 700;
            color: #1a1a1a;
            margin-bottom: 30px;
            position: relative;
            padding-bottom: 15px;
            border-bottom: 2px solid #f0f0f0;
        }

        /* Rating Section */
        .rating-section {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 2px 15px rgba(0,0,0,0.08);
            margin-bottom: 30px;
            animation: slideInRight 0.6s ease 0.4s both;
        }

        .rating-title {
            font-size: 18px;
            font-weight: 600;
            color: #1a1a1a;
            margin-bottom: 20px;
        }

        .rating-stars {
            display: flex;
            gap: 8px;
            justify-content: center;
            margin-bottom: 15px;
        }

        .star {
            font-size: 32px;
            color: #e0e0e0;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .star:hover,
        .star.active {
            color: #ffc107;
            transform: scale(1.1);
        }

        /* Related Articles */
        .related-articles {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 2px 15px rgba(0,0,0,0.08);
            animation: slideInRight 0.6s ease 0.5s both;
        }

        .related-article {
            display: flex;
            gap: 15px;
            margin-bottom: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid #f0f0f0;
        }

        .related-article:last-child {
            margin-bottom: 0;
            padding-bottom: 0;
            border-bottom: none;
        }

        .related-article-image {
            width: 80px;
            height: 60px;
            object-fit: cover;
            border-radius: 6px;
            flex-shrink: 0;
        }

        .related-article-content {
            flex: 1;
        }

        .related-article-title {
            font-size: 14px;
            font-weight: 600;
            color: #1a1a1a;
            margin-bottom: 5px;
            line-height: 1.4;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .related-article-meta {
            font-size: 12px;
            color: #999;
        }

        .work-steps {
            counter-reset: step-counter;
        }

        .work-step {
            margin-bottom: 30px;
            position: relative;
            display: flex;
            flex-direction: row-reverse;
            gap: 15px;
            align-items: flex-start;
            animation: slideInRight 0.5s ease calc(0.4s + var(--delay)) both;
        }

        .work-step:last-child {
            margin-bottom: 0;
        }

        /* .work-step::before {
            counter-increment: step-counter;
            content: counter(step-counter, decimal-leading-zero);
            position: absolute;
            left: 0;
            top: 0;
            font-weight: 700;
            color: #667eea;
            font-size: 18px;
            line-height: 1.4;
        } */

        .step-image {
            width: 120px;
            height: 90px;
            object-fit: cover;
            border-radius: 6px;
            flex-shrink: 0;
            transition: transform 0.3s ease;
        }

        .step-image:hover {
            transform: scale(1.02);
        }

        .step-content {
            flex: 1;
        }

        .step-title {
            font-size: 15px;
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 8px;
            line-height: 1.3;
        }

        .step-description {
            font-size: 13px;
            color: #666;
            line-height: 1.6;
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
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

        @keyframes fadeInLeft {
            from {
                opacity: 0;
                transform: translateX(-30px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes fadeInRight {
            from {
                opacity: 0;
                transform: translateX(30px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes slideDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideInLeft {
            from {
                width: 0;
            }
            to {
                width: 80px;
            }
        }

        @keyframes slideInRight {
            from {
                opacity: 0;
                transform: translateX(20px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        /* Author Section Styles */
        .author-section {
            background: white;
            border-radius: 12px;
            padding: 30px;
            margin-top: 50px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
            border: 1px solid #e9ecef;
            animation: fadeInUp 0.8s ease 0.6s both;
        }

        .author-header {
            display: flex;
            gap: 20px;
            margin-bottom: 25px;
        }

        .author-avatar {
            flex-shrink: 0;
        }

        .author-avatar img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
        }

        .author-info {
            flex: 1;
        }

        .author-name {
            font-size: 20px;
            font-weight: 700;
            color: #2c3e50;
            margin-bottom: 10px;
            text-decoration: underline;
            text-decoration-color: #667eea;
            text-underline-offset: 5px;
        }

        .author-bio {
            font-size: 14px;
            color: #666;
            line-height: 1.6;
        }

        .author-social {
            display: flex;
            gap: 10px;
            padding-top: 20px;
            border-top: 1px solid #e9ecef;
        }

        .author-social-link {
            width: 36px;
            height: 36px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 6px;
            background: #f5f5f5;
            color: #666;
            text-decoration: none;
            transition: all 0.3s ease;
            font-size: 14px;
        }

        .author-social-link:hover {
            transform: translateY(-2px);
            box-shadow: 0 3px 8px rgba(0,0,0,0.1);
        }

        .author-social-link.linkedin {
            background: #0077b5;
            color: white;
        }

        .author-social-link.twitter {
            background: #000;
            color: white;
        }

        .author-social-link.whatsapp {
            background: #25d366;
            color: white;
        }

        .author-social-link.facebook {
            background: #1877f2;
            color: white;
        }

        .author-social-link.email {
            background: #ea4335;
            color: white;
        }

        .author-social-link.print {
            background: #6c757d;
            color: white;
        }

        /* Comments Section Styles */
        .comments-section {
            background: white;
            border-radius: 12px;
            padding: 30px;
            margin-top: 30px;
            margin-bottom: 50px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
            border: 1px solid #e9ecef;
            animation: fadeInUp 0.8s ease 0.7s both;
        }

        .comments-title {
            font-size: 24px;
            font-weight: 700;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        /* Comment Form */
        .comment-form {
            margin-bottom: 35px;
            padding-bottom: 35px;
            border-bottom: 1px solid #e9ecef;
        }

        .comment-input {
            width: 100%;
            padding: 15px;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            resize: vertical;
            font-size: 14px;
            font-family: inherit;
            line-height: 1.6;
            transition: all 0.3s ease;
        }

        .comment-input:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        .comment-form-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 15px;
        }

        .attach-button {
            width: 40px;
            height: 40px;
            border: none;
            background: #f5f5f5;
            color: #666;
            border-radius: 50%;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .attach-button:hover {
            background: #e9ecef;
            transform: rotate(45deg);
        }

        .publish-button {
            padding: 10px 30px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: 600;
            font-size: 14px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .publish-button:hover {
            background: #5a67d8;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(102, 126, 234, 0.3);
        }

        /* Comments List */
        .comments-list {
            display: flex;
            flex-direction: column;
            gap: 25px;
        }

        .comment {
            padding: 20px;
            background: #fafafa;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .comment:hover {
            background: #f5f5f5;
        }

        .comment-header {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 15px;
        }

        .comment-avatar {
            flex-shrink: 0;
        }

        .comment-avatar img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
        }

        .comment-meta {
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 3px;
        }

        .comment-author {
            font-weight: 600;
            color: #2c3e50;
            font-size: 14px;
        }

        .comment-time {
            font-size: 12px;
            color: #999;
        }

        .comment-menu {
            width: 32px;
            height: 32px;
            border: none;
            background: transparent;
            color: #999;
            border-radius: 50%;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .comment-menu:hover {
            background: #e9ecef;
            color: #666;
        }

        .comment-content {
            padding-left: 52px;
        }

        .comment-content p {
            font-size: 14px;
            color: #555;
            line-height: 1.6;
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .col-8, .col-4 {
                width: 100%;
                flex: 0 0 100%;
                max-width: 100%;
            }

            .sidebar {
                position: relative;
                top: 0;
                margin-top: 30px;
            }

            .how-it-works {
                max-width: 100%;
                margin: 0 auto;
            }

            .work-step {
                flex-direction: row;
                gap: 15px;
            }

            .author-header {
                flex-direction: column;
                text-align: center;
                align-items: center;
            }

            .author-info {
                text-align: center;
            }

            .author-social {
                justify-content: center;
                flex-wrap: wrap;
            }
        }

        @media (max-width: 768px) {
            .custom-container {
                padding: 0 15px;
            }

            .article-title {
                font-size: 24px;
            }

            .article-image {
                height: 250px;
            }

            .how-it-works {
                padding: 20px 15px;
            }

            .work-step {
                flex-direction: column;
                gap: 10px;
            }

            .step-image {
                width: 100%;
                height: 150px;
            }

            .step-content {
                width: 100%;
            }

            /* Marketing CTA - Keep same layout as desktop */
            .marketing-cta-section {
                margin: 30px 0;
                flex-direction: row;
            }

            .marketing-cta-content {
                padding: 25px 20px;
                flex: 1;
            }

            .marketing-cta-content::after {
                content: '';
                position: absolute;
                top: -10%;
                left: auto;
                right: 120px;
                width: 80px;
                height: 120%;
                background: white;
                transform: skewX(-15deg);
                z-index: 1;
            }

            .marketing-cta-title {
                font-size: 18px;
            }

            .marketing-cta-subtitle {
                font-size: 12px;
                margin-bottom: 15px;
            }

            .marketing-cta-button {
                padding: 8px 20px;
                font-size: 13px;
            }

            .marketing-cta-image {
                padding: 15px 20px 0 15px;
                min-width: 140px;
            }

            .marketing-cta-image img {
                width: 120px;
                max-width: 120px;
            }

            .author-section,
            .comments-section {
                padding: 20px;
            }

            .comment-content {
                padding-left: 0;
                margin-top: 10px;
            }

            .social-share {
                flex-wrap: wrap;
                justify-content: center;
            }
        }

        @media (max-width: 576px) {
            .article-title {
                font-size: 20px;
            }

            .article-content {
                font-size: 14px;
            }

            .article-image {
                height: 200px;
            }

            .step-image {
                height: 120px;
            }

            .section-title {
                font-size: 18px;
            }

            /* Marketing CTA - Keep same layout as desktop */
            .marketing-cta-section {
                margin: 20px 0;
                flex-direction: row;
            }

            .marketing-cta-content {
                padding: 15px 12px;
            }

            .marketing-cta-content::after {
                content: '';
                position: absolute;
                top: -10%;
                left: auto;
                right: 85px;
                width: 60px;
                height: 120%;
                background: white;
                transform: skewX(-15deg);
                z-index: 1;
            }

            .marketing-cta-title {
                font-size: 14px;
                margin-bottom: 8px;
            }

            .marketing-cta-subtitle {
                font-size: 10px;
                margin-bottom: 12px;
                line-height: 1.4;
            }

            .marketing-cta-button {
                padding: 6px 15px;
                font-size: 11px;
            }

            .marketing-cta-image {
                padding: 10px 15px 0 10px;
                min-width: 100px;
            }

            .marketing-cta-image img {
                width: 90px;
                max-width: 90px;
            }

            .author-avatar img {
                width: 60px;
                height: 60px;
            }

            .author-name {
                font-size: 18px;
            }

            .author-bio {
                font-size: 13px;
            }

            .comments-title {
                font-size: 20px;
            }

            .comment-input {
                font-size: 13px;
            }

            .publish-button {
                padding: 8px 20px;
                font-size: 13px;
            }

            .comment {
                padding: 15px;
            }

            .breadcrumb {
                font-size: 12px;
                flex-wrap: wrap;
            }

            .comment-header {
                flex-wrap: wrap;
            }

            .comment-meta {
                flex: 1;
            }

            .comment-author {
                font-size: 13px;
            }

            .comment-time {
                font-size: 11px;
            }
        }
    </style>
@endsection

@section('content')


    @isset($report->gen_article)
        
        @php
            $gen_article = $report->gen_article;   
        @endphp

        <!-- Page Header -->
        <section class="page-header" style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('{{ asset('front/assets/images/Rectangle 2751 (1).png') }}') center/cover; padding: 339px 0 100px">
            <div class="container custom-container">
                <h1 class="text-white" data-aos="fade-up">{{ $gen_article->category?->name ?? '' }}</h1>
            </div>
        </section>
        <div class="container custom-container">
            <div class="row">
                
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
                <div class="col-8">
                    <div class="article-section">
                        <nav class="breadcrumb">
                            <a href="#">Home</a>
                            <span class="breadcrumb-separator">›</span>
                            <a href="#">Articles</a>
                            <span class="breadcrumb-separator">›</span>
                            <span>{{ $gen_article->title }}</span>
                        </nav>
                        <img src="{{ asset($gen_article->img) }}" alt="Team collaboration" class="article-image">
                        <div class="article-header">
                            <h1 class="article-title">{{ $gen_article->title }}</h1>
                            <div class="social-share">
                                <span class="social-share-label"></span>
                                @if ($gen_article->facebook)
                                    <a href="{{ $gen_article->facebook }}" target="_blank" class="social-link facebook" title="Share on Facebook">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                @endif
                                @if ($gen_article->x_url)
                                    <a href="{{ $gen_article->x_url }}" target="_blank" class="social-link twitter" title="Share on Twitter">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                @endif
                                @if ($gen_article->linkedin)
                                    <a href="{{ $gen_article->linkedin }}" target="_blank" class="social-link linkedin" title="Share on LinkedIn">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                @endif
                                @if ($gen_article->whatsapp)
                                    <a href="{{ $gen_article->whatsapp }}" target="_blank" class="social-link whatsapp" title="Share on WhatsApp">
                                        <i class="fab fa-whatsapp"></i>
                                    </a>
                                @endif
                                @if ($gen_article->email)
                                    <a href="{{ $gen_article->email }}" target="_blank" class="social-link telegram" title="Share on Telegram">
                                        <i class="fab fa-telegram-plane"></i>
                                    </a>
                                @endif
                                @if ($gen_article->article_file)
                                    {{-- <a href="mailto:?subject=Design Process for Beginners&body=Check out this article: #" class="social-link email" title="Share via Email">
                                        <i class="fas fa-envelope"></i>
                                    </a> --}}
                                @endif
                            </div>
                            <div class="article-content">
                                <p>{!! $gen_article->desc !!}</p>
                            </div>
                            <div class="section-divider"></div>
                        </div>
                        <div class="marketing-cta-section">
                            <div class="marketing-cta-content">
                                <h2 class="marketing-cta-title">Deceptive Marketing: How to Protect Yourself?</h2>
                                <p class="marketing-cta-subtitle">Learn essential strategies and best practices to safeguard your marketing efforts and avoid deceptive tactics in today's digital landscape.</p>
                                <a href="#" class="marketing-cta-button">Download Now</a>
                            </div>
                            <div class="marketing-cta-image">
                                <img src="{{ asset('front/assets/images/Frame 1000005818.png') }}" alt="Marketing Protection Illustration">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <aside class="sidebar">
                        <div class="how-it-works">
                            {{-- <h2 class="section-title">How does it work?</h2> --}}

                            @if ($report->gen_article->category?->siblings)
                                <div class="work-steps">
                                    @foreach ($report->gen_article->category->siblings as $sibling)
                                        @if ($sibling->articles)
                                            @foreach ($sibling?->articles as $article)
                                                <div class="work-step" style="--delay: 0s;">
                                                    <div class="step-content">
                                                        <h3 class="step-title">{{ $article->title }}</h3>
                                                        <p class="step-description">{{ Str::limit(strip_tags($article->desc), 150) }}</p>
                                                    </div>
                                                    <img src="{{ asset($article->img) }}" alt="{{ $article->title }}" class="step-image">
                                                </div>
                                            @endforeach
                                        @endif
                                    @endforeach
                                </div>
                            @endif
                        </div>

                    </aside>
                </div>
            </div>

            @if ($report->gen_article->writer)
                @php 
                    $writer = $report->gen_article->writer;
                @endphp
                <div class="author-section">
                    <div class="author-header">
                        <div class="author-avatar">
                            <img src="{{ asset($writer->img) }}" alt="{{ $writer->name }}">
                        </div>
                        <div class="author-info">
                            <h3 class="author-name">{{ $writer->name }}</h3>
                            <p class="author-bio">{{ $writer->info }}</p>
                        </div>
                    </div>
                    <div class="author-social">
                        @if ($writer->facebook)
                            <a href="{{ $writer->facebook }}" target="_blank" class="social-link facebook" title="Share on Facebook">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        @endif
                        @if ($writer->x_url)
                            <a href="{{ $writer->x_url }}" target="_blank" class="social-link twitter" title="Share on Twitter">
                                <i class="fab fa-twitter"></i>
                            </a>
                        @endif
                        @if ($writer->linkedin)
                            <a href="{{ $writer->linkedin }}" target="_blank" class="social-link linkedin" title="Share on LinkedIn">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        @endif
                        @if ($writer->whatsapp)
                            <a href="{{ $writer->whatsapp }}" target="_blank" class="social-link whatsapp" title="Share on WhatsApp">
                                <i class="fab fa-whatsapp"></i>
                            </a>
                        @endif
                        @if ($writer->email)
                            <a href="{{ $writer->email }}" target="_blank" class="social-link telegram" title="Share on Telegram">
                                <i class="fab fa-telegram-plane"></i>
                            </a>
                        @endif
                        {{-- <a href="#" class="author-social-link print" title="Print">
                            <i class="fas fa-print"></i>
                        </a> --}}
                    </div>
                </div>
            @endif

            <div class="comments-section">
                <h2 class="comments-title">Comments</h2>

                <!-- Comment Form -->
                <div class="comment-form">
                    
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
                    <form action="{{ route('comment', $gen_article?->id) }}" method="POST">
                        @csrf
                        <textarea class="comment-input" placeholder="Type your comment here" rows="4" name="comment"></textarea>
                        <div class="comment-form-actions">
                            {{-- <button class="attach-button" title="Attach file">
                                <i class="fas fa-paperclip"></i>
                            </button> --}}
                            <button type="submit" class="publish-button">Publish</button>
                        </div>
                    </form>
                </div>

                <!-- Comments List -->
                <div class="comments-list">
                    @if ($gen_article?->comments)
                        @foreach ($gen_article?->comments as $comment)
                            <!-- Comment 1 -->
                            <div class="comment">
                                <div class="comment-header">
                                    <div class="comment-avatar">
                                        <img src="{{ asset($comment->user?->img ?? 'https://ui-avatars.com/api/?name=John+Seleke&background=764ba2&color=fff&size=40') }}" alt="John Seleke">
                                    </div>
                                    <div class="comment-meta">
                                        <span class="comment-author">{{ $comment->user?->name }}</span>
                                        <span class="comment-time">added a comment {{ $comment->created_at?->diffForHumans() }}</span>
                                    </div>
                                    <button class="comment-menu">
                                        <i class="fas fa-ellipsis-h"></i>
                                    </button>
                                </div>
                                <div class="comment-content">
                                    <p>{{ $comment->comment }}</p>
                                </div>
                            </div>
                        @endforeach
                    @endif

                </div>
            </div>
        </div>
    @endisset

@endsection

<!-- custom js -->
@section('script')
    <script>
        // Intersection Observer for scroll animations
        document.addEventListener('DOMContentLoaded', function() {
            // Update social media links with current URL
            const currentURL = window.location.href;
            const pageTitle = document.querySelector('.article-title').textContent;

            // Update Facebook link
            const facebookLink = document.querySelector('.social-link.facebook');
            if (facebookLink) {
                facebookLink.href = `https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(currentURL)}`;
            }

            // Update Twitter link
            const twitterLink = document.querySelector('.social-link.twitter');
            if (twitterLink) {
                twitterLink.href = `https://twitter.com/intent/tweet?url=${encodeURIComponent(currentURL)}&text=${encodeURIComponent(pageTitle)}`;
            }

            // Update LinkedIn link
            const linkedinLink = document.querySelector('.social-link.linkedin');
            if (linkedinLink) {
                linkedinLink.href = `https://www.linkedin.com/sharing/share-offsite/?url=${encodeURIComponent(currentURL)}`;
            }

            // Update WhatsApp link
            const whatsappLink = document.querySelector('.social-link.whatsapp');
            if (whatsappLink) {
                whatsappLink.href = `https://wa.me/?text=${encodeURIComponent(`Check out this article: ${pageTitle} ${currentURL}`)}`;
            }

            // Update Telegram link
            const telegramLink = document.querySelector('.social-link.telegram');
            if (telegramLink) {
                telegramLink.href = `https://t.me/share/url?url=${encodeURIComponent(currentURL)}&text=${encodeURIComponent(pageTitle)}`;
            }

            // Update Email link
            const emailLink = document.querySelector('.social-link.email');
            if (emailLink) {
                emailLink.href = `mailto:?subject=${encodeURIComponent(pageTitle)}&body=${encodeURIComponent(`Check out this article: ${currentURL}`)}`;
            }

            // Add copy link functionality
            document.querySelectorAll('.social-link').forEach(link => {
                link.addEventListener('click', function(e) {
                    // Add animation effect
                    this.style.transform = 'scale(0.95)';
                    setTimeout(() => {
                        this.style.transform = '';
                    }, 200);
                });
            });
            const observerOptions = {
                root: null,
                rootMargin: '0px',
                threshold: 0.1
            };

            const observer = new IntersectionObserver(function(entries) {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.style.opacity = '1';
                        entry.target.style.transform = 'translateY(0) translateX(0)';
                        observer.unobserve(entry.target);
                    }
                });
            }, observerOptions);

            // Observe animated elements
            const animatedElements = document.querySelectorAll('.work-step, .article-content p');
            animatedElements.forEach(el => {
                el.style.opacity = '0';
                el.style.transform = 'translateY(20px)';
                el.style.transition = 'all 0.6s ease';
                observer.observe(el);
            });

            // Parallax effect for main image
            const mainImage = document.querySelector('.article-image');
            // window.addEventListener('scroll', () => {
            //     const scrolled = window.pageYOffset;
            //     const parallax = scrolled * 0.3;
            //     if (mainImage) {
            //         mainImage.style.transform = `translateY(${parallax}px)`;
            //     }
            // });

            // Hover effect for step images
            const stepImages = document.querySelectorAll('.step-image');
            stepImages.forEach(img => {
                img.addEventListener('mouseenter', function() {
                    this.style.boxShadow = '0 6px 12px rgba(0,0,0,0.15)';
                });
                img.addEventListener('mouseleave', function() {
                    this.style.boxShadow = '';
                });
            });

            // Comment Form Functionality
            const commentInput = document.querySelector('.comment-input');
            const publishButton = document.querySelector('.publish-button');
            const commentsList = document.querySelector('.comments-list');
            const attachButton = document.querySelector('.attach-button');

            // Publish Comment - validation only, let form submit normally
            if (publishButton) {
                publishButton.addEventListener('click', function(e) {
                    const commentText = commentInput.value.trim();

                    if (!commentText) {
                        // Prevent form submission if empty
                        e.preventDefault();
                        // Show error if empty
                        commentInput.style.borderColor = '#f56565';
                        commentInput.placeholder = 'Please type your comment first...';

                        setTimeout(() => {
                            commentInput.style.borderColor = '';
                            commentInput.placeholder = 'Type your comment here';
                        }, 2000);
                    }
                });
            }

            // Attach button functionality
            if (attachButton) {
                attachButton.addEventListener('click', function() {
                    const input = document.createElement('input');
                    input.type = 'file';
                    input.accept = 'image/*,.pdf,.doc,.docx';
                    input.onchange = function(e) {
                        const file = e.target.files[0];
                        if (file) {
                            // Show attached file indicator
                            attachButton.style.background = '#48bb78';
                            attachButton.style.color = 'white';
                            attachButton.title = `Attached: ${file.name}`;

                            // Add file name to comment input as reference
                            commentInput.value += `\n[Attached: ${file.name}]`;
                        }
                    };
                    input.click();
                });
            }

            // Comment menu functionality
            document.addEventListener('click', function(e) {
                if (e.target.closest('.comment-menu')) {
                    const menu = e.target.closest('.comment-menu');
                    const comment = menu.closest('.comment');

                    // Create dropdown menu
                    const existingMenu = document.querySelector('.dropdown-menu');
                    if (existingMenu) {
                        existingMenu.remove();
                    }

                    const dropdownMenu = document.createElement('div');
                    dropdownMenu.className = 'dropdown-menu';
                    dropdownMenu.style.cssText = `
                        position: absolute;
                        top: ${menu.getBoundingClientRect().bottom + 5}px;
                        right: ${window.innerWidth - menu.getBoundingClientRect().right}px;
                        background: white;
                        border: 1px solid #e9ecef;
                        border-radius: 6px;
                        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
                        padding: 8px 0;
                        min-width: 120px;
                        z-index: 1000;
                    `;

                    dropdownMenu.innerHTML = `
                        <button style="display: block; width: 100%; text-align: left; padding: 8px 16px; border: none; background: none; cursor: pointer; font-size: 14px; color: #333; hover: background: #f5f5f5;">
                            <i class="fas fa-edit" style="margin-right: 8px; color: #667eea;"></i> Edit
                        </button>
                        <button style="display: block; width: 100%; text-align: left; padding: 8px 16px; border: none; background: none; cursor: pointer; font-size: 14px; color: #333;">
                            <i class="fas fa-trash" style="margin-right: 8px; color: #e53e3e;"></i> Delete
                        </button>
                        <button style="display: block; width: 100%; text-align: left; padding: 8px 16px; border: none; background: none; cursor: pointer; font-size: 14px; color: #333;">
                            <i class="fas fa-flag" style="margin-right: 8px; color: #f6ad55;"></i> Report
                        </button>
                    `;

                    document.body.appendChild(dropdownMenu);

                    // Add hover effects
                    dropdownMenu.querySelectorAll('button').forEach(btn => {
                        btn.onmouseover = () => btn.style.background = '#f5f5f5';
                        btn.onmouseout = () => btn.style.background = 'none';

                        btn.onclick = function() {
                            const action = this.textContent.trim();

                            if (action === 'Delete') {
                                comment.style.animation = 'fadeOut 0.3s ease';
                                setTimeout(() => comment.remove(), 300);
                            } else if (action === 'Edit') {
                                // Edit functionality
                                const content = comment.querySelector('.comment-content p');
                                const originalText = content.textContent;
                                content.contentEditable = true;
                                content.focus();
                                content.style.background = '#fff';
                                content.style.padding = '10px';
                                content.style.borderRadius = '4px';
                                content.style.border = '1px solid #667eea';

                                content.onblur = function() {
                                    content.contentEditable = false;
                                    content.style.background = '';
                                    content.style.padding = '';
                                    content.style.border = '';
                                };
                            }

                            dropdownMenu.remove();
                        };
                    });

                    // Close dropdown when clicking outside
                    setTimeout(() => {
                        document.addEventListener('click', function closeDropdown(e) {
                            if (!dropdownMenu.contains(e.target)) {
                                dropdownMenu.remove();
                                document.removeEventListener('click', closeDropdown);
                            }
                        });
                    }, 10);
                }
            });

            // Add keyframe for fadeOut animation
            if (!document.querySelector('#comment-animations')) {
                const style = document.createElement('style');
                style.id = 'comment-animations';
                style.textContent = `
                    @keyframes fadeOut {
                        from { opacity: 1; transform: translateX(0); }
                        to { opacity: 0; transform: translateX(-20px); }
                    }
                `;
                document.head.appendChild(style);
            }

            // Rating functionality
            const stars = document.querySelectorAll('.star');
            let currentRating = 0;

            stars.forEach(star => {
                star.addEventListener('click', function() {
                    const rating = parseInt(this.getAttribute('data-rating'));
                    currentRating = rating;
                    updateStars(rating);

                    // Show feedback
                    const ratingSection = this.closest('.rating-section');
                    const existingFeedback = ratingSection.querySelector('.rating-feedback');
                    if (existingFeedback) {
                        existingFeedback.remove();
                    }

                    const feedback = document.createElement('p');
                    feedback.className = 'rating-feedback';
                    feedback.style.cssText = `
                        text-align: center;
                        color: #48bb78;
                        font-size: 14px;
                        margin-top: 10px;
                        animation: fadeIn 0.3s ease;
                    `;
                    feedback.textContent = `Thank you! You rated this article ${rating} star${rating > 1 ? 's' : ''}.`;
                    ratingSection.appendChild(feedback);
                });

                star.addEventListener('mouseenter', function() {
                    const rating = parseInt(this.getAttribute('data-rating'));
                    updateStars(rating);
                });
            });

            const ratingSection = document.querySelector('.rating-section');
            if (ratingSection) {
                ratingSection.addEventListener('mouseleave', function() {
                    updateStars(currentRating);
                });
            }

            function updateStars(rating) {
                stars.forEach((star, index) => {
                    if (index < rating) {
                        star.classList.add('active');
                    } else {
                        star.classList.remove('active');
                    }
                });
            }

            // Related articles hover effect
            const relatedArticles = document.querySelectorAll('.related-article');
            relatedArticles.forEach(article => {
                article.style.cursor = 'pointer';
                article.style.transition = 'all 0.3s ease';

                article.addEventListener('mouseenter', function() {
                    this.style.transform = 'translateX(5px)';
                    this.style.boxShadow = '0 2px 8px rgba(0,0,0,0.1)';
                });

                article.addEventListener('mouseleave', function() {
                    this.style.transform = 'translateX(0)';
                    this.style.boxShadow = 'none';
                });

                article.addEventListener('click', function() {
                    // Navigate to article (placeholder)
                    console.log('Navigate to related article');
                });
            });
        });
    </script>
@endsection
