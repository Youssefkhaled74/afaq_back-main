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
    <section class="page-header" style="background: linear-gradient(rgba(30, 58, 95, 0.7), rgba(30, 58, 95, 0.7)), url('https://images.unsplash.com/photo-1449157291145-7efd050a4d0e?w=1600') center/cover;">
        <div class="container text-center">
            <h1 class="text-white" data-aos="fade-up">Media Center</h1>
        </div>
    </section>

    <!-- Media Section -->
    <section class="py-5">
        <div class="container">
            <!-- Media Title -->
            <div class="text-center mb-5" data-aos="fade-up">
                <h2 class="section-title">Media Center</h2>
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
            <div class="row g-4">
                <!-- Featured Media -->
                <div class="col-lg-6" data-aos="fade-right">
                    <div class="blog-card blog-item" data-category="powerpoint">
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

                <!-- Side Media -->
                <div class="col-lg-6">
                    <!-- Media 1 -->
                    <div class="blog-card mb-4 blog-item" data-category="powerpoint" data-aos="fade-left" data-aos-delay="100">
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

                    <!-- Media 2 -->
                    <div class="blog-card mb-4 blog-item" data-category="powerpoint" data-aos="fade-left" data-aos-delay="200">
                        <div class="row g-3">
                            <div class="col-4">
                                <img src="https://images.unsplash.com/photo-1551434678-e076c223a692?w=200" alt="Building" class="img-fluid rounded-3">
                            </div>
                            <div class="col-8">
                                <div class="blog-meta">
                                    <span><i class="far fa-calendar"></i> Apr 9, 2023</span>
                                    <span class="ms-3 badge bg-secondary">Power point</span>
                                </div>
                                <h5 class="blog-title">Building on the corner of the sea</h5>
                                <p class="blog-excerpt">Cognitive bias (also known as "cognitive illusion" or "cognitive distortion") refers to errors in thinking that can lead to incorrect perception and decision-making. They are an inherent part of our psychology and can</p>
                            </div>
                        </div>
                    </div>

                    <!-- Media 3 -->
                    <div class="blog-card blog-item" data-category="powerpoint" data-aos="fade-left" data-aos-delay="300">
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
            </div>

            <!-- Pagination -->
            <nav aria-label="Media pagination" class="mt-5">
                <ul class="pagination">
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

            <!-- Additional Media Row -->
            <div class="row g-4 mt-5">
                <div class="col-md-6" data-aos="fade-up">
                    <div class="blog-card blog-item" data-category="files">
                        <div class="row g-3">
                            <div class="col-4">
                                <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=200" alt="Pink stairs" class="img-fluid rounded-3">
                            </div>
                            <div class="col-8">
                                <div class="blog-meta">
                                    <span><i class="far fa-calendar"></i> Apr 8, 2023</span>
                                </div>
                                <h5 class="blog-title">Pink stairs leading to the sky</h5>
                                <p class="blog-excerpt">In my opinion, the foundation of a product, its face and soul. You can create an infinitely high-quality heart, and organize the simulation of breathing, but we won't fall in love with a product just because its heart beats [...]</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
                    <div class="blog-card blog-item" data-category="ebook">
                        <div class="row g-3">
                            <div class="col-4">
                                <img src="https://images.unsplash.com/photo-1551434678-e076c223a692?w=200" alt="Building" class="img-fluid rounded-3">
                            </div>
                            <div class="col-8">
                                <div class="blog-meta">
                                    <span><i class="far fa-calendar"></i> Apr 8, 2023</span>
                                </div>
                                <h5 class="blog-title">Building on the corner of the sea</h5>
                                <p class="blog-excerpt">Cognitive bias (also known as "cognitive illusion" or "cognitive distortion") refers to errors in thinking that can lead to incorrect perception and decision-making. They are an inherent part of our psychology and can</p>
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
</script>
@endsection
