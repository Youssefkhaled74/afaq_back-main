@extends('layouts.admin.home')

<!-- title page -->
@section('title')
    <title>Select Article Category</title>
@endsection

<!-- custom css -->
@section('css')
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .category-selection-container {
        min-height: 100vh;
        padding: 80px 20px 60px 20px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
        position: relative;
        overflow: hidden;
    }

    .category-selection-container::before {
        content: '';
        position: absolute;
        top: -50%;
        right: -10%;
        width: 500px;
        height: 500px;
        background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
        border-radius: 50%;
        animation: float 6s ease-in-out infinite;
    }

    .category-selection-container::after {
        content: '';
        position: absolute;
        bottom: -20%;
        left: -5%;
        width: 400px;
        height: 400px;
        background: radial-gradient(circle, rgba(255,255,255,0.08) 0%, transparent 70%);
        border-radius: 50%;
        animation: float 8s ease-in-out infinite reverse;
    }

    @keyframes float {
        0%, 100% { transform: translateY(0px); }
        50% { transform: translateY(30px); }
    }

    .category-content {
        max-width: 1600px;
        margin: 0 auto;
        position: relative;
        z-index: 2;
    }

    .category-header {
        text-align: center;
        margin-bottom: 70px;
        color: white;
        animation: slideDown 0.6s ease-out;
    }

    @keyframes slideDown {
        from {
            opacity: 0;
            transform: translateY(-30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .category-header h1 {
        font-size: 3.5rem;
        font-weight: 800;
        margin-bottom: 20px;
        text-shadow: 2px 4px 8px rgba(0, 0, 0, 0.2);
        letter-spacing: -1px;
    }

    .category-header p {
        font-size: 1.25rem;
        opacity: 0.95;
        font-weight: 300;
        letter-spacing: 0.5px;
    }

    .breadcrumb-info {
        display: flex;
        justify-content: center;
        gap: 15px;
        margin-bottom: 50px;
        flex-wrap: wrap;
    }

    .breadcrumb-item {
        background: rgba(255, 255, 255, 0.15);
        padding: 8px 16px;
        border-radius: 20px;
        color: white;
        font-size: 0.9rem;
        backdrop-filter: blur(10px);
        border: 1px solid rgba(255, 255, 255, 0.2);
    }

    .breadcrumb-item i {
        margin-right: 5px;
    }

    .categories-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
        gap: 35px;
        margin-bottom: 60px;
        animation: gridFadeIn 0.6s ease-out;
    }

    @keyframes gridFadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    /* Responsive grid for many categories */
    @media (min-width: 1600px) {
        .categories-grid {
            grid-template-columns: repeat(auto-fit, minmax(340px, 1fr));
        }
    }

    @media (max-width: 1200px) {
        .categories-grid {
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }
    }

    @media (max-width: 900px) {
        .categories-grid {
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }
    }

    .category-card {
        background: white;
        border-radius: 20px;
        padding: 40px 30px;
        cursor: pointer;
        transition: all 0.4s cubic-bezier(0.23, 1, 0.320, 1);
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.15);
        text-decoration: none;
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
        position: relative;
        overflow: hidden;
        border: 2px solid transparent;
    }

    .category-card::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.4), transparent);
        transition: left 0.5s ease;
    }

    .category-card:hover::before {
        left: 100%;
    }

    .category-card::after {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: linear-gradient(135deg, rgba(102, 126, 234, 0.1) 0%, rgba(118, 75, 162, 0.1) 100%);
        opacity: 0;
        transition: opacity 0.4s ease;
        z-index: -1;
    }

    .category-card:hover::after {
        opacity: 1;
    }

    .category-card:hover {
        transform: translateY(-15px) scale(1.03);
        box-shadow: 0 25px 60px rgba(102, 126, 234, 0.35);
        border-color: rgba(102, 126, 234, 0.3);
    }

    .category-icon {
        width: 100px;
        height: 100px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-bottom: 25px;
        font-size: 3rem;
        color: white;
        transition: all 0.4s cubic-bezier(0.23, 1, 0.320, 1);
        box-shadow: 0 10px 30px rgba(102, 126, 234, 0.3);
        position: relative;
        z-index: 1;
    }

    .category-card:hover .category-icon {
        transform: scale(1.15) rotate(15deg);
        box-shadow: 0 15px 40px rgba(102, 126, 234, 0.5);
    }

    .category-name {
        font-size: 1.8rem;
        font-weight: 700;
        color: #333;
        margin-bottom: 15px;
        transition: color 0.3s ease;
    }

    .category-card:hover .category-name {
        color: #667eea;
    }

    .category-description {
        font-size: 1rem;
        color: #666;
        margin-bottom: 20px;
        line-height: 1.6;
        font-weight: 400;
    }

    .category-stats {
        display: flex;
        gap: 20px;
        margin: 20px 0;
        width: 100%;
        justify-content: center;
        flex-wrap: wrap;
    }

    .stat-item {
        display: flex;
        align-items: center;
        gap: 8px;
        font-size: 0.9rem;
        color: #999;
    }

    .stat-item i {
        color: #667eea;
        font-size: 1.1rem;
    }

    .category-badge {
        display: inline-block;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 6px 14px;
        border-radius: 20px;
        font-size: 0.85rem;
        font-weight: 600;
        margin-top: 15px;
    }

    .category-arrow {
        margin-top: 20px;
        display: inline-block;
        transition: all 0.3s ease;
        color: #667eea;
        font-size: 1.8rem;
        opacity: 0.7;
    }

    .category-card:hover .category-arrow {
        transform: translateX(8px) translateY(-3px);
        opacity: 1;
    }

    .back-button {
        display: none;
    }

    .no-categories {
        text-align: center;
        color: white;
        padding: 80px 20px;
    }

    .no-categories h2 {
        font-size: 2rem;
        margin-bottom: 15px;
        font-weight: 700;
    }

    .no-categories p {
        font-size: 1.1rem;
        opacity: 0.9;
    }

    .no-categories-icon {
        font-size: 4rem;
        margin-bottom: 20px;
        opacity: 0.8;
    }

    /* Responsive */
    @media (max-width: 1024px) {
        .category-selection-container {
            padding: 60px 20px 50px 20px;
        }

        .category-header h1 {
            font-size: 2.8rem;
        }

        .categories-grid {
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 28px;
        }
    }

    @media (max-width: 768px) {
        .category-selection-container {
            padding: 50px 15px 40px 15px;
        }

        .category-header h1 {
            font-size: 2.2rem;
            margin-bottom: 15px;
        }

        .category-header p {
            font-size: 1rem;
        }

        .categories-grid {
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        .category-card {
            padding: 30px 20px;
        }

        .category-icon {
            width: 80px;
            height: 80px;
            font-size: 2.2rem;
            margin-bottom: 18px;
        }

        .category-name {
            font-size: 1.4rem;
        }

        .category-description {
            font-size: 0.95rem;
        }

        .category-card:hover {
            transform: translateY(-10px) scale(1.02);
        }

        .category-card:hover .category-icon {
            transform: scale(1.1) rotate(10deg);
        }

        .breadcrumb-info {
            flex-direction: column;
            align-items: center;
            margin-bottom: 30px;
        }

        .breadcrumb-item {
            font-size: 0.85rem;
            padding: 7px 14px;
        }
    }

    @media (max-width: 480px) {
        .category-selection-container {
            padding: 40px 12px 30px 12px;
        }

        .category-header h1 {
            font-size: 1.8rem;
            margin-bottom: 12px;
        }

        .category-header p {
            font-size: 0.95rem;
        }

        .categories-grid {
            grid-template-columns: 1fr;
            gap: 18px;
            margin-bottom: 20px;
        }

        .category-card {
            padding: 25px 15px;
        }

        .category-icon {
            width: 70px;
            height: 70px;
            font-size: 2rem;
            margin-bottom: 15px;
        }

        .category-name {
            font-size: 1.3rem;
        }

        .category-description {
            font-size: 0.9rem;
        }

        .breadcrumb-item {
            font-size: 0.8rem;
            padding: 6px 12px;
        }

        .category-badge {
            font-size: 0.8rem;
            padding: 5px 12px;
            margin-top: 12px;
        }
    }

    /* Loading Animation */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .category-card {
        animation: fadeInUp 0.6s ease-out forwards;
    }

    .category-card:nth-child(1) { animation-delay: 0.1s; }
    .category-card:nth-child(2) { animation-delay: 0.2s; }
    .category-card:nth-child(3) { animation-delay: 0.3s; }
    .category-card:nth-child(4) { animation-delay: 0.4s; }
    .category-card:nth-child(5) { animation-delay: 0.5s; }
    .category-card:nth-child(6) { animation-delay: 0.6s; }
</style>
@endsection

@section('content')

<div class="category-selection-container">
    <div class="category-content">
        <div class="category-header">
            <h1>Select Article Category</h1>
            <p>Choose a category to create a new article</p>
        </div>

        <div class="breadcrumb-info">
            <span class="breadcrumb-item">
                <i class="fas fa-th-large"></i> {{ $categories->count() }} Categories
            </span>
            <span class="breadcrumb-item">
                <i class="fas fa-rocket"></i> Ready to Create
            </span>
        </div>

        @if($categories->isEmpty())
            <div class="no-categories">
                <div class="no-categories-icon">
                    <i class="fas fa-folder-open"></i>
                </div>
                <h2>No Categories Available</h2>
                <p>Please create a category first before adding articles.</p>
            </div>
        @else
            <div class="categories-grid">
                @foreach($categories as $category)
                    <a href="{{ route('admin/articles/create/withCategory', $category->id) }}" class="category-card">
                        <div class="category-icon">
                            @switch($category->id % 5)
                                @case(0)
                                    <i class="fas fa-file-alt"></i>
                                    @break
                                @case(1)
                                    <i class="fas fa-video"></i>
                                    @break
                                @case(2)
                                    <i class="fas fa-images"></i>
                                    @break
                                @case(3)
                                    <i class="fas fa-book"></i>
                                    @break
                                @default
                                    <i class="fas fa-folder"></i>
                            @endswitch
                        </div>
                        <h2 class="category-name">{{ $category->name }}</h2>
                        <p class="category-description">
                            Create a new article in the {{ $category->name }} category
                        </p>
                        <div class="category-badge">
                            <i class="fas fa-plus-circle"></i> Create Now
                        </div>
                        <div class="category-arrow">
                            <i class="fas fa-arrow-right"></i>
                        </div>
                    </a>
                @endforeach
            </div>
        @endif
    </div>
</div>

@endsection

