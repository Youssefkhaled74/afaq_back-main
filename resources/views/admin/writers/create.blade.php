@extends('layouts.admin.home')

<!-- title page -->
@section('title')
    <title>Writers</title>
@endsection

<!-- custom css -->
@section('css')
@endsection

@section('content')

    <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent" style="direction: ltr;">
                        {{-- <h4 class="mb-sm-0">Team</h4> --}}

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"></li>
                                <li class="breadcrumb-item"><a href="{{route('admin/index')}}">Home</a></li>
                                <li class="breadcrumb-item active"><a href="{{route('admin/writers/index')}}/0/{{PAGINATION_COUNT}}">Writers</a></li>
                                <li class="active" style="color: var(--vz-breadcrumb-item-active-color);">Create</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>

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

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header align-items-center d-flex">
                            <h4 class="card-title mb-0 flex-grow-1">Writer Form</h4>
                        </div>
                        <div class="card-body">
                            <form role="form" action="{{url(route('admin/writers/create'))}}" method="post" enctype="multipart/form-data">
                                <div class="live-preview">
                                    @csrf
                                    <div class="row gy-4">

                                        <div class="col-xxl-6 col-md-6">
                                            <div class="form-floating">
                                                <input name="name" type="text" class="form-control" id="namefloatingInput" placeholder="name">
                                                <label for="namefloatingInput">name <span class="text-danger">*</span></label>
                                            </div>
                                        </div>
                                        <div class="col-xxl-6 col-md-6">
                                            <div class="form-floating">
                                                <input name="file" type="file" id="filefloatingInput" class="form-control" placeholder="Upload Image">
                                                <label for="filefloatingInput">img<span class="text-danger"> *</span></label>
                                            </div>
                                        </div>
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="form-floating">
                                                <textarea class="form-control" id="infofloatingInput" name="info" aria-label="With textarea" rows="2"></textarea>
                                                {{-- <textarea class="form-control ckeditor info-article" name="desc" id="infofloatingInput" rows="4"></textarea> --}}
                                                <label for="infofloatingInput">Info <span class="text-danger">*</span></label>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="form-floating">
                                                <textarea class="form-control" name="linkedin" id="linkedinfloatingInput" aria-label="With textarea" rows="2"></textarea>
                                                <label for="linkedinfloatingInput" for="linkedin">linkedin <span class="text-danger"></span></label>
                                            </div>
                                        </div>
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="form-floating">
                                                <textarea class="form-control" name="whatsapp" id="whatsappfloatingInput" aria-label="With textarea" rows="2"></textarea>
                                                <label for="whatsappfloatingInput" for="whatsapp">whatsapp <span class="text-danger"></span></label>
                                            </div>
                                        </div>
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="form-floating">
                                                <textarea class="form-control" name="facebook" id="facebookfloatingInput" aria-label="With textarea" rows="2"></textarea>
                                                <label for="facebookfloatingInput" for="facebook">facebook <span class="text-danger"></span></label>
                                            </div>
                                        </div>
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="form-floating">
                                                <textarea class="form-control" name="x_url" id="x_urlfloatingInput" aria-label="With textarea" rows="2"></textarea>
                                                <label for="x_urlfloatingInput" for="x_url">x url <span class="text-danger"></span></label>
                                            </div>
                                        </div>
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="form-floating">
                                                <textarea class="form-control" name="email" id="emailfloatingInput" aria-label="With textarea" rows="2"></textarea>
                                                <label for="emailfloatingInput" for="email">email <span class="text-danger"></span></label>
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <button class="btn btn-primary" type="submit">Submit form</button>
                                            <button class="btn btn-success" type="reset">Reset Button</button>
                                        </div>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

@endsection

<!-- custom js -->
@section('script')
<script>
    (function () {
        $('.nav-link.menu-link').removeClass('active');
        $('.menu-dropdown').removeClass('show');
        $('.sidebarwriters').addClass('active');
        // $('#sidebarApps').addClass('show').siblings().removeClass('collapsed').attr('aria-expanded', 'true');
        // $('#sidebarwriters').addClass('show').siblings().removeClass('collapsed').attr('aria-expanded', 'true');
        var target = $('.sidebarwriters').attr('href');
        $(target).addClass('show');
    })();
    // $('#writers').select2({
    //     ajax: {
    //         url: "#",
    //         dataType: 'json',
    //         processResults: function (data) {
    //             return {
    //                 results:  $.map(data, function (item) {
    //                     return {
    //                         id: item.id,
    //                         text: item.name
    //                     }
    //                 })
    //             };
    //         },
    //         cache: true
    //     }
    // });
</script>
@endsection
