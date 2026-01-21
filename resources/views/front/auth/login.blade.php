<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In - AFAQ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Helvetica Neue', Arial, sans-serif;
            height: 100vh;
            overflow: hidden;
            background: white;
        }

        .auth-container {
            position: relative;
            width: 100%;
            height: 100vh;
        }

        /* Background Image Section */
        .background-section {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 55%;
            background: url({{ asset('front/assets/images/8b53cd66b3f0320d7c58e5c2e68347e9a6012135.jpg') }}) center/cover no-repeat;
            z-index: 0;
        }

        .background-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.3);
        }

        /* Diagonal separator using pseudo element */
        .background-section::after {
            content: '';
            position: absolute;
            bottom: -1px;
            left: 0;
            width: 0;
            height: 0;
            border-style: solid;
            border-width: 0 0 180px 100vw;
            border-color: transparent transparent white transparent;
            z-index: 2;
        }

        /* Alternative diagonal separator for better browser support */
        .diagonal-overlay {
            position: absolute;
            top: 75%;
            left: 0;
            width: 110%;
            height: 180px;
            background: white;
            transform: translateY(-90px) skewY(-6deg);
            transform-origin: top left;
            z-index: 1;
        }

        /* Logo */
        .logo-section {
            position: absolute;
            top: 40px;
            left: 50px;
            z-index: 10;
        }

        .logo {
            color: white;
            font-size: 2.2rem;
            font-weight: bold;
            display: flex;
            align-items: center;
            gap: 10px;
            text-shadow: 0 2px 4px rgba(0,0,0,0.2);
        }

        .logo-dot {
            width: 12px;
            height: 12px;
            background: #00D4FF;
            border-radius: 50%;
        }

        /* Sign Up Button */
        .signup-btn {
            position: absolute;
            top: 40px;
            right: 50px;
            padding: 10px 28px;
            background: transparent;
            border: 1px solid rgba(255, 255, 255, 0.8);
            color: white;
            font-size: 0.875rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            border-radius: 4px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            z-index: 10;
        }

        .signup-btn:hover {
            background: white;
            color: #1E3A5F;
            border-color: white;
        }

        /* Login Card */
        .login-card-container {
            position: absolute;
            top: 54%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            max-width: 450px;
            z-index: 20;
        }

        .login-card {
            background: white;
            padding: 50px 45px;
            border-radius: 8px;
            box-shadow: 0 25px 60px rgba(0, 0, 0, 0.15);
        }

        .login-card h1 {
            color: #1a1a1a;
            font-size: 1.9rem;
            font-weight: 600;
            margin-bottom: 10px;
            text-align: center;
        }

        .auth-subtitle {
            color: #666;
            font-size: 0.9rem;
            text-align: center;
            margin-bottom: 35px;
        }

        .form-group {
            margin-bottom: 22px;
            position: relative;
        }

        .form-label {
            display: block;
            color: #666;
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 10px;
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: none;
            border-bottom: 1.5px solid #e0e0e0;
            font-size: 0.95rem;
            transition: all 0.3s ease;
            color: #333;
            background: transparent;
        }

        .form-control:focus {
            outline: none;
            border-bottom-color: #1E3A5F;
        }

        .form-control::placeholder {
            color: #aaa;
            font-size: 0.9rem;
        }

        .password-wrapper {
            position: relative;
        }

        .password-wrapper .form-control {
            padding-right: 40px;
        }

        .password-toggle {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            color: #999;
            transition: color 0.3s ease;
            background: none;
            border: none;
            padding: 5px;
        }

        .password-toggle:hover {
            color: #666;
        }

        .form-options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 25px 0 30px;
        }

        .remember-me {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #666;
            font-size: 0.875rem;
            cursor: pointer;
        }

        .remember-me input[type="checkbox"] {
            width: 18px;
            height: 18px;
            accent-color: #1E3A5F;
            cursor: pointer;
        }

        .forgot-password {
            color: #1E3A5F;
            font-size: 0.875rem;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .forgot-password:hover {
            color: #16304D;
            text-decoration: underline;
        }

        .btn-proceed {
            width: 100%;
            padding: 14px;
            background: #1E3A5F;
            color: white;
            border: none;
            font-size: 0.95rem;
            font-weight: 500;
            letter-spacing: 0.5px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            border-radius: 4px;
        }

        .btn-proceed:hover {
            background: #16304D;
            transform: translateY(-1px);
            box-shadow: 0 5px 15px rgba(30, 58, 95, 0.3);
        }

        .btn-proceed:active {
            transform: translateY(0);
        }

        .btn-proceed:disabled {
            background: #667eea;
            cursor: not-allowed;
        }

        .divider {
            position: relative;
            text-align: center;
            margin: 35px 0 30px;
        }

        .divider::before {
            content: '';
            position: absolute;
            left: 0;
            top: 50%;
            width: 100%;
            height: 1px;
            background: #e0e0e0;
        }

        .divider span {
            position: relative;
            background: white;
            padding: 0 15px;
            color: #999;
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .social-login {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .social-btn {
            width: 48px;
            height: 48px;
            border: 1px solid #e0e0e0;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s ease;
            background: white;
            text-decoration: none;
        }

        .social-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            border-color: #bbb;
        }

        .social-btn i {
            font-size: 20px;
        }

        .social-btn.google i {
            background: linear-gradient(45deg, #4285f4, #34a853, #fbbc05, #ea4335);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .social-btn.apple {
            color: #000;
        }

        /* Error messages */
        .error-message {
            color: #dc3545;
            font-size: 0.8rem;
            margin-top: 5px;
            display: block;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .background-section {
                height: 45%;
            }

            .background-section::after {
                border-width: 0 0 120px 100vw;
            }

            .diagonal-overlay {
                top: 45%;
                height: 120px;
                transform: translateY(-60px) skewY(-5deg);
            }

            .logo-section {
                left: 30px;
                top: 30px;
            }

            .signup-btn {
                right: 30px;
                top: 30px;
                padding: 8px 20px;
            }

            .login-card-container {
                padding: 0 20px;
                top: 50%;
            }

            .login-card {
                padding: 40px 30px;
            }

            .login-card h1 {
                font-size: 1.6rem;
            }
        }

        @media (max-width: 576px) {
            .background-section {
                height: 40%;
            }

            .background-section::after {
                border-width: 0 0 100px 100vw;
            }

            .diagonal-overlay {
                top: 40%;
                height: 100px;
                transform: translateY(-50px) skewY(-5deg);
            }

            .logo {
                font-size: 1.8rem;
            }

            .signup-btn {
                padding: 6px 16px;
                font-size: 0.8rem;
            }

            .login-card-container {
                top: 48%;
            }

            .login-card {
                padding: 35px 25px;
            }

            .login-card h1 {
                font-size: 1.4rem;
            }

            .auth-subtitle {
                font-size: 0.85rem;
            }
        }

        @media (max-height: 700px) {
            .login-card {
                padding: 35px 40px;
            }

            .form-group {
                margin-bottom: 18px;
            }

            .divider {
                margin: 25px 0 20px;
            }
        }
    </style>
</head>
<body>
    <div class="auth-container">
        <!-- Background Image Section -->
        <div class="background-section"></div>

        <!-- Diagonal Overlay -->
        <div class="diagonal-overlay"></div>

        <!-- Logo -->
        <div class="logo-section">
            <a href="{{ route('home') }}" style="text-decoration: none;">
                <div class="logo">
                    AFAQ<span class="logo-dot"></span>
                </div>
            </a>
        </div>

        <!-- Sign Up Button -->
        <a href="{{ route('register-form') }}" class="signup-btn">SIGN UP</a>

        <!-- Login Card -->
        <div class="login-card-container">
            <div class="login-card">
                <h1>Log In to AFAQ</h1>
                <p class="auth-subtitle">Quick & Simple way to Automate your payment</p>

                @include('flash::message')
                @if ($errors->any())
                    <div style="text-align: left; margin: 15px;">
                        <ul dir="ltr">
                            @foreach ($errors->all() as $error)
                                <li class="text-danger">{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form id="signinForm" method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="form-group">
                        <label class="form-label">Email Address</label>
                        <input type="email" class="form-control" name="email" placeholder="johndoe@example.com" value="{{ old('email') }}" required autofocus>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Password</label>
                        <div class="password-wrapper">
                            <input type="password" class="form-control" id="password" name="password" placeholder="**********" required>
                            <button type="button" class="password-toggle" onclick="togglePassword()">
                                <i class="fas fa-eye" id="passwordIcon"></i>
                            </button>
                        </div>
                    </div>
                    <div class="form-options">
                        <label class="remember-me">
                            <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>
                            <span>Remember Me</span>
                        </label>
                        <a href="#" class="forgot-password">Forgot Password?</a>
                    </div>
                    <button type="submit" class="btn-proceed">PROCEED</button>
                </form>

                <div class="divider">
                    <span>OR USE</span>
                </div>

                <div class="social-login">
                    <a href="#" class="social-btn google" onclick="socialLogin('google'); return false;">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="social-btn apple" onclick="socialLogin('apple'); return false;">
                        <i class="fab fa-apple"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script>
        function togglePassword() {
            const passwordInput = document.getElementById('password');
            const passwordIcon = document.getElementById('passwordIcon');

            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                passwordIcon.classList.remove('fa-eye');
                passwordIcon.classList.add('fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                passwordIcon.classList.remove('fa-eye-slash');
                passwordIcon.classList.add('fa-eye');
            }
        }

        function socialLogin(provider) {
            console.log('Logging in with ' + provider);
            // Add your social login logic here
            // For example: redirect to OAuth provider
            if (provider === 'google') {
                // window.location.href = '/auth/google';
            } else if (provider === 'apple') {
                // window.location.href = '/auth/apple';
            }
        }

        // Form validation and submission handling
        document.getElementById('signinForm').addEventListener('submit', function(e) {
            const button = this.querySelector('.btn-proceed');
            const originalText = button.textContent;

            // Show loading state
            button.textContent = 'PROCESSING...';
            button.disabled = true;
        });
    </script>
</body>
</html>