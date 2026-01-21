<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        @yield('title')
        {{-- <title>AFAQ - Marketing Management Excellence</title> --}}

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <!-- AOS Animation -->
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="{{ asset('front/assets/css/styles.css') }}">
        @yield('css')
    </head>
    <body>

        @include('layouts.front.header')
        @yield('content')
        
        <!--start back-to-top-->
        {{-- <button onclick="topFunction()" class="btn btn-danger btn-icon" id="back-to-top">
            <i class="ri-arrow-up-line"></i>
        </button> --}}
        <!--end back-to-top-->
        
        @include('layouts.front.footer')

        <!-- WhatsApp Button -->
        <a href="https://wa.me/966554834833" class="whatsapp-btn" target="_blank">
            <i class="fab fa-whatsapp"></i>
        </a>

        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

        <!-- AOS Animation -->
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

        <!-- Custom JS -->
        <script src="{{ asset('front/assets/js/app.js') }}"></script>
        <script>

        var _token = $('input[name="_token"]').val();
        $(document).on('mouseenter', '#dropdown-head-blog-menu', function(event) {
            var category = $(this).attr('data-id');
            event.preventDefault();
            get_header_data(category, 1);
        });
        $(document).on('mouseenter', '#dropdown-head-media-menu', function(event) {
            var category = $(this).attr('data-id');
            event.preventDefault();
            get_header_data(category, 2);
        });

        function get_header_data(category, action_type) {
            $.ajax({
                url: "{{ route('user/get/sub-categories') }}",
                method: "GET",
                data: { 
                    _token: _token,
                    category_id: category 
                },
                success: function(data) {
                    let records = ``;
                    for (let i = 0; i < data.length; i++) {
                        if (action_type == 1) {
                            var action_url = `{{ route('all-blog') }}`
                        } else if (action_type == 2) {
                            var action_url = `{{ route('all-media-center') }}`
                        }
                        records += `<li><a class="dropdown-item" href="${action_url}">${data[i].name}</a></li>`;
                    }
                    if (action_type == 1) {
                        $('#dropdown-blog-menu').empty().append(records);
                    } else if (action_type == 2) {
                        $('#dropdown-media-menu').empty().append(records);
                    }
                }
            })
        }
        </script>
        @yield('script')

    </body>
</html>
