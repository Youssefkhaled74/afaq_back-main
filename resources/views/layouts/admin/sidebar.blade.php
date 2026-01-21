
<!-- ========== App Menu ========== -->
<div class="app-menu navbar-menu">
    <!-- LOGO -->
    <div class="navbar-brand-box">
        <a href="{{route('admin/index')}}" class="logo logo-dark">
            <span class="logo-sm">
                <img src="{{ asset('admin/assets/images/logo-sm.png') }}" alt="" height="22">
            </span>
            <span class="logo-lg">
                <img src="{{ asset('https://elgmal.dev-x.host/admin/assets/images/settings/169842649442168.png') }}" alt="" height="35">
            </span>
        </a>
        <a href="{{route('admin/index')}}" class="logo logo-light">
            <span class="logo-sm">
                <img src="{{ asset('admin/assets/images/logo-sm.png') }}" alt="" height="22">
            </span>
            <span class="logo-lg">
                <img src="{{ asset('https://elgmal.dev-x.host/admin/assets/images/settings/169842649442168.png') }}" alt="" height="35">
            </span>
        </a>
        <button type="button" class="btn btn-sm p-0 fs-20 header-item float-end btn-vertical-sm-hover" id="vertical-hover">
            <i class="ri-record-circle-line"></i>
        </button>
    </div>
    <div class="dropdown sidebar-user m-1 rounded">
        <button type="button" class="btn material-shadow-none" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="d-flex align-items-center gap-2">
                <img class="rounded header-profile-user" src="{{ asset(auth()->guard('admin')->user()->img) ?? asset('admin/assets/images/users/avatar-1.jpg') }}" alt="Header Avatar">
                <span class="text-start">
                    <span class="d-block fw-medium sidebar-user-name-text">{{auth()->guard('admin')->user()->name}}</span>
                    <span class="d-block fs-14 sidebar-user-name-sub-text"><i class="ri ri-circle-fill fs-10 text-success align-baseline"></i> <span class="align-middle">Online</span></span>
                </span>
            </span>
        </button>
        <div class="dropdown-menu dropdown-menu-end">
            <a class="dropdown-item" href="{{url(route('admin/admins/info'))}}">
                <i class="mdi mdi-cog-outline text-muted fs-16 align-middle me-1"></i> 
                <span class="align-middle">Settings</span>
            </a>
            <a class="dropdown-item" href="{{url(route('admin/logout'))}}">
                <i class="mdi mdi-logout text-muted fs-16 align-middle me-1"></i> 
                <span class="align-middle" data-key="t-logout">Logout</span>
            </a>
        </div>
    </div>
    <div id="scrollbar">
        <div class="container-fluid">

            <div id="two-column-menu"></div>
            <ul class="navbar-nav" id="navbar-nav">

                <li class="menu-title"><span data-key="t-menu">Menu</span></li>
                <li class="nav-item">
                    <a class="nav-link menu-link sidebaradmins" href="#sidebaradmins" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebaradmins">
                        <i class="ri-apps-2-line"></i> <span data-key="t-admins"> Admins </span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebaradmins">
                        
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="{{route('admin/admins/index')}}/0/{{PAGINATION_COUNT}}" class="nav-link" data-key="t-admins-list"> Admins </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('admin/admins/create')}}" class="nav-link" data-key="t-admins-add"> Add Admin </a>
                            </li>
                            <!-- <li class="nav-item">
                                <a href="{{route('admin/admins/archives')}}/0/{{PAGINATION_COUNT}}" class="nav-link" data-key="t-admins-add"> archives </a>
                            </li> -->
                        </ul>

                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link sidebarcategories" href="#sidebarcategories" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarcategories">
                        <i class="ri-apps-2-line"></i> <span data-key="t-categories"> Categories </span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebarcategories">
                        
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="{{route('admin/categories/index')}}/0/{{PAGINATION_COUNT}}" class="nav-link" data-key="t-categories-list"> Categories </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('admin/categories/create')}}" class="nav-link" data-key="t-categories-add"> Add Category </a>
                            </li>
                        </ul>

                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link sidebararticles" href="#sidebararticles" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebararticles">
                        <i class="ri-apps-2-line"></i> <span data-key="t-articles"> Articles </span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebararticles">
                        
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="{{route('admin/articles/index')}}/0/{{PAGINATION_COUNT}}" class="nav-link" data-key="t-articles-list"> Articles </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('admin/articles/create/article')}}" class="nav-link" data-key="t-articles-add"> Add Article </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('admin/articles/create/service')}}" class="nav-link" data-key="t-services-add"> Add Service </a>
                            </li>
                        </ul>

                    </div>
                </li>
                {{-- <li class="nav-item">
                    <a class="nav-link menu-link sidebarasksType" href="#sidebarasksType" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarasksType">
                        <i class="ri-apps-2-line"></i> <span data-key="t-asksType"> Asks Type </span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebarasksType">
                        
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="{{route('admin/asksType/index')}}/0/{{PAGINATION_COUNT}}" class="nav-link" data-key="t-asksType-list"> Asks Type </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('admin/asksType/create')}}" class="nav-link" data-key="t-asksType-add"> Add Ask Type </a>
                            </li>
                        </ul>

                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link sidebarasks" href="#sidebarasks" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarasks">
                        <i class="ri-apps-2-line"></i> <span data-key="t-asks"> Asks </span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebarasks">
                        
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="{{route('admin/asks/index')}}/0/{{PAGINATION_COUNT}}" class="nav-link" data-key="t-asks-list"> Asks </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('admin/asks/create')}}" class="nav-link" data-key="t-asks-add"> Add Ask </a>
                            </li>
                        </ul>

                    </div>
                </li> --}}
                <li class="nav-item">
                    <a class="nav-link menu-link sidebarwriters" href="#sidebarwriters" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarwriters">
                        <i class="ri-apps-2-line"></i> <span data-key="t-writers"> Writers </span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebarwriters">
                        
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="{{route('admin/writers/index')}}/0/{{PAGINATION_COUNT}}" class="nav-link" data-key="t-writers-list"> Writers </a>
                            </li>
                            <li class="nav-item">
                                <a href="{{route('admin/writers/create')}}" class="nav-link" data-key="t-writers-add"> Add Writer </a>
                            </li>
                        </ul>

                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link sidebarcomments" href="#sidebarcomments" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarcomments">
                        <i class="ri-apps-2-line"></i> <span data-key="t-comments"> comments </span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebarcomments">
                        
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="{{route('admin/comments/index')}}/0/{{PAGINATION_COUNT}}" class="nav-link" data-key="t-comments-list"> comments </a>
                            </li>
                            {{-- <li class="nav-item">
                                <a href="{{route('admin/comments/create')}}" class="nav-link" data-key="t-comments-add"> Add Writer </a>
                            </li> --}}
                        </ul>

                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link menu-link sidebarcontacts" href="#sidebarcontacts" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="sidebarcontacts">
                        <i class="ri-apps-2-line"></i> <span data-key="t-contacts"> Contacts </span>
                    </a>
                    <div class="collapse menu-dropdown" id="sidebarcontacts">
                        
                        <ul class="nav nav-sm flex-column">
                            <li class="nav-item">
                                <a href="{{route('admin/contacts/index')}}/0/{{PAGINATION_COUNT}}" class="nav-link" data-key="t-contacts-list"> Contacts </a>
                            </li>
                            {{-- <li class="nav-item">
                                <a href="{{route('admin/contacts/create')}}" class="nav-link" data-key="t-contacts-add"> Add Writer </a>
                            </li> --}}
                        </ul>

                    </div>
                </li>

            </ul>
        </div>
    </div>

    <div class="sidebar-background"></div>
</div>