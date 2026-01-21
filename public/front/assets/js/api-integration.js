/**
 * AFAQ API Integration
 * This file connects the frontend with the Laravel backend API
 */

// API Configuration
const API_BASE_URL = 'http://localhost:8000/api/v1';

// Store auth token
let authToken = localStorage.getItem('auth_token');

// API Helper Functions
const ApiClient = {
    // Set auth token
    setAuthToken(token) {
        authToken = token;
        localStorage.setItem('auth_token', token);
    },

    // Remove auth token
    removeAuthToken() {
        authToken = null;
        localStorage.removeItem('auth_token');
    },

    // Make API request
    async request(endpoint, options = {}) {
        const url = `${API_BASE_URL}${endpoint}`;

        const config = {
            ...options,
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                ...options.headers,
            }
        };

        // Add auth token if available
        if (authToken) {
            config.headers['Authorization'] = `Bearer ${authToken}`;
        }

        try {
            const response = await fetch(url, config);
            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.message || 'API request failed');
            }

            return data;
        } catch (error) {
            console.error('API Error:', error);
            throw error;
        }
    },

    // GET request
    get(endpoint) {
        return this.request(endpoint, { method: 'GET' });
    },

    // POST request
    post(endpoint, data) {
        return this.request(endpoint, {
            method: 'POST',
            body: JSON.stringify(data)
        });
    },

    // PUT request
    put(endpoint, data) {
        return this.request(endpoint, {
            method: 'PUT',
            body: JSON.stringify(data)
        });
    },

    // DELETE request
    delete(endpoint) {
        return this.request(endpoint, { method: 'DELETE' });
    }
};

// Authentication Functions
const Auth = {
    // Login
    async login(email, password) {
        try {
            const response = await ApiClient.post('/login', { email, password });

            if (response.success && response.data.access_token) {
                ApiClient.setAuthToken(response.data.access_token);
                return response.data.user;
            }

            throw new Error('Login failed');
        } catch (error) {
            console.error('Login error:', error);
            throw error;
        }
    },

    // Register
    async register(userData) {
        try {
            const response = await ApiClient.post('/register', userData);

            if (response.success && response.data.access_token) {
                ApiClient.setAuthToken(response.data.access_token);
                return response.data.user;
            }

            throw new Error('Registration failed');
        } catch (error) {
            console.error('Registration error:', error);
            throw error;
        }
    },

    // Logout
    async logout() {
        try {
            await ApiClient.post('/logout');
            ApiClient.removeAuthToken();
            window.location.href = '/signin.html';
        } catch (error) {
            console.error('Logout error:', error);
            ApiClient.removeAuthToken();
            window.location.href = '/signin.html';
        }
    },

    // Get current user
    async getCurrentUser() {
        try {
            const response = await ApiClient.get('/user');
            return response.data;
        } catch (error) {
            console.error('Get user error:', error);
            return null;
        }
    },

    // Check if authenticated
    isAuthenticated() {
        return !!authToken;
    }
};

// Content API Functions
const ContentAPI = {
    // Get services
    async getServices(params = {}) {
        const queryString = new URLSearchParams(params).toString();
        const endpoint = `/services${queryString ? '?' + queryString : ''}`;
        return ApiClient.get(endpoint);
    },

    // Get single service
    async getService(slug) {
        return ApiClient.get(`/services/${slug}`);
    },

    // Get blog posts
    async getBlogPosts(params = {}) {
        const queryString = new URLSearchParams(params).toString();
        const endpoint = `/blog-posts${queryString ? '?' + queryString : ''}`;
        return ApiClient.get(endpoint);
    },

    // Get single blog post
    async getBlogPost(slug) {
        return ApiClient.get(`/blog-posts/${slug}`);
    },

    // Get courses
    async getCourses(params = {}) {
        const queryString = new URLSearchParams(params).toString();
        const endpoint = `/courses${queryString ? '?' + queryString : ''}`;
        return ApiClient.get(endpoint);
    },

    // Get single course
    async getCourse(slug) {
        return ApiClient.get(`/courses/${slug}`);
    },

    // Get media files
    async getMediaFiles(params = {}) {
        const queryString = new URLSearchParams(params).toString();
        const endpoint = `/media-files${queryString ? '?' + queryString : ''}`;
        return ApiClient.get(endpoint);
    },

    // Get single media file
    async getMediaFile(id) {
        return ApiClient.get(`/media-files/${id}`);
    },

    // Download media file
    async downloadMediaFile(id) {
        return ApiClient.get(`/media-files/${id}/download`);
    },

    // Get homepage data
    async getHomepageData() {
        return ApiClient.get('/homepage');
    },

    // Search content
    async search(query) {
        return ApiClient.get(`/search?q=${encodeURIComponent(query)}`);
    },

    // Subscribe to newsletter
    async subscribeNewsletter(email, name = null) {
        return ApiClient.post('/newsletter/subscribe', { email, name });
    }
};

