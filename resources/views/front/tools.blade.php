@extends('layouts.front.home')

<!-- title page -->
@section('title')
    <title>AFAQ</title>
@endsection

<!-- custom page -->
@section('css')
<style>
</style>
@endsection

@section('content')

    
    <!-- Page Header -->
    <section class="page-header" style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('{{ asset('front/assets/images/Rectangle 2751.png') }}') center/cover;">
        <div class="container">
            <h1 class="text-white" data-aos="fade-up">Tools</h1>
        </div>
    </section>

    <!-- First Section -->
    <section class="py-5">
        <div class="container">
            <div class="row align-items-center g-5">
                <div class="col-lg-5" data-aos="fade-right">
                    <img src="{{ asset('front/assets/images/Rectangle 2752.png') }}" alt="Team Meeting" class="img-fluid rounded-4 shadow-lg">
                </div>
                <div class="col-lg-7" data-aos="fade-left">
                    <span>Self Assessment</span>
                    <h2 class="" style="color: var(--primary-color); font-size: 36px; font-weight: 700;">
                        Design Process for Beginners
                    </h2>
                    <span class="article-date">
                        <i class="far fa-calendar"></i> Apr 8, 2023
                    </span>
                    <div style="color: var(--text-light); font-size: 16px; line-height: 1.8;">
                        <p>In my opinion, Ui/Ux design is the foundation of a product, its face and soul. You can create an infinitely high-quality heart, and organize the simulation of breathing, but we won’t fall in love with a product just because its heart beats in an interesting rhythm or its breathing smells like mint.</p>
                        <p>Most of the information we perceive is through our eyes, which means that we see first and then think. Therefore, we must understand how to attract attention and process it in a way that the user performs the necessary actions [...]</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Second Section -->
    <section class="py-5 bg-light">
        <div class="container">
            <div class="row align-items-center g-5">
                <div class="col-lg-6" data-aos="fade-right">
                    <span>Guides</span>
                    <h2 class="" style="color: var(--primary-color); font-size: 36px; font-weight: 700;">
                        User-centered design — a brief guide
                    </h2>
                    <span class="article-date">
                        <i class="far fa-calendar"></i> Apr 8, 2023
                    </span>
                    <div style="color: var(--text-light); font-size: 16px; line-height: 1.8;">
                        <p>As is commonly believed, this methodology places the user at the center of the world and focuses on their views and habits. In fact, the product’s actual growth revolves around the persona for which the system is built.  </p>
                        <p style="font-weight: 600; color: var(--text-dark);">
                            The main difference is in the habits and atmosphere in which the user is accustomed to “brewing”; we do not try to restrict the user to achieve goals. Goals are achieved naturally, often not allowing for qualitative identification of opportunities and direct needs [...]
                        </p>
                    </div>
                </div>
                <div class="col-lg-6" data-aos="fade-left">
                    <img src="{{ asset('front/assets/images/Rectangle 2752 (1).png') }}" alt="Team Discussion" class="img-fluid rounded-4 shadow-lg">
                </div>
            </div>
        </div>
    </section>

@endsection
<!-- custom js -->
@section('script')
<script>
</script>
@endsection
