// ========================================
//  Main JavaScript File - AFAQ Website
// ========================================

$(document).ready(function() {

    // ========================================
    //  Initialize AOS Animation
    // ========================================
    AOS.init({
        duration: 1000,
        once: true,
        offset: 100,
        easing: 'ease-in-out'
    });

    // ========================================
    //  Sticky Header on Scroll
    // ========================================
    $(window).scroll(function() {
        if ($(this).scrollTop() > 50) {
            $('.header').addClass('scrolled');
        } else {
            $('.header').removeClass('scrolled');
        }
    });

    // ========================================
    //  Smooth Scrolling for Anchor Links
    // ========================================
    $('a[href^="#"]').on('click', function(event) {
        event.preventDefault();
        const target = $(this.getAttribute('href'));
        if (target.length) {
            $('html, body').animate({
                scrollTop: target.offset().top - 80
            }, 1000, 'swing');
        }
    });

    // ========================================
    //  Dropdown Menu Hover Effect
    // ========================================
    $('.dropdown').hover(
        function() {
            $(this).find('.dropdown-menu').stop(true, true).delay(100).fadeIn(300);
        },
        function() {
            $(this).find('.dropdown-menu').stop(true, true).delay(100).fadeOut(300);
        }
    );

    // ========================================
    //  Hero Section Parallax Effect
    // ========================================
    $(window).scroll(function() {
        const scrolled = $(window).scrollTop();
        $('.hero-section').css('transform', 'translateY(' + scrolled * 0.5 + 'px)');
        $('.hero-content').css('transform', 'translateY(' + scrolled * -0.3 + 'px)');
    });

    // ========================================
    //  Service Cards Hover Animation
    // ========================================
    $('.service-card').hover(
        function() {
            $(this).find('.service-icon').addClass('animate__animated animate__rotateIn');
        },
        function() {
            $(this).find('.service-icon').removeClass('animate__animated animate__rotateIn');
        }
    );

    // ========================================
    //  Counter Animation on Scroll
    // ========================================
    let counterAnimated = false;
    $(window).scroll(function() {
        const counters = $('.counter');
        if (counters.length > 0) {
            const counterTop = counters.offset().top - window.innerHeight;
            if (!counterAnimated && $(window).scrollTop() > counterTop) {
                counterAnimated = true;
                $('.counter').each(function() {
                    const $this = $(this);
                    const countTo = $this.attr('data-count');
                    $({ countNum: $this.text() }).animate(
                        { countNum: countTo },
                        {
                            duration: 2000,
                            easing: 'linear',
                            step: function() {
                                $this.text(Math.floor(this.countNum));
                            },
                            complete: function() {
                                $this.text(this.countNum);
                            }
                        }
                    );
                });
            }
        }
    });

    // ========================================
    //  Blog/Media Tab Switching
    // ========================================
    $('.blog-tab').on('click', function() {
        $('.blog-tab').removeClass('active');
        $(this).addClass('active');

        const category = $(this).data('category');

        if (category === 'all') {
            $('.blog-item').fadeIn(400);
        } else {
            $('.blog-item').fadeOut(400);
            $(`.blog-item[data-category="${category}"]`).fadeIn(400);
        }
    });

    // ========================================
    //  Newsletter Form Submission
    // ========================================
    $('.newsletter-form').on('submit', function(e) {
        e.preventDefault();
        const email = $(this).find('input[type="email"]').val();

        // Add loading state
        const btn = $(this).find('button[type="submit"]');
        const originalText = btn.text();
        btn.text('Sending...').prop('disabled', true);

        // Simulate API call
        setTimeout(() => {
            // Show success message
            Swal.fire({
                icon: 'success',
                title: 'Success!',
                text: 'You have successfully subscribed to our newsletter!',
                confirmButtonColor: '#1e3a5f'
            });

            // Reset form
            $(this).find('input[type="email"]').val('');
            btn.text(originalText).prop('disabled', false);
        }, 1500);
    });

    // ========================================
    //  Search Functionality
    // ========================================
    $('.btn-search').on('click', function() {
        Swal.fire({
            title: 'Search',
            input: 'text',
            inputPlaceholder: 'Enter your search query...',
            showCancelButton: true,
            confirmButtonColor: '#1e3a5f',
            confirmButtonText: 'Search',
            showLoaderOnConfirm: true,
            preConfirm: (query) => {
                // Simulate search
                return new Promise((resolve) => {
                    setTimeout(() => {
                        resolve(query);
                    }, 1000);
                });
            }
        }).then((result) => {
            if (result.isConfirmed && result.value) {
                // Handle search results
                console.log('Searching for:', result.value);
            }
        });
    });

    // ========================================
    //  Scroll to Top Button
    // ========================================
    $(window).scroll(function() {
        if ($(this).scrollTop() > 300) {
            $('.scroll-top').addClass('show');
        } else {
            $('.scroll-top').removeClass('show');
        }
    });

    $('.scroll-top').on('click', function() {
        $('html, body').animate({ scrollTop: 0 }, 600);
        return false;
    });

    // Add scroll-top button to page
    if ($('.scroll-top').length === 0) {
        $('body').append('<div class="scroll-top"><i class="fas fa-chevron-up"></i></div>');
    }

    // ========================================
    //  Form Validation
    // ========================================
    $('.needs-validation').on('submit', function(event) {
        if (this.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
        }
        $(this).addClass('was-validated');
    });

    // ========================================
    //  Password Toggle
    // ========================================
    $('.password-toggle').on('click', function() {
        const input = $(this).siblings('input');
        const icon = $(this).find('i');

        if (input.attr('type') === 'password') {
            input.attr('type', 'text');
            icon.removeClass('fa-eye').addClass('fa-eye-slash');
        } else {
            input.attr('type', 'password');
            icon.removeClass('fa-eye-slash').addClass('fa-eye');
        }
    });

    // ========================================
    //  Floating Cards Animation
    // ========================================
    setInterval(() => {
        $('.floating-card').each(function(index) {
            const delay = index * 200;
            setTimeout(() => {
                $(this).addClass('pulse');
                setTimeout(() => {
                    $(this).removeClass('pulse');
                }, 1000);
            }, delay);
        });
    }, 5000);

    // ========================================
    //  Course Cards Hover Effect
    // ========================================
    $('.course-card').hover(
        function() {
            $(this).find('.course-image').css('transform', 'scale(1.1)');
        },
        function() {
            $(this).find('.course-image').css('transform', 'scale(1)');
        }
    );

    // ========================================
    //  Article Cards Stagger Animation
    // ========================================
    $(window).on('scroll', function() {
        $('.article-item').each(function(index) {
            const elementTop = $(this).offset().top;
            const elementBottom = elementTop + $(this).outerHeight();
            const viewportTop = $(window).scrollTop();
            const viewportBottom = viewportTop + $(window).height();

            if (elementBottom > viewportTop && elementTop < viewportBottom) {
                setTimeout(() => {
                    $(this).addClass('fade-in');
                }, index * 100);
            }
        });
    });

    // ========================================
    //  Loading Screen
    // ========================================
    $(window).on('load', function() {
        $('.loader').fadeOut('slow', function() {
            $(this).remove();
        });
    });

    // Add loader if it doesn't exist
    if ($('.loader').length === 0) {
        $('body').prepend('<div class="loader"><div class="loader-spinner"></div></div>');
    }

    // ========================================
    //  Lazy Loading Images
    // ========================================
    const lazyImages = document.querySelectorAll('img[data-src]');
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.removeAttribute('data-src');
                imageObserver.unobserve(img);
            }
        });
    });

    lazyImages.forEach(img => imageObserver.observe(img));

    // ========================================
    //  Dynamic Year in Footer
    // ========================================
    const currentYear = new Date().getFullYear();
    $('.footer').find('p:contains("Copyright")').html(`Copyright ${currentYear}@ all right`);

    // ========================================
    //  Mobile Menu Toggle
    // ========================================
    $('.navbar-toggler').on('click', function() {
        $(this).toggleClass('active');
    });

    // Close mobile menu when clicking outside
    $(document).on('click', function(event) {
        const clickover = $(event.target);
        const navbar = $('.navbar-collapse');
        const opened = navbar.hasClass('show');
        if (opened && !clickover.hasClass('navbar-toggler')) {
            $('.navbar-toggler').click();
        }
    });

    // ========================================
    //  Text Typing Animation
    // ========================================
    function typeWriter(element, text, speed = 100) {
        let i = 0;
        const typing = setInterval(() => {
            if (i < text.length) {
                element.text(element.text() + text.charAt(i));
                i++;
            } else {
                clearInterval(typing);
            }
        }, speed);
    }

    // Apply to hero title if needed
    if ($('.hero-title').data('typing')) {
        const title = $('.hero-title');
        const text = title.text();
        title.text('');
        typeWriter(title, text, 50);
    }

    // ========================================
    //  Ripple Effect on Buttons
    // ========================================
    $('.btn').on('click', function(e) {
        const ripple = $('<span class="ripple"></span>');
        $(this).append(ripple);

        const x = e.pageX - $(this).offset().left;
        const y = e.pageY - $(this).offset().top;

        ripple.css({
            left: x + 'px',
            top: y + 'px'
        });

        setTimeout(() => {
            ripple.remove();
        }, 600);
    });

    // ========================================
    //  Social Share Buttons
    // ========================================
    $('.share-button').on('click', function() {
        const platform = $(this).data('platform');
        const url = encodeURIComponent(window.location.href);
        const title = encodeURIComponent(document.title);
        let shareUrl;

        switch(platform) {
            case 'facebook':
                shareUrl = `https://www.facebook.com/sharer/sharer.php?u=${url}`;
                break;
            case 'twitter':
                shareUrl = `https://twitter.com/intent/tweet?url=${url}&text=${title}`;
                break;
            case 'linkedin':
                shareUrl = `https://www.linkedin.com/shareArticle?mini=true&url=${url}&title=${title}`;
                break;
        }

        if (shareUrl) {
            window.open(shareUrl, '_blank', 'width=600,height=400');
        }
    });

    // ========================================
    //  Initialize Tooltips
    // ========================================
    $('[data-bs-toggle="tooltip"]').tooltip();

    // ========================================
    //  Initialize Popovers
    // ========================================
    $('[data-bs-toggle="popover"]').popover();

    // ========================================
    //  Custom Cursor Effect (Optional)
    // ========================================
    if ($(window).width() > 991) {
        const cursor = $('<div class="custom-cursor"></div>');
        $('body').append(cursor);

        $(document).on('mousemove', function(e) {
            cursor.css({
                left: e.pageX - 10,
                top: e.pageY - 10
            });
        });

        $('a, button').on('mouseenter', function() {
            cursor.addClass('hover');
        }).on('mouseleave', function() {
            cursor.removeClass('hover');
        });
    }

    // ========================================
    //  Page Transition Effects
    // ========================================
    $('a:not([href^="#"]):not([target="_blank"])').on('click', function(e) {
        if ($(this).attr('href') && !$(this).hasClass('no-transition')) {
            e.preventDefault();
            const href = $(this).attr('href');

            $('body').fadeOut(300, function() {
                window.location = href;
            });
        }
    });

    // ========================================
    //  Initialize SweetAlert2 for better alerts
    // ========================================
    window.Swal = window.Swal || {
        fire: function(options) {
            alert(options.text || options.title || 'Alert');
        }
    };

});

// ========================================
//  Utility Functions
// ========================================

// Debounce function for scroll events
function debounce(func, wait, immediate) {
    let timeout;
    return function() {
        const context = this, args = arguments;
        const later = function() {
            timeout = null;
            if (!immediate) func.apply(context, args);
        };
        const callNow = immediate && !timeout;
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
        if (callNow) func.apply(context, args);
    };
}

// Throttle function for performance
function throttle(func, limit) {
    let inThrottle;
    return function() {
        const args = arguments;
        const context = this;
        if (!inThrottle) {
            func.apply(context, args);
            inThrottle = true;
            setTimeout(() => inThrottle = false, limit);
        }
    };
}

// Check if element is in viewport
function isInViewport(element) {
    const rect = element.getBoundingClientRect();
    return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
        rect.right <= (window.innerWidth || document.documentElement.clientWidth)
    );
}

// ========================================
//  Export functions for external use
// ========================================
window.AFAQUtils = {
    debounce: debounce,
    throttle: throttle,
    isInViewport: isInViewport
};