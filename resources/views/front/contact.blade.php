@extends('layouts.front.home')

<!-- title page -->
@section('title')
    <title>AFAQ</title>
@endsection

<!-- custom page -->
@section('css')
    <style>
        /* Contact Page Specific Styles */
        .contact-hero {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('https://images.unsplash.com/photo-1449824913935-59a10b8d2000?w=1920') center/cover;
            height: 300px;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }

        .contact-hero h1 {
            color: white;
            font-size: 3rem;
            font-weight: 600;
            margin: 0;
            animation: fadeInUp 0.8s ease;
        }

        .contact-section {
            padding: 80px 0;
            background: #f8f9fa;
        }

        .contact-info-card {
            /* background: linear-gradient(135deg, #2B3E6F 0%, #1e2d4f 100%); */
            background: linear-gradient(135deg, #1E306A 0%, #1e2d4f 100%);
            padding: 50px 40px;
            border-radius: 20px 0 0 20px;
            height: 100%;
            color: white;
            position: relative;
            overflow: hidden;
        }

        .contact-info-card::before {
            content: '';
            position: absolute;
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(255,255,255,0.05) 0%, transparent 70%);
            border-radius: 50%;
            right: -100px;
            bottom: -100px;
        }

        .contact-info-card h3 {
            font-size: 1.8rem;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .contact-info-card p {
            color: rgba(255,255,255,0.9);
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .contact-detail {
            margin-bottom: 25px;
            display: flex;
            align-items: center;
            position: relative;
            z-index: 1;
        }

        .contact-detail i {
            font-size: 1.2rem;
            width: 40px;
            height: 40px;
            background: rgba(255,255,255,0.1);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 15px;
            transition: all 0.3s ease;
        }

        .contact-detail:hover i {
            background: rgba(255,255,255,0.2);
            transform: scale(1.1);
        }

        .contact-detail span {
            color: rgba(255,255,255,0.95);
            font-size: 0.95rem;
        }

        .contact-form-card {
            background: white;
            padding: 50px 40px;
            border-radius: 0 20px 20px 0;
            box-shadow: 0 10px 40px rgba(0,0,0,0.08);
            height: 100%;
        }

        .form-control, .form-select {
            border: 1px solid #e0e6ed;
            border-radius: 10px;
            padding: 12px 18px;
            font-size: 0.95rem;
            transition: all 0.3s ease;
            background: #fafbfc;
        }

        .form-control:focus, .form-select:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.1);
            background: white;
        }

        .form-label {
            color: #2d3748;
            font-weight: 500;
            margin-bottom: 8px;
            font-size: 0.9rem;
        }

        textarea.form-control {
            min-height: 120px;
            resize: none;
        }

        .btn-send {
            background: linear-gradient(135deg, #2B3E6F 0%, #1e2d4f 100%);
            color: white;
            padding: 12px 40px;
            border-radius: 10px;
            font-weight: 500;
            border: none;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(43, 62, 111, 0.3);
        }

        .btn-send:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 25px rgba(43, 62, 111, 0.4);
            color: white;
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
            .contact-info-card {
                border-radius: 20px 20px 0 0;
                margin-bottom: 0;
            }

            .contact-form-card {
                border-radius: 0 0 20px 20px;
            }

            .contact-hero h1 {
                font-size: 2rem;
            }
        }
    </style>
@endsection

@section('content')

    
    <!-- Page Header -->
    <section class="page-header" style="background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('{{ asset('front/assets/images/Rectangle 2751.png') }}') center/cover;">
        <div class="container">
            <h1 class="text-white" data-aos="fade-up">Contact Us</h1>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact-section">
        <div class="container">
            <div class="row g-0" data-aos="fade-up" data-aos-delay="100">
                <div class="col-lg-4">
                    <div class="contact-info-card">
                        <h3>Contact Information</h3>
                        <p>We're here to help and answer any question you might have</p>

                        <div class="contact-detail" data-aos="fade-right" data-aos-delay="200">
                            <i class="fas fa-phone"></i>
                            <span>+966554433203</span>
                        </div>

                        <div class="contact-detail" data-aos="fade-right" data-aos-delay="300">
                            <i class="fas fa-envelope"></i>
                            <span>info@afaqsa.com</span>
                        </div>

                        <div class="contact-detail" data-aos="fade-right" data-aos-delay="400">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>الرياض - المملكة العربية السعودية</span>
                        </div>
                        <img src="{{ asset('front/assets/images/026706ff-d6cf-4e7d-8bb3-2b2b58813f1f.jpg') }}" alt="Team Meeting" class="" style="position: absolute; bottom: 0%; right: -4%;">
                    </div>
                </div>

                <div class="col-lg-8">
                    <div class="contact-form-card">
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
                        <form action="{{ route('contact-us') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">First Name</label>
                                    <input name="first_name" type="text" class="form-control" >
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Last Name</label>
                                    <input name="last_name" type="text" class="form-control" >
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Email</label>
                                    <input name="email" type="email" class="form-control" >
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Phone Number</label>
                                    <input name="phone" type="tel" class="form-control" placeholder="+966554433203">
                                </div>
                            </div>

                            <div class="mb-4">
                                <label class="form-label">Your Message</label>
                                <textarea name="message" class="form-control" rows="5" placeholder="Write your message here..." ></textarea>
                            </div>

                            <button type="submit" class="btn btn-send">Send Message</button>
                        </form>
                    </div>
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
