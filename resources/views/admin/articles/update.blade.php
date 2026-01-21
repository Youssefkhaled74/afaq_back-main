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
                                <li class="active" style="color: var(--vz-breadcrumb-item-active-color);">Update</li>
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
                            @php
                                $title = 'Article';
                                if ($article->article_type == 1) {
                                    $title = 'Service';
                                }
                            @endphp
                            <h4 class="card-title mb-0 flex-grow-1">{{ $title }} Update</h4>
                        </div>
                        <div class="card-body">
                            @isset($article)
                                <form role="form" action="{{url(route('admin/articles/update', $article->id))}}" method="post" enctype="multipart/form-data">
                                    <div class="live-preview">
                                        @csrf

                                        <div class="row gy-4">
                                            
                                            @if ($article->article_type == 1)
                                                <input name="article_type" type="hidden" value="1">
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="form-floating">
                                                        <input value="{{ $article->title }}" name="title" type="text" class="form-control" id="titlefloatingInput" placeholder="title">
                                                        <label for="titlefloatingInput">title <span class="text-danger">*</span></label>
                                                    </div>
                                                </div>
                                            @else
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="col-xxl-6 col-md-6">
                                                        <div class="form-group">
                                                            <label>article type</label>
                                                            <span class="input-group-addon" style="color: red;">*</span>
                                                            <select class="form-control" name="article_type" id="article_type">
                                                                <option value="">select</option>
                                                                {{-- <option value="1" {{ $article->article_type == 1 ? 'selected' : '' }}>Service</option> --}}
                                                                <option value="2" {{ $article->article_type == 2 ? 'selected' : '' }}>Articles</option>
                                                                <option value="3" {{ $article->article_type == 3 ? 'selected' : '' }}>Files</option>
                                                                <option value="4" {{ $article->article_type == 4 ? 'selected' : '' }}>Courses</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                {{-- @if ($article->article_type == 2) --}}
                                                    <div class="col-xxl-6 col-md-6">
                                                        <div class="form-floating">
                                                            <input value="{{ $article->title }}" name="title" type="text" class="form-control" id="titlefloatingInput" placeholder="title">
                                                            <label for="titlefloatingInput">title <span class="text-danger">*</span></label>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-6 col-md-6">
                                                        <div class="form-group">
                                                            <label style="margin-bottom: 7px;" for="categories">categories <span class="text-danger"></span></label><br/>
                                                            <select class="form-control" name="category_id" id="categories">
                                                                <option value="{{ $article->category_id }}">{{ $article->category?->name ?? 'select' }}</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-6 col-md-6">
                                                        <div class="form-group">
                                                            <label style="margin-bottom: 7px;" for="writers">writers <span class="text-danger"></span></label><br/>
                                                            <select class="form-control" name="writer_id" id="writers">
                                                                <option value="{{ $article->writer_id }}">{{ $article->writer?->name ?? 'select' }}</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                {{-- @else
                                                    <div class="col-xxl-12 col-md-12">
                                                        <div class="form-floating">
                                                            <input value="{{ $article->title }}" name="title" type="text" class="form-control" id="titlefloatingInput" placeholder="title">
                                                            <label for="titlefloatingInput">title <span class="text-danger">*</span></label>
                                                        </div>
                                                    </div>
                                                @endif --}}
                                            @endif
                                            
                                            <div class="col-xxl-12 col-md-12">
                                                <div class="form-floating">
                                                    <textarea class="form-control ckeditor description-article" name="desc" id="descriptionfloatingInput" rows="4">{{ $article->desc }}</textarea>
                                                    <label for="descriptionfloatingInput">Description <span class="text-danger">*</span></label>
                                                </div>
                                            </div>
                                            @if ($article->article_type == 1)
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="form-floating">
                                                        <textarea class="form-control" name="importance" id="importancefloatingInput" aria-label="With textarea" rows="2">{{ $article->importance }}</textarea>
                                                        <label for="importancefloatingInput" for="importance">Importance <span class="text-danger"></span></label>
                                                    </div>
                                                </div>
                                            @endif

                                            
                                            @if (!$article->article_type == 1)
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="form-floating">
                                                        <textarea class="form-control" name="linkedin" id="linkedinfloatingInput" aria-label="With textarea" rows="2">{{ $article->linkedin }}</textarea>
                                                        <label for="linkedinfloatingInput" for="linkedin">linkedin <span class="text-danger"></span></label>
                                                    </div>
                                                </div>
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="form-floating">
                                                        <textarea class="form-control" name="whatsapp" id="whatsappfloatingInput" aria-label="With textarea" rows="2">{{ $article->whatsapp }}</textarea>
                                                        <label for="whatsappfloatingInput" for="whatsapp">whatsapp <span class="text-danger"></span></label>
                                                    </div>
                                                </div>
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="form-floating">
                                                        <textarea class="form-control" name="facebook" id="facebookfloatingInput" aria-label="With textarea" rows="2">{{ $article->facebook }}</textarea>
                                                        <label for="facebookfloatingInput" for="facebook">facebook <span class="text-danger"></span></label>
                                                    </div>
                                                </div>
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="form-floating">
                                                        <textarea class="form-control" name="x_url" id="x_urlfloatingInput" aria-label="With textarea" rows="2">{{ $article->x_url }}</textarea>
                                                        <label for="x_urlfloatingInput" for="x_url">x url <span class="text-danger"></span></label>
                                                    </div>
                                                </div>
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="form-floating">
                                                        <textarea class="form-control" name="email" id="emailfloatingInput" aria-label="With textarea" rows="2">{{ $article->email }}</textarea>
                                                        <label for="emailfloatingInput" for="email">email <span class="text-danger"></span></label>
                                                    </div>
                                                </div>
                                            @endif


                                            <div class="col-xxl-6 col-md-6">
                                                <div class="form-floating">
                                                    <input name="file" type="file" id="filefloatingInput" class="form-control" placeholder="Upload Image">
                                                    <label for="filefloatingInput">img<span class="text-danger"> </span></label>
                                                </div>
                                            </div>
                                            @if ($article->article_type == 1)
                                                <div class="col-xxl-6 col-md-6">
                                                    <div class="form-floating">
                                                        <input name="icon" type="file" id="iconfloatingInput" class="form-control" placeholder="Upload Image">
                                                        <label for="iconfloatingInput">icon<span class="text-danger"></span></label>
                                                    </div>
                                                </div>
                                            @else
                                                <div class="col-xxl-6 col-md-6">
                                                    <div class="form-floating">
                                                        <input name="article_file" type="file" id="article_filefloatingInput" class="form-control" placeholder="Upload Image">
                                                        <label for="article_filefloatingInput">article file<span class="text-danger"></span></label>
                                                    </div>
                                                </div>
                                            @endif
                                            @if ($article->article_type == 4)
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="col-xxl-6 col-md-6">
                                                        <div class="form-floating">
                                                            <input value="{{ $article->students_count }}" name="students_count" type="number" class="form-control" id="students_countfloatingInput" placeholder="students_count">
                                                            <label for="students_countfloatingInput">Students Count <span class="text-danger">*</span></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endif
                                            @if ($article->article_type == 1)
                                                <div class="col-xxl-6 col-md-6">
                                                    <div class="col-xxl-6 col-md-6">
                                                        <button class="btn mb-3" style="background-color: #84BD5E; color: white;" id="add-input-features" type="button"><i class="bx bx-plus"></i> features</button>
                                                    </div>
                                                    <div id="features-area">
                                                        @isset($article->features)
                                                            @foreach(json_decode($article->features) as $i => $feature)
                                                                <div class="input-container input-container-features-{{ $i }} mb-3">
                                                                    <div class="row">
                                                                        <div class="col-xxl-10 col-md-10">
                                                                            <div class="form-group">
                                                                                <label style="margin-bottom: 0px;" for="">feature <span class="text-danger">*</span></label><br/>
                                                                                <input name="features[]" type="text" class="form-control" id="namefloatingInput" placeholder="feature" value="{{ $feature }}">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-xxl-2 col-md-2">
                                                                            <label for="" class="mb-2"></label>
                                                                            <span class="remove-btn badge bg-danger rounded-pill mt-4" parent-class="input-container-features-{{ $i }}"><i class="bx bx-trash"></i></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            @endforeach
                                                        @endisset
                                                    </div>
                                                </div>
                                                <div class="col-xxl-6 col-md-6">
                                                    <div class="col-xxl-6 col-md-6">
                                                        <button class="btn mb-3" style="background-color: #84BD5E; color: white;" id="add-input-what_we_offer" type="button"><i class="bx bx-plus"></i> what we offer</button>
                                                    </div>
                                                    <div id="what_we_offer-area">
                                                        @isset($article->what_we_offer)
                                                            @foreach(json_decode($article->what_we_offer) as $i => $offer)
                                                                <div class="input-container input-container-what_we_offer{{ $i }} mb-3">
                                                                    <div class="row">
                                                                        <div class="col-xxl-10 col-md-10">
                                                                            <div class="form-group">
                                                                                <label style="margin-bottom: 0px;" for="">what we offer <span class="text-danger">*</span></label><br/>
                                                                                <input name="what_we_offer[]" type="text" class="form-control" id="namefloatingInput" placeholder="what we offer" value="{{ $offer }}">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-xxl-2 col-md-2">
                                                                            <label for="" class="mb-2"></label>
                                                                            <span class="remove-btn badge bg-danger rounded-pill mt-4" parent-class="input-container-what_we_offer{{ $i }}"><i class="bx bx-trash"></i></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            @endforeach
                                                        @endisset
                                                    </div>
                                                </div>
                                                <div class="col-xxl-6 col-md-12">
                                                    <div class="col-xxl-6 col-md-6">
                                                        <button class="btn mb-3" style="background-color: #84BD5E; color: white;" id="add-input-other_points" type="button"><i class="bx bx-plus"></i> other points</button>
                                                    </div>
                                                    <div id="other_points-area">
                                                        @isset($article->other_points)
                                                            @foreach(json_decode($article->other_points) as $i => $other_point)
                                                                <div class="input-container input-container-other_points-{{ $i }} mb-3">
                                                                    <div class="row">
                                                                        <div class="col-xxl-5 col-md-5">
                                                                            <div class="form-group">
                                                                                <label style="margin-bottom: 0px;" for="titlefloatingInput">title <span class="text-danger">*</span></label><br/>
                                                                                <input name="other_points[{{ $i }}][title]" value="{{ $other_point->title }}" type="text" class="form-control" id="titlefloatingInput" placeholder="title">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-xxl-5 col-md-5">
                                                                            <div class="form-group">
                                                                                <label style="margin-bottom: 0px;" for="contentfloatingInput">content <span class="text-danger">*</span></label><br/>
                                                                                <textarea class="form-control" name="other_points[{{ $i }}][content]" aria-label="With textarea" rows="2" id="contentfloatingInput">{{ $other_point->content }}</textarea>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-xxl-2 col-md-2">
                                                                            <label for="" class="mb-2"></label>
                                                                            <span class="remove-btn badge bg-danger rounded-pill mt-4" parent-class="input-container-other_points-{{ $i }}"><i class="bx bx-trash"></i></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            @endforeach
                                                        @endisset
                                                    </div>
                                                </div>
                                            @else
                                                <div class="col-xxl-12 col-md-12">
                                                    <div class="form-check form-switch">
                                                        <label class="form-check-label" for="is_recommendedflexSwitchCheckDefault">Recommended</label>
                                                        <input class="form-check-input" type="checkbox" id="is_recommendedflexSwitchCheckDefault" name="is_recommended" value="1" {{ $article->is_recommended == 1 ? 'checked' : '' }}>
                                                    </div>
                                                </div> 
                                            @endif

                                            <div class="col-12">
                                                <button class="btn btn-primary" type="submit">Submit form</button>
                                            </div>

                                        </div>
                                    </div>
                                </form>
                            @endisset
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
        var target = $('.sidebararticles').attr('href');
        $(target).addClass('show');
    })();
</script>
<script>

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
                var filteredData = data.filter(function(item) {
                    return item.id != 1 && item.id != 2;
                });
                return {
                    results:  $.map(filteredData, function (item) {
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
    $('#writers').select2({
        ajax: {
            url: "{{ route('get/writers') }}",
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
    // $('#article_type').on('change', function () {
    //     const type = String(this.value);
    //     if (type === '2') {
    //         $('#categories').prop('disabled', false).trigger('change.select2');
    //     } else {
    //         $('#categories').val(null).trigger('change');
    //         $('#categories').prop('disabled', true);
    //     }
    // });
    // $('#article_type').trigger('change');

</script>
@endsection
