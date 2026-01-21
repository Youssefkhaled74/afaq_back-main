
<!-- Header -->
<header class="header sticky-top">
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="{{ route('home') }}">
                <div class="logo">
                    <span class="logo-text">
                        <img src="{{ asset('front/assets/images/g12.png') }}" alt="Team Meeting" class="img-fluid rounded-4" style="width: 65%;">
                    </span>
                </div>
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('about') }}">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('services') }}">Services</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="{{ route('all-blog') }}" role="button" data-bs-toggle="dropdown" id="dropdown-head-blog-menu" data-id="1">
                            Blog
                        </a>
                        <ul id="dropdown-blog-menu" class="dropdown-menu"></ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('tools') }}">Tools</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="{{ route('all-media-center') }}" role="button" data-bs-toggle="dropdown" id="dropdown-head-media-menu" data-id="2">
                            Media center
                        </a>
                        <ul id="dropdown-media-menu" class="dropdown-menu"></ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('contact') }}">Contact Us</a>
                    </li>
                </ul>

                <div class="d-flex align-items-center">
                    <button class="btn btn-search me-3">
                        <i class="fas fa-search"></i>
                    </button>

                    @if (auth()->guard('web')->check())
                        <a href="{{ route('user/dashboard') }}" class="btn btn-login me-2">
                            <i class="fas fa-user me-2"></i>{{ auth()->guard('web')->user()->name }}
                        </a>
                    @else
                        <a href="{{ route('login-form') }}" class="btn btn-login me-2">
                            <i class="fas fa-user me-2"></i>Login / Register
                        </a>
                    @endif

                    <button class="btn btn-language">العربية</button>
                </div>
            </div>
        </div>
    </nav>
</header>