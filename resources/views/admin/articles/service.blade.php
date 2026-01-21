@extends('layouts.admin.home')

<!-- title page -->
@section('title')
    <title>Articles</title>
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
                                <li class="breadcrumb-item active"><a href="{{route('admin/articles/index')}}/0/{{PAGINATION_COUNT}}">Articles</a></li>
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
                            <h4 class="card-title mb-0 flex-grow-1">Service Form</h4>
                        </div>
                        <div class="card-body">
                            <form role="form" action="{{url(route('admin/articles/create'))}}" method="post" enctype="multipart/form-data">
                                <div class="live-preview">
                                    @csrf
                                    <div class="row gy-4">
                                        
                                        <input name="article_type" type="hidden" value="1">
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="form-floating">
                                                <input name="title" type="text" class="form-control" id="titlefloatingInput" placeholder="title">
                                                <label for="titlefloatingInput">title <span class="text-danger">*</span></label>
                                            </div>
                                        </div>
                                        {{-- <div class="col-xxl-6 col-md-6">
                                            <div class="form-group">
                                                <label style="margin-bottom: 7px;" for="categories">categories <span class="text-danger"></span></label><br/>
                                                <select class="form-control" name="category_id" id="categories" disabled>
                                                    <option>select</option>
                                                </select>
                                            </div>
                                        </div> --}}
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="form-floating">
                                                {{-- <textarea class="form-control"  id="descriptionfloatingInput" name="desc" aria-label="With textarea" rows="2"></textarea> --}}
                                                <textarea class="form-control ckeditor description-article" name="desc" id="descriptionfloatingInput" rows="4"></textarea>
                                                <label for="descriptionfloatingInput">Description <span class="text-danger">*</span></label>
                                            </div>
                                        </div>
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="form-floating">
                                                <textarea class="form-control" name="importance" id="importancefloatingInput" aria-label="With textarea" rows="2"></textarea>
                                                <label for="importancefloatingInput" for="importance">Importance <span class="text-danger"></span></label>
                                            </div>
                                        </div>


                                        {{-- <div class="col-xxl-12 col-md-12">
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
                                        </div> --}}


                                        <div class="col-xxl-6 col-md-6">
                                            <div class="form-floating">
                                                <input name="file" type="file" id="filefloatingInput" class="form-control" placeholder="Upload Image">
                                                <label for="filefloatingInput">img<span class="text-danger"> *</span></label>
                                            </div>
                                        </div>
                                        <div class="col-xxl-6 col-md-6">
                                            <div class="form-floating">
                                                <input name="icon" type="file" id="iconfloatingInput" class="form-control" placeholder="Upload Image">
                                                <label for="iconfloatingInput">icon<span class="text-danger"></span></label>
                                            </div>
                                        </div>
                                        {{-- <div class="col-xxl-6 col-md-6">
                                            <div class="form-floating">
                                                <input name="article_file" type="file" id="article_filefloatingInput" class="form-control" placeholder="Upload Image">
                                                <label for="article_filefloatingInput">article file<span class="text-danger"></span></label>
                                            </div>
                                        </div> --}}
                                        {{-- <div class="col-xxl-12 col-md-12">
                                            <div class="form-check form-switch">
                                                <label class="form-check-label" for="is_recommendedflexSwitchCheckDefault">Recommended</label>
                                                <input class="form-check-input" type="checkbox" id="is_recommendedflexSwitchCheckDefault" name="is_recommended" value="1">
                                            </div>
                                        </div> --}}
                                        <div class="col-xxl-6 col-md-6">
                                            <div class="col-xxl-6 col-md-6">
                                                <button class="btn mb-3" style="background-color: #84BD5E; color: white;" id="add-input-features" type="button"><i class="bx bx-plus"></i> features</button>
                                            </div>
                                            <div id="features-area"></div>
                                        </div>
                                        <div class="col-xxl-6 col-md-6">
                                            <div class="col-xxl-6 col-md-6">
                                                <button class="btn mb-3" style="background-color: #84BD5E; color: white;" id="add-input-what_we_offer" type="button"><i class="bx bx-plus"></i> what we offer</button>
                                            </div>
                                            <div id="what_we_offer-area"></div>
                                        </div>
                                        <div class="col-xxl-12 col-md-12">
                                            <div class="col-xxl-6 col-md-6">
                                                <button class="btn mb-3" style="background-color: #84BD5E; color: white;" id="add-input-other_points" type="button"><i class="bx bx-plus"></i> other points</button>
                                            </div>
                                            <div id="other_points-area"></div>
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
<script type="text/javascript" src="{{asset('admin/assets/js/ckeditor/ckeditor.js')}}"></script>
<script>
    (function () {
        $('.nav-link.menu-link').removeClass('active');
        $('.menu-dropdown').removeClass('show');
        $('.sidebararticles').addClass('active');
        // $('#sidebarApps').addClass('show').siblings().removeClass('collapsed').attr('aria-expanded', 'true');
        // $('#sidebararticles').addClass('show').siblings().removeClass('collapsed').attr('aria-expanded', 'true');
        var target = $('.sidebararticles').attr('href');
        $(target).addClass('show');
    })();

    let inputCountFeatures = 1000000;
    let inputCountWhat_we_offer = 1000000;
    let inputCountOther_points = 1000000;
    $('#add-input-features').click( function () {
        inputCountFeatures++;
        $('#features-area').append(`
            <div class="input-container input-container-features-${inputCountFeatures} mb-3">
                <div class="row">
                    <div class="col-xxl-10 col-md-10">
                        <div class="form-group">
                            <label style="margin-bottom: 0px;" for="">feature <span class="text-danger">*</span></label><br/>
                            <input name="features[]" type="text" class="form-control" id="namefloatingInput" placeholder="feature">
                        </div>
                    </div>
                    <div class="col-xxl-2 col-md-2">
                        <label for="" class="mb-2"></label>
                        <span class="remove-btn badge bg-danger rounded-pill mt-4" parent-class="input-container-features-${inputCountFeatures}"><i class="bx bx-trash"></i></span>
                    </div>
                </div>
            </div>
        `);
    });
    $('#add-input-what_we_offer').click( function () {
        inputCountWhat_we_offer++;
        $('#what_we_offer-area').append(`
            <div class="input-container input-container-what_we_offer-${inputCountWhat_we_offer} mb-3">
                <div class="row">
                    <div class="col-xxl-10 col-md-10">
                        <div class="form-group">
                            <label style="margin-bottom: 0px;" for="">what we offer <span class="text-danger">*</span></label><br/>
                            <input name="what_we_offer[]" type="text" class="form-control" id="namefloatingInput" placeholder="what we offer">
                        </div>
                    </div>
                    <div class="col-xxl-2 col-md-2">
                        <label for="" class="mb-2"></label>
                        <span class="remove-btn badge bg-danger rounded-pill mt-4" parent-class="input-container-what_we_offer-${inputCountWhat_we_offer}"><i class="bx bx-trash"></i></span>
                    </div>
                </div>
            </div>
        `);
    });
    $('#add-input-other_points').click( function () {
        inputCountOther_points++;
        $('#other_points-area').append(`
            <div class="input-container input-container-other_points-${inputCountOther_points} mb-3">
                <div class="row">
                    <div class="col-xxl-5 col-md-5">
                        <div class="form-group">
                            <label style="margin-bottom: 0px;" for="titlefloatingInput">title <span class="text-danger">*</span></label><br/>
                            <input name="other_points[${inputCountOther_points}][title]" type="text" class="form-control" id="titlefloatingInput" placeholder="title">
                        </div>
                    </div>
                    <div class="col-xxl-5 col-md-5">
                        <div class="form-group">
                            <label style="margin-bottom: 0px;" for="contentfloatingInput">content <span class="text-danger">*</span></label><br/>
                            <textarea class="form-control" name="other_points[${inputCountOther_points}][content]" aria-label="With textarea" rows="2" id="contentfloatingInput"></textarea>
                        </div>
                    </div>
                    <div class="col-xxl-2 col-md-2">
                        <label for="" class="mb-2"></label>
                        <span class="remove-btn badge bg-danger rounded-pill mt-4" parent-class="input-container-other_points-${inputCountOther_points}"><i class="bx bx-trash"></i></span>
                    </div>
                </div>
            </div>
        `);
    });
    $(document).on('click', '.remove-btn', function () {
        var parentClass = $(this).attr('parent-class');
        $('.'+parentClass).remove();
    });

    $('#categories').select2({
        ajax: {
            url: "{{ route('get/categories') }}",
            dataType: 'json',
            processResults: function (data) {
                return {
                    results:  $.map(data, function (item) {
                        return {
                            id: item.id,
                            text: item.name
                        }
                    })
                };
            },
            cache: true,
            width: '100%'
        }
    });
    $('#article_type').on('change', function () {
        const type = String(this.value);
        if (type === '2') {
            $('#categories').prop('disabled', false).trigger('change.select2');
        } else {
            $('#categories').val(null).trigger('change');
            $('#categories').prop('disabled', true);
        }
    });
    $('#article_type').trigger('change');

</script>
@endsection
