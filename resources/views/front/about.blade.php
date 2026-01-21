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
            <h1 class="text-white" data-aos="fade-up">About us</h1>
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
                    <h2 class="mb-4" style="color: var(--primary-color); font-size: 36px; font-weight: 700;">
                        Learn more about AFAQ’s plans for 2025
                    </h2>
                    <div style="color: var(--text-light); font-size: 16px; line-height: 1.8;">
                        <p>In a rapidly changing world, organizations need leaders who combine original thinking, field expertise, and a clear methodology.</p>
                        <p>AFAQ is my personal platform, where I offer my expertise as an independent consultant in marketing and business development—providing specialized services that go beyond theory and deliver measurable, practical results.</p>
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
                    <h2 class="mb-4" style="color: var(--primary-color); font-size: 36px; font-weight: 700;">
                        Driving Sustainable Growth<br>Through Strategic Marketing
                    </h2>
                    <div style="color: var(--text-light); font-size: 16px; line-height: 1.8;">
                        <p>Through Afaq, I work with companies, institutions, and non-profit organizations to build professional marketing departments, deliver tailored consulting services, and develop strategies that keep pace with change and drive sustainable success</p>
                        <p style="font-weight: 600; color: var(--text-dark);">Marketing and Business Development Consultant<br>Abdullah A. Ali</p>
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
