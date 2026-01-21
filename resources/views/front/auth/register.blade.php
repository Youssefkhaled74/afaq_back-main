<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - AFAQ</title>
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
            min-height: 100vh;
            overflow-x: hidden;
            overflow-y: auto;
            background: white;
            margin: 0;
            padding: 0;
        }

        .auth-container {
            position: relative;
            width: 100%;
            min-height: 100vh;
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
            font-size: 2rem;
            font-weight: bold;
            display: flex;
            align-items: center;
            gap: 8px;
            text-shadow: 0 2px 4px rgba(0,0,0,0.2);
        }

        .logo-dot {
            width: 10px;
            height: 10px;
            background: #00D4FF;
            border-radius: 50%;
        }

        /* Sign In Button */
        .signin-btn {
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

        .signin-btn:hover {
            background: white;
            color: #1E3A5F;
            border-color: white;
        }

        /* Register Card */
        .register-card-container {
            position: absolute;
            top: 54%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            max-width: 450px;
            z-index: 20;
            padding: 0 20px;
        }

        .register-card {
            background: white;
            padding: 40px;
            width: 100%;
            border-radius: 8px;
            box-shadow: 0 25px 60px rgba(0, 0, 0, 0.15);
            max-height: 85vh;
            overflow-y: auto;
        }

        .register-card h1 {
            color: #1a1a1a;
            font-size: 1.8rem;
            font-weight: 600;
            margin-bottom: 8px;
            text-align: center;
        }

        .auth-subtitle {
            color: #777;
            font-size: 0.875rem;
            text-align: center;
            margin-bottom: 35px;
        }

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-label {
            display: block;
            color: #777;
            font-size: 0.7rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 8px;
            font-weight: 600;
        }

        .form-control {
            width: 100%;
            padding: 12px 16px;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            font-size: 0.95rem;
            transition: all 0.3s ease;
            color: #333;
            background: #f8f9fa;
        }

        .form-control:focus {
            outline: none;
            border-color: #4285F4;
            background: white;
            box-shadow: 0 0 0 3px rgba(66, 133, 244, 0.1);
        }

        .form-control::placeholder {
            color: #bbb;
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

        /* Terms checkbox */
        .terms-section {
            margin: 20px 0 25px;
        }

        .terms-label {
            display: flex;
            align-items: flex-start;
            gap: 8px;
            color: #666;
            font-size: 0.875rem;
            cursor: pointer;
            line-height: 1.4;
        }

        .terms-label input[type="checkbox"] {
            width: 18px;
            height: 18px;
            accent-color: #1E3A5F;
            cursor: pointer;
            margin-top: 2px;
            flex-shrink: 0;
        }

        .terms-label a {
            color: #1E3A5F;
            text-decoration: none;
        }

        .terms-label a:hover {
            text-decoration: underline;
        }

        .btn-create {
            width: 100%;
            padding: 14px;
            background: #2C5282;
            color: white;
            border: none;
            font-size: 0.9rem;
            font-weight: 500;
            letter-spacing: 0.5px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            border-radius: 6px;
        }

        .btn-create:hover {
            background: #1e3a5f;
            transform: translateY(-1px);
            box-shadow: 0 5px 15px rgba(44, 82, 130, 0.3);
        }

        .btn-create:active {
            transform: translateY(0);
        }

        .btn-create:disabled {
            background: #667eea;
            cursor: not-allowed;
        }

        .divider {
            position: relative;
            text-align: center;
            margin: 30px 0 25px;
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

            .signin-btn {
                right: 30px;
                top: 30px;
                padding: 8px 20px;
            }

            .register-card-container {
                top: 50%;
                padding: 0 20px;
            }

            .register-card {
                padding: 35px 30px;
            }

            .register-card h1 {
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

            .signin-btn {
                padding: 6px 16px;
                font-size: 0.8rem;
            }

            .register-card-container {
                top: 48%;
            }

            .register-card {
                padding: 30px 20px;
                max-height: 80vh;
            }

            .register-card h1 {
                font-size: 1.4rem;
            }

            .auth-subtitle {
                font-size: 0.8rem;
                margin-bottom: 25px;
            }

            .form-group {
                margin-bottom: 15px;
            }

            .form-control {
                padding: 10px 14px;
            }
        }
    </style>
</head>
<body>
    <div class="auth-container">

        <div class="background-section"></div>
        <div class="diagonal-overlay"></div>
        <div class="logo-section">
            <a href="{{ route('home') }}" style="text-decoration: none;">
                <div class="logo">
                    AFAQ<span class="logo-dot"></span>
                </div>
            </a>
        </div>
        <a href="{{ route('login-form') }}" class="signin-btn">SIGN IN</a>
        <div class="register-card-container">
            <div class="register-card">
                <h1>Register to AFAQ</h1>
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

                <form id="registerForm" method="POST" action="{{ route('register') }}">
                    @csrf
                    <div class="form-group">
                        <label class="form-label">Full Name</label>
                        <input type="text" class="form-control" name="name" placeholder="John" value="{{ old('name') }}" required autofocus>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Email Address</label>
                        <input type="email" class="form-control" name="email" placeholder="johndoe@example.com" value="{{ old('email') }}" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Mobile Number</label>
                        <input type="tel" class="form-control" name="mobile" placeholder="01154424848" value="{{ old('mobile') }}" required>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Password</label>
                        <div class="password-wrapper">
                            <input type="password" class="form-control" id="password" name="password" placeholder="**********" required>
                            <button type="button" class="password-toggle" onclick="togglePassword('password', 'passwordIcon')">
                                <i class="fas fa-eye" id="passwordIcon"></i>
                            </button>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Confirm Password</label>
                        <div class="password-wrapper">
                            <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" placeholder="**********" required>
                            <button type="button" class="password-toggle" onclick="togglePassword('password_confirmation', 'confirmPasswordIcon')">
                                <i class="fas fa-eye" id="confirmPasswordIcon"></i>
                            </button>
                        </div>
                    </div>
                    <div class="terms-section">
                        <label class="terms-label">
                            <input type="checkbox" name="terms" required {{ old('terms') ? 'checked' : '' }}>
                            <span>I agree to the Terms of Service and Privacy Policy</span>
                        </label>
                    </div>
                    <button type="submit" class="btn-create">CREATE AN ACCOUNT</button>
                </form>
                <div class="divider">
                    <span>OR</span>
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
        function togglePassword(fieldId, iconId) {
            const passwordInput = document.getElementById(fieldId);
            const passwordIcon = document.getElementById(iconId);
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
            console.log('Signing up with ' + provider);
            if (provider === 'google') {
                // window.location.href = '/auth/google';
            } else if (provider === 'apple') {
                // window.location.href = '/auth/apple';
            }
        }

        document.getElementById('registerForm').addEventListener('submit', function(e) {
            const button = this.querySelector('.btn-create');
            const originalText = button.textContent;
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('password_confirmation').value;
            if (password !== confirmPassword) {
                e.preventDefault();
                alert('Passwords do not match!');
                return;
            }
            const termsChecked = this.querySelector('input[name="terms"]').checked;
            if (!termsChecked) {
                e.preventDefault();
                alert('Please accept the Terms of Service and Privacy Policy');
                return;
            }
            button.textContent = 'CREATING ACCOUNT...';
            button.disabled = true;
        });
    </script>
</body>
</html>