// UI Update Functions
const UI = {
    // Load services on homepage
    async loadServices() {
        try {
            const response = await ContentAPI.getServices({ featured: true });
            const services = response.data;

            const servicesContainer = document.querySelector('.services-section .row');
            if (!servicesContainer) return;

            servicesContainer.innerHTML = '';

            services.forEach((service, index) => {
                const serviceCard = `
                    <div class="col-md-4" data-aos="fade-up" data-aos-delay="${(index + 1) * 100}">
                        <div class="service-card text-center">
                            <div class="service-icon mb-3">
                                <i class="${service.icon || 'fas fa-cogs'}"></i>
                            </div>
                            <h4 class="service-title">${service.title}</h4>
                            <p class="service-description">${service.description}</p>
                            <a href="services.html#${service.slug}" class="btn-more">more</a>
                        </div>
                    </div>
                `;
                servicesContainer.innerHTML += serviceCard;
            });
        } catch (error) {
            console.error('Error loading services:', error);
        }
    },

    // Load blog posts
    async loadBlogPosts(category = null) {
        try {
            const params = category ? { category } : { featured: true };
            const response = await ContentAPI.getBlogPosts(params);
            const posts = response.data.data || response.data;

            const postsContainer = document.querySelector('.blog-posts-container');
            if (!postsContainer) return;

            postsContainer.innerHTML = '';

            posts.forEach(post => {
                const postCard = `
                    <div class="blog-card blog-item" data-category="${post.category}">
                        <img src="${post.featured_image_url || 'https://via.placeholder.com/400x250'}" alt="${post.title}" class="blog-image">
                        <div class="blog-content">
                            <div class="blog-meta">
                                <span><i class="far fa-calendar"></i> ${new Date(post.published_at).toLocaleDateString()}</span>
                                <span class="ms-3"><i class="far fa-user"></i> ${post.author?.name || 'Admin'}</span>
                            </div>
                            <h3 class="blog-title">${post.title}</h3>
                            <p class="blog-excerpt">${post.excerpt}</p>
                            <a href="blog-detail.html?slug=${post.slug}" class="btn-more">Read More</a>
                        </div>
                    </div>
                `;
                postsContainer.innerHTML += postCard;
            });
        } catch (error) {
            console.error('Error loading blog posts:', error);
        }
    },

    // Load courses
    async loadCourses() {
        try {
            const response = await ContentAPI.getCourses({ featured: true });
            const courses = response.data.data || response.data;

            const coursesContainer = document.querySelector('.courses-container');
            if (!coursesContainer) return;

            coursesContainer.innerHTML = '';

            courses.forEach((course, index) => {
                const courseCard = `
                    <div class="col-md-4" data-aos="zoom-in" data-aos-delay="${(index + 1) * 100}">
                        <div class="course-card">
                            <img src="${course.thumbnail_url || 'https://via.placeholder.com/400x250'}" alt="${course.title}" class="course-image mb-3">
                            <div class="course-content">
                                <h5>${course.title}</h5>
                                <div class="course-meta">
                                    <span><i class="fas fa-users"></i> ${course.students_count} Students</span>
                                    <span class="ms-3"><i class="fas fa-star text-warning"></i> ${course.rating}</span>
                                </div>
                                <div class="mt-2">
                                    <span class="badge bg-primary">${course.level}</span>
                                    <span class="badge bg-success">${course.is_free ? 'Free' : '$' + course.price}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                `;
                coursesContainer.innerHTML += courseCard;
            });
        } catch (error) {
            console.error('Error loading courses:', error);
        }
    },

    // Load media files
    async loadMediaFiles(type = null) {
        try {
            const params = type ? { type } : {};
            const response = await ContentAPI.getMediaFiles(params);
            const files = response.data.data || response.data;

            const filesContainer = document.querySelector('.media-files-container');
            if (!filesContainer) return;

            filesContainer.innerHTML = '';

            files.forEach(file => {
                const fileCard = `
                    <div class="media-card" data-type="${file.type}">
                        <img src="${file.thumbnail_url || 'https://via.placeholder.com/300x200'}" alt="${file.title}" class="media-thumbnail">
                        <div class="media-content">
                            <h5>${file.title}</h5>
                            <p>${file.description || ''}</p>
                            <div class="media-meta">
                                <span><i class="fas fa-eye"></i> ${file.views} views</span>
                                <span class="ms-3"><i class="fas fa-download"></i> ${file.downloads} downloads</span>
                            </div>
                            <button class="btn btn-primary btn-sm mt-2" onclick="UI.downloadFile(${file.id})">
                                <i class="fas fa-download"></i> Download
                            </button>
                        </div>
                    </div>
                `;
                filesContainer.innerHTML += fileCard;
            });
        } catch (error) {
            console.error('Error loading media files:', error);
        }
    },

    // Download file
    async downloadFile(fileId) {
        try {
            const response = await ContentAPI.downloadMediaFile(fileId);
            if (response.data.download_url) {
                window.open(response.data.download_url, '_blank');
            }
        } catch (error) {
            console.error('Error downloading file:', error);
            alert('Error downloading file. Please try again.');
        }
    },

    // Handle newsletter subscription
    async subscribeNewsletter(event) {
        event.preventDefault();

        const form = event.target;
        const email = form.querySelector('input[type="email"]').value;
        const button = form.querySelector('button[type="submit"]');
        const originalText = button.textContent;

        button.textContent = 'Subscribing...';
        button.disabled = true;

        try {
            await ContentAPI.subscribeNewsletter(email);
            alert('Successfully subscribed to newsletter!');
            form.reset();
        } catch (error) {
            alert('Subscription failed. Please try again.');
        } finally {
            button.textContent = originalText;
            button.disabled = false;
        }
    }
};

