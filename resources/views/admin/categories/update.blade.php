@extends('layouts.admin.home')

<!-- title page -->
@section('title')
    <title>Categories</title>
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
                                <li class="breadcrumb-item active"><a href="{{route('admin/categories/index')}}/0/{{PAGINATION_COUNT}}">Categories</a></li>
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
                            <h4 class="card-title mb-0 flex-grow-1">Category Update</h4>
                        </div>
                        <div class="card-body">
                            @isset($category)
                                <form role="form" action="{{url(route('admin/categories/update', $category->id))}}" method="post" enctype="multipart/form-data">
                                    <div class="live-preview">
                                        @csrf
                                        <div class="row gy-4">

                                            <div class="col-xxl-6 col-md-6">
                                                <div class="form-floating">
                                                    <input name="name" type="text" class="form-control" id="namefloatingInput" placeholder="name" value="{{$category->name}}">
                                                    <label for="namefloatingInput">name <span class="text-danger">*</span></label>
                                                </div>
                                            </div>
                                            <div class="col-xxl-6 col-md-6">
                                                <div class="form-group">
                                                    <label>categories</label>
                                                    <span class="input-group-addon" style="color: red;"></span>
                                                    <div class="input-group">
                                                        <select class="form-control" name="parent_id" id="">
                                                            <option value="">select</option>
                                                            <option value="1" {{ $category->parent_id == 1 ? 'selected' : '' }}>Blog</option>
                                                            <option value="2" {{ $category->parent_id == 2 ? 'selected' : '' }}>Media</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            {{-- <div class="col-xxl-6 col-md-6">
                                                <div class="form-group">
                                                    <label>categories</label>
                                                    <span class="input-group-addon" style="color: red;"></span>
                                                    <div class="input-group">
                                                        <select class="form-control" name="parent_id" id="categories">
                                                            <option value="{{ $category->parent_id }}">{{ $category?->parent->name ?? 'select' }}</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div> --}}

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
<script>
    (function () {
        var categoryID = `{{ $category->id }}`;
        $('.nav-link.menu-link').removeClass('active');
        $('.menu-dropdown').removeClass('show');
        $('.sidebarcategories').addClass('active');
        var target = $('.sidebarcategories').attr('href');
        $(target).addClass('show');
    })();
    $('#categories').select2({
        ajax: {
            url: "{{ route('get/categories') }}",
            dataType: 'json',
            processResults: function (data) {
                return {
                    results: $.map(data, function (item) {
                        var categoryID = `{{ $category->id }}`;
                        if (Number(item.id) !== Number(categoryID)) {
                            return {
                                id: item.id,
                                text: item.name
                            }
                        }
                    })
                };
            },
            cache: true
        }
    });

</script>
@endsection
