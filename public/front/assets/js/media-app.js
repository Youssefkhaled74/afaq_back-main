/* ========================================
   Media Page - JavaScript Functionality
   ======================================== */

$(document).ready(function() {

    // Initialize AOS Animation
    AOS.init({
        duration: 1000,
        once: true,
        offset: 100,
        easing: 'ease-in-out'
    });

    // Smooth Scrolling for Navigation Links
    $('.navbar-nav a[href^="#"]').on('click', function(e) {
        e.preventDefault();
        const target = $(this.hash);
        if (target.length) {
            const offset = $('.navbar').outerHeight();
            $('html, body').animate({
                scrollTop: target.offset().top - offset
            }, 800, 'swing');
        }
    });

    // Active Navigation Link on Scroll
    $(window).on('scroll', function() {
        const scrollPos = $(window).scrollTop();
        const navHeight = $('.navbar').outerHeight();

        $('.navbar-nav .nav-link').each(function() {
            const link = $(this);
            const href = link.attr('href');

            if (href && href.startsWith('#')) {
                const section = $(href);
                if (section.length) {
                    const sectionTop = section.offset().top - navHeight - 50;
                    const sectionBottom = sectionTop + section.outerHeight();

                    if (scrollPos >= sectionTop && scrollPos < sectionBottom) {
                        $('.navbar-nav .nav-link').removeClass('active');
                        link.addClass('active');
                    }
                }
            }
        });
    });

    // Navbar Background on Scroll
    $(window).on('scroll', function() {
        if ($(window).scrollTop() > 50) {
            $('.navbar').addClass('navbar-scrolled');
        } else {
            $('.navbar').removeClass('navbar-scrolled');
        }
    });

    // Search Button Functionality
    $('.search-btn').on('click', function(e) {
        e.preventDefault();

        // Create search modal if it doesn't exist
        if (!$('#searchModal').length) {
            const searchModal = `
                <div class="modal fade" id="searchModal" tabindex="-1">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="search-container">
                                    <input type="text" class="form-control search-input"
                                           placeholder="Search articles, media, services...">
                                    <button class="btn btn-primary search-submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                                <div class="search-suggestions mt-3">
                                    <p class="text-muted small">Popular searches:</p>
                                    <div class="suggestion-tags">
                                        <span class="badge bg-light text-dark">Digital Marketing</span>
                                        <span class="badge bg-light text-dark">Team Building</span>
                                        <span class="badge bg-light text-dark">Innovation</span>
                                        <span class="badge bg-light text-dark">Leadership</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            `;
            $('body').append(searchModal);
        }

        $('#searchModal').modal('show');
    });

    // Article Click Handler
    $('.article-item').on('click', function() {
        const title = $(this).find('.article-title').text();

        // Animate click feedback
        $(this).css('transform', 'scale(0.98)');
        setTimeout(() => {
            $(this).css('transform', 'scale(1)');
        }, 200);

        // Show loading state
        const originalContent = $(this).html();
        $(this).addClass('loading');

        // Simulate navigation to article page
        setTimeout(() => {
            console.log('Navigating to article:', title);
            // window.location.href = '#article-' + title.toLowerCase().replace(/\s+/g, '-');
        }, 500);
    });

    // Hover Effects for Articles
    $('.article-item').hover(
        function() {
            $(this).find('.article-thumbnail img').css('transform', 'scale(1.1)');
        },
        function() {
            $(this).find('.article-thumbnail img').css('transform', 'scale(1)');
        }
    );

    // Login Button Animation
    $('.login-btn').on('mouseenter', function() {
        $(this).addClass('pulse');
    }).on('mouseleave', function() {
        $(this).removeClass('pulse');
    });

    // Social Links Animation
    $('.social-link').hover(
        function() {
            $(this).addClass('animate__animated animate__pulse');
        },
        function() {
            $(this).removeClass('animate__animated animate__pulse');
        }
    );

    // Load More Articles Functionality
    function addLoadMoreButton() {
        const loadMoreBtn = `
            <div class="text-center mt-4">
                <button class="btn btn-outline-primary load-more-btn">
                    Load More Articles
                    <i class="fas fa-chevron-down ms-2"></i>
                </button>
            </div>
        `;

        if (!$('.load-more-btn').length) {
            $('.articles-list').after(loadMoreBtn);
        }
    }

    // Initialize Load More
    addLoadMoreButton();

    // Load More Click Handler
    $(document).on('click', '.load-more-btn', function() {
        const btn = $(this);
        const originalText = btn.html();

        // Show loading state
        btn.html('<span class="spinner-border spinner-border-sm me-2"></span>Loading...')
            .prop('disabled', true);

        // Simulate loading new articles
        setTimeout(() => {
            const newArticles = [
                {
                    image: 'https://images.unsplash.com/photo-1522202176988-66273c2fd55f?w=150&h=100&fit=crop',
                    title: 'Building successful remote teams',
                    excerpt: 'Best practices for managing and collaborating with distributed teams across the globe.'
                },
                {
                    image: 'https://images.unsplash.com/photo-1551651653-c5186eb686a3?w=150&h=100&fit=crop',
                    title: 'The power of content marketing',
                    excerpt: 'How to create compelling content that drives engagement and conversions.'
                }
            ];

            newArticles.forEach((article, index) => {
                const articleHtml = `
                    <article class="article-item" style="display: none;">
                        <div class="article-thumbnail">
                            <img src="${article.image}" alt="${article.title}">
                        </div>
                        <div class="article-content">
                            <h3 class="article-title">${article.title}</h3>
                            <p class="article-excerpt">${article.excerpt}</p>
                        </div>
                    </article>
                `;

                $('.articles-list').append(articleHtml);

                // Animate new articles
                setTimeout(() => {
                    $('.article-item:hidden').slideDown(400);
                }, index * 100);
            });

            // Reset button
            btn.html(originalText).prop('disabled', false);

            // Reinitialize click handlers for new articles
            initializeArticleHandlers();

        }, 1500);
    });

    // Initialize Article Handlers
    function initializeArticleHandlers() {
        $('.article-item').off('click').on('click', function() {
            const title = $(this).find('.article-title').text();
            console.log('Article clicked:', title);
        });
    }

    // Testimonial Carousel (if multiple testimonials)
    function initTestimonialCarousel() {
        let currentTestimonial = 0;
        const testimonials = $('.testimonial-card');

        if (testimonials.length > 1) {
            setInterval(() => {
                testimonials.eq(currentTestimonial).fadeOut(400, function() {
                    currentTestimonial = (currentTestimonial + 1) % testimonials.length;
                    testimonials.eq(currentTestimonial).fadeIn(400);
                });
            }, 5000);
        }
    }

    // Parallax Effect for Hero Section
    $(window).on('scroll', function() {
        const scrolled = $(window).scrollTop();
        const parallaxSpeed = 0.5;

        $('.hero-section').css('background-position-y', -(scrolled * parallaxSpeed) + 'px');
    });

    // Add CSS for additional effects
    const additionalStyles = `
        <style>
            .navbar-scrolled {
                box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
                padding: 0.75rem 0 !important;
                transition: all 0.3s ease;
            }

            .pulse {
                animation: pulse 0.5s ease;
            }

            @keyframes pulse {
                0%, 100% { transform: scale(1); }
                50% { transform: scale(1.05); }
            }

            .article-item.loading {
                opacity: 0.6;
                pointer-events: none;
            }

            .search-container {
                display: flex;
                gap: 10px;
            }

            .search-input {
                flex: 1;
                padding: 12px;
                border-radius: 8px;
                border: 2px solid #e7e7e7;
            }

            .search-submit {
                padding: 12px 20px;
                border-radius: 8px;
            }

            .suggestion-tags {
                display: flex;
                gap: 8px;
                flex-wrap: wrap;
            }

            .suggestion-tags .badge {
                padding: 8px 12px;
                cursor: pointer;
                transition: all 0.3s ease;
            }

            .suggestion-tags .badge:hover {
                background: var(--secondary-color) !important;
                color: white !important;
            }
        </style>
    `;

    $('head').append(additionalStyles);

    // Counter Animation for Statistics (if needed)
    function animateCounters() {
        $('.counter').each(function() {
            const target = parseInt($(this).data('target'));
            const duration = 2000;
            const increment = target / (duration / 16);
            let current = 0;

            const timer = setInterval(() => {
                current += increment;
                if (current >= target) {
                    current = target;
                    clearInterval(timer);
                }
                $(this).text(Math.floor(current));
            }, 16);
        });
    }

    // Check if element is in viewport
    function isInViewport(element) {
        const rect = element[0].getBoundingClientRect();
        return (
            rect.top >= 0 &&
            rect.left >= 0 &&
            rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
            rect.right <= (window.innerWidth || document.documentElement.clientWidth)
        );
    }

    // Trigger animations when elements come into view
    $(window).on('scroll', function() {
        $('.animate-on-scroll').each(function() {
            if (isInViewport($(this))) {
                $(this).addClass('animated');
            }
        });
    });

    // Mobile Menu Enhancement
    $('.navbar-toggler').on('click', function() {
        $(this).toggleClass('active');
    });

    // Form Validation (for future forms)
    function validateForm(form) {
        let isValid = true;

        form.find('[required]').each(function() {
            if (!$(this).val()) {
                $(this).addClass('is-invalid');
                isValid = false;
            } else {
                $(this).removeClass('is-invalid');
            }
        });

        return isValid;
    }

    // Initialize everything
    function init() {
        initializeArticleHandlers();
        initTestimonialCarousel();

        // Add smooth reveal animation to sections
        $('.principles-section, .articles-section, .marketing-section, .testimonial-section').addClass('animate-on-scroll');
    }

    // Call initialization
    init();

    // Debug mode (can be removed in production)
    if (window.location.hash === '#debug') {
        console.log('Media Page JavaScript Loaded Successfully');
        console.log('Articles found:', $('.article-item').length);
        console.log('AOS initialized');
    }

});