// Initialize on page load
document.addEventListener('DOMContentLoaded', function() {
    // Check current page and load appropriate content
    const currentPage = window.location.pathname.split('/').pop();

    switch(currentPage) {
        case 'index.html':
        case '':
            UI.loadServices();
            UI.loadBlogPosts();
            UI.loadCourses();
            break;

        case 'services.html':
            UI.loadServices();
            break;

        case 'blog.html':
            UI.loadBlogPosts();
            break;

        case 'media.html':
            UI.loadMediaFiles();
            break;
    }

    // Attach newsletter form handler
    const newsletterForm = document.querySelector('.newsletter-form');
    if (newsletterForm) {
        newsletterForm.addEventListener('submit', UI.subscribeNewsletter);
    }

    // Handle login form
    const loginForm = document.querySelector('#loginForm');
    if (loginForm) {
        loginForm.addEventListener('submit', async (e) => {
            e.preventDefault();

            const email = document.querySelector('#email').value;
            const password = document.querySelector('#password').value;

            try {
                await Auth.login(email, password);
                window.location.href = '/admin';
            } catch (error) {
                alert('Login failed. Please check your credentials.');
            }
        });
    }

    // Handle register form
    const registerForm = document.querySelector('#registerForm');
    if (registerForm) {
        registerForm.addEventListener('submit', async (e) => {
            e.preventDefault();

            const userData = {
                name: document.querySelector('#fullName').value,
                email: document.querySelector('#email').value,
                phone: document.querySelector('#phone').value,
                password: document.querySelector('#password').value,
                password_confirmation: document.querySelector('#confirmPassword').value
            };

            try {
                await Auth.register(userData);
                window.location.href = '/';
            } catch (error) {
                alert('Registration failed. Please try again.');
            }
        });
    }

    // Check authentication status
    if (Auth.isAuthenticated()) {
        // Update UI for authenticated users
        const loginBtn = document.querySelector('.btn-login');
        if (loginBtn) {
            loginBtn.innerHTML = '<i class="fas fa-user me-2"></i>Dashboard';
            loginBtn.href = '/admin';
        }
    }
});

// Export for use in other scripts
window.AFAQ = {
    Auth,
    ContentAPI,
    ApiClient,
    UI
};