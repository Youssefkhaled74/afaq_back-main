<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Design Process for Beginners - Article Details</title>
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
            background: #f8f9fa;
            color: #333;
            line-height: 1.6;
        }

        /* Main Container */
        .article-container {
            max-width: 800px;
            margin: 40px auto;
            padding: 0 20px;
            animation: fadeIn 0.6s ease;
        }

        /* Article Card */
        .article-card {
            background: white;
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
            margin-bottom: 30px;
        }

        /* Article Header */
        .article-header {
            margin-bottom: 30px;
            padding-bottom: 30px;
            border-bottom: 1px solid #e9ecef;
        }

        .article-title {
            font-size: 32px;
            font-weight: 700;
            color: #1a1a1a;
            margin-bottom: 25px;
            line-height: 1.3;
            animation: slideDown 0.6s ease;
        }

        .article-text {
            color: #555;
            font-size: 16px;
            line-height: 1.8;
            margin-bottom: 20px;
            animation: fadeIn 0.8s ease 0.2s both;
        }

        /* Author Section */
        .author-section {
            display: flex;
            align-items: center;
            gap: 20px;
            padding: 30px 0;
            border-bottom: 1px solid #e9ecef;
            animation: slideUp 0.6s ease 0.3s both;
        }

        .author-avatar {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid #f0f0f0;
        }

        .author-info {
            flex: 1;
        }

        .author-name {
            font-size: 18px;
            font-weight: 600;
            color: #1a1a1a;
            margin-bottom: 5px;
            text-decoration: none;
            display: inline-block;
        }

        .author-name:hover {
            color: #667eea;
        }

        .author-bio {
            color: #666;
            font-size: 14px;
            line-height: 1.6;
        }

        /* Social Share Section */
        .share-section {
            padding: 25px 0;
            border-bottom: 1px solid #e9ecef;
            animation: fadeIn 0.6s ease 0.4s both;
        }

        .share-buttons {
            display: flex;
            gap: 10px;
            align-items: center;
            flex-wrap: wrap;
        }

        .share-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 8px 16px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
            transition: all 0.3s ease;
            border: 1px solid #e0e0e0;
            background: white;
            color: #555;
        }

        .share-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .share-btn i {
            margin-right: 6px;
            font-size: 16px;
        }

        .share-btn.linkedin {
            background: #0077b5;
            color: white;
            border-color: #0077b5;
        }

        .share-btn.linkedin:hover {
            background: #006399;
            border-color: #006399;
        }

        .share-btn.twitter {
            background: #1da1f2;
            color: white;
            border-color: #1da1f2;
        }

        .share-btn.twitter:hover {
            background: #1a8cd8;
            border-color: #1a8cd8;
        }

        .share-btn.whatsapp {
            background: #25d366;
            color: white;
            border-color: #25d366;
        }

        .share-btn.whatsapp:hover {
            background: #20c05c;
            border-color: #20c05c;
        }

        .share-btn.facebook {
            background: #1877f2;
            color: white;
            border-color: #1877f2;
        }

        .share-btn.facebook:hover {
            background: #1564d0;
            border-color: #1564d0;
        }

        .share-btn.email {
            background: #ea4335;
            color: white;
            border-color: #ea4335;
        }

        .share-btn.email:hover {
            background: #d33b2c;
            border-color: #d33b2c;
        }

        .share-btn.print {
            background: #6c757d;
            color: white;
            border-color: #6c757d;
        }

        .share-btn.print:hover {
            background: #5a6268;
            border-color: #5a6268;
        }

        /* Share Buttons Row - Icon Only Style */
        .share-buttons-row {
            display: flex;
            gap: 8px;
            align-items: center;
        }

        .share-icon-btn {
            width: 36px;
            height: 36px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            text-decoration: none;
            font-size: 16px;
            transition: all 0.3s ease;
            border: 1px solid #e0e0e0;
            background: white;
            color: #666;
        }

        .share-icon-btn:hover {
            transform: translateY(-3px) scale(1.1);
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .share-icon-btn.linkedin {
            background: #0077b5;
            color: white;
            border-color: #0077b5;
        }

        .share-icon-btn.linkedin:hover {
            background: #006399;
            border-color: #006399;
        }

        .share-icon-btn.twitter {
            background: #1da1f2;
            color: white;
            border-color: #1da1f2;
        }

        .share-icon-btn.twitter:hover {
            background: #1a8cd8;
            border-color: #1a8cd8;
        }

        .share-icon-btn.whatsapp {
            background: #25d366;
            color: white;
            border-color: #25d366;
        }

        .share-icon-btn.whatsapp:hover {
            background: #20c05c;
            border-color: #20c05c;
        }

        .share-icon-btn.facebook {
            background: #1877f2;
            color: white;
            border-color: #1877f2;
        }

        .share-icon-btn.facebook:hover {
            background: #1564d0;
            border-color: #1564d0;
        }

        .share-icon-btn.email {
            background: #ea4335;
            color: white;
            border-color: #ea4335;
        }

        .share-icon-btn.email:hover {
            background: #d33b2c;
            border-color: #d33b2c;
        }

        .share-icon-btn.print {
            background: #6c757d;
            color: white;
            border-color: #6c757d;
        }

        .share-icon-btn.print:hover {
            background: #5a6268;
            border-color: #5a6268;
        }

        /* Secondary Publish Button */
        .publish-btn-secondary {
            background: #5a6c7d !important;
        }

        .publish-btn-secondary:hover {
            background: #4a5b6c !important;
        }

        /* Comments Section */
        .comments-section {
            background: white;
            border-radius: 12px;
            padding: 35px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
            animation: slideUp 0.6s ease 0.5s both;
        }

        .comments-header {
            font-size: 22px;
            font-weight: 600;
            color: #1a1a1a;
            margin-bottom: 25px;
        }

        /* Comment Form */
        .comment-form {
            margin-bottom: 35px;
            padding-bottom: 35px;
            border-bottom: 2px solid #e9ecef;
        }

        .comment-input-wrapper {
            position: relative;
            margin-bottom: 15px;
        }

        .comment-textarea {
            width: 100%;
            padding: 15px;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            font-size: 15px;
            resize: vertical;
            min-height: 100px;
            font-family: inherit;
            transition: all 0.3s ease;
        }

        .comment-textarea:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        .comment-textarea::placeholder {
            color: #999;
        }

        .form-actions {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            gap: 10px;
        }

        .attach-btn {
            background: none;
            border: none;
            color: #666;
            font-size: 20px;
            cursor: pointer;
            padding: 5px;
            transition: color 0.3s ease;
        }

        .attach-btn:hover {
            color: #667eea;
        }

        .publish-btn {
            padding: 10px 25px;
            background: #5a6c7d;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .publish-btn:hover {
            background: #4a5b6c;
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(90, 108, 125, 0.3);
        }

        /* Comment Item */
        .comment-item {
            display: flex;
            gap: 15px;
            margin-bottom: 30px;
            animation: fadeIn 0.6s ease;
        }

        .comment-item:last-child {
            margin-bottom: 0;
        }

        .comment-avatar {
            width: 45px;
            height: 45px;
            border-radius: 50%;
            object-fit: cover;
            flex-shrink: 0;
        }

        .comment-content {
            flex: 1;
        }

        .comment-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 8px;
        }

        .comment-author-info {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .comment-author {
            font-weight: 600;
            color: #1a1a1a;
            font-size: 15px;
        }

        .comment-time {
            color: #999;
            font-size: 13px;
        }

        .comment-menu {
            background: none;
            border: none;
            color: #999;
            font-size: 18px;
            cursor: pointer;
            padding: 0;
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            transition: all 0.3s ease;
        }

        .comment-menu:hover {
            background: #f0f0f0;
            color: #666;
        }

        .comment-text {
            color: #555;
            font-size: 14px;
            line-height: 1.6;
        }

        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .article-container {
                padding: 0 15px;
            }

            .article-card,
            .comments-section {
                padding: 25px;
            }

            .article-title {
                font-size: 26px;
            }

            .share-buttons {
                gap: 8px;
            }

            .share-btn {
                padding: 6px 12px;
                font-size: 13px;
            }

            .author-avatar {
                width: 50px;
                height: 50px;
            }
        }

        @media (max-width: 576px) {
            .article-card,
            .comments-section {
                padding: 20px;
                border-radius: 8px;
            }

            .article-title {
                font-size: 22px;
            }

            .share-btn {
                padding: 6px 10px;
                font-size: 12px;
            }

            .share-btn i {
                margin-right: 4px;
                font-size: 14px;
            }

            .comment-textarea {
                padding: 12px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="article-container">
        <!-- Article Content Card -->
        <div class="article-card">
            <div class="article-header">
                <h1 class="article-title">Design Process for Beginners</h1>

                <p class="article-text">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.
                </p>

                <p class="article-text">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>

            <!-- Author Section -->
            <div class="author-section">
                <img src="https://i.pravatar.cc/150?img=49" alt="Asmaa Ebrahem" class="author-avatar">
                <div class="author-info">
                    <a href="#" class="author-name">Asmaa Ebrahem</a>
                    <p class="author-bio">Nicole Lombard is an award-winning business editor and publisher with over two decades of experience developing content for blue-chip companies, magazines and online platforms.</p>
                </div>
            </div>

            <!-- Social Share Section -->
            <div class="share-section">
                <div class="share-buttons">
                    <a href="#" class="share-btn linkedin">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a href="#" class="share-btn twitter">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="share-btn whatsapp">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                    <a href="#" class="share-btn facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="share-btn email">
                        <i class="fas fa-envelope"></i>
                    </a>
                    <a href="#" class="share-btn print" onclick="window.print(); return false;">
                        <i class="fas fa-print"></i>
                    </a>
                </div>
            </div>
        </div>

        <!-- Comments Section -->
        <div class="comments-section">
            <h2 class="comments-header">Comments</h2>

            <!-- Comment Form -->
            <div class="comment-form">
                <div class="comment-input-wrapper">
                    <textarea class="comment-textarea" placeholder="Type your comment here"></textarea>
                </div>
                <div class="form-actions">
                    <button class="attach-btn" title="Attach file">
                        <i class="fas fa-paperclip"></i>
                    </button>
                    <button class="publish-btn">Publish</button>
                </div>
            </div>

            <!-- Comments List -->
            <div class="comments-list">
                <!-- Comment 1 -->
                <div class="comment-item">
                    <img src="https://i.pravatar.cc/150?img=3" alt="John Selese" class="comment-avatar">
                    <div class="comment-content">
                        <div class="comment-header">
                            <div class="comment-author-info">
                                <span class="comment-author">John Selese</span>
                                <span class="comment-time">added a comment 23 hours ago</span>
                            </div>
                            <button class="comment-menu">
                                <i class="fas fa-ellipsis-h"></i>
                            </button>
                        </div>
                        <p class="comment-text">Hey Sophey Paul, what are the further steps to be taken?</p>
                    </div>
                </div>

                <!-- Comment 2 -->
                <div class="comment-item">
                    <img src="https://i.pravatar.cc/150?img=8" alt="John Selese" class="comment-avatar">
                    <div class="comment-content">
                        <div class="comment-header">
                            <div class="comment-author-info">
                                <span class="comment-author">John Selese</span>
                                <span class="comment-time">added a comment 23 hours ago</span>
                            </div>
                            <button class="comment-menu">
                                <i class="fas fa-ellipsis-h"></i>
                            </button>
                        </div>
                        <p class="comment-text">Hey Sophey Paul, what are the further steps to be taken?</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Additional Article Section -->
        <div class="article-card" style="margin-top: 30px;">
            <div class="article-header">
                <h1 class="article-title">Design Process for Beginners</h1>

                <p class="article-text">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.
                </p>

                <p class="article-text">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>

            <!-- Author Section -->
            <div class="author-section">
                <img src="https://i.pravatar.cc/150?img=49" alt="Asmaa Ebrahem" class="author-avatar">
                <div class="author-info">
                    <a href="#" class="author-name">Asmaa Ebrahem</a>
                    <p class="author-bio">Nicole Lombard is an award-winning business editor and publisher with over two decades of experience developing content for blue-chip companies, magazines and online platforms.</p>
                </div>
            </div>

            <!-- Social Share Section with Icons Only -->
            <div class="share-section">
                <div class="share-buttons-row">
                    <a href="#" class="share-icon-btn linkedin" title="Share on LinkedIn">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a href="#" class="share-icon-btn twitter" title="Share on Twitter">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="share-icon-btn whatsapp" title="Share on WhatsApp">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                    <a href="#" class="share-icon-btn facebook" title="Share on Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="share-icon-btn email" title="Share via Email">
                        <i class="fas fa-envelope"></i>
                    </a>
                    <a href="#" class="share-icon-btn print" title="Print" onclick="window.print(); return false;">
                        <i class="fas fa-print"></i>
                    </a>
                </div>
            </div>
        </div>

        <!-- Bottom Comments Section -->
        <div class="comments-section" style="margin-top: 30px;">
            <h2 class="comments-header">Comments</h2>

            <!-- Comment Form -->
            <div class="comment-form">
                <div class="comment-input-wrapper">
                    <textarea class="comment-textarea" placeholder="Type your comment here"></textarea>
                </div>
                <div class="form-actions">
                    <button class="attach-btn" title="Attach file">
                        <i class="fas fa-paperclip"></i>
                    </button>
                    <button class="publish-btn publish-btn-secondary">Publish</button>
                </div>
            </div>

            <!-- Comments List -->
            <div class="comments-list">
                <!-- Comment 1 -->
                <div class="comment-item">
                    <img src="https://i.pravatar.cc/150?img=11" alt="John Selese" class="comment-avatar">
                    <div class="comment-content">
                        <div class="comment-header">
                            <div class="comment-author-info">
                                <span class="comment-author">John Selese</span>
                                <span class="comment-time">added a comment 23 hours ago</span>
                            </div>
                            <button class="comment-menu">
                                <i class="fas fa-ellipsis-h"></i>
                            </button>
                        </div>
                        <p class="comment-text">Hey Sophey Paul, what are the further steps to be taken?</p>
                    </div>
                </div>

                <!-- Comment 2 -->
                <div class="comment-item">
                    <img src="https://i.pravatar.cc/150?img=12" alt="John Selese" class="comment-avatar">
                    <div class="comment-content">
                        <div class="comment-header">
                            <div class="comment-author-info">
                                <span class="comment-author">John Selese</span>
                                <span class="comment-time">added a comment 23 hours ago</span>
                            </div>
                            <button class="comment-menu">
                                <i class="fas fa-ellipsis-h"></i>
                            </button>
                        </div>
                        <p class="comment-text">Hey Sophey Paul, what are the further steps to be taken?</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Handle publish buttons for both comment sections
        document.querySelectorAll('.publish-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                const commentForm = this.closest('.comment-form');
                const textarea = commentForm.querySelector('.comment-textarea');
                const commentText = textarea.value.trim();

                if (commentText) {
                    // Find the comments list in the same section
                    const commentsSection = this.closest('.comments-section');
                    const commentsList = commentsSection.querySelector('.comments-list');
                    const newComment = createComment(commentText);
                    commentsList.insertBefore(newComment, commentsList.firstChild);

                    // Clear textarea
                    textarea.value = '';

                    // Add animation
                    newComment.style.animation = 'slideUp 0.5s ease';
                }
            });
        });

        // Create new comment element
        function createComment(text) {
            const commentDiv = document.createElement('div');
            commentDiv.className = 'comment-item';

            const now = new Date();
            const timeString = 'just now';

            commentDiv.innerHTML = `
                <img src="https://i.pravatar.cc/150?img=1" alt="You" class="comment-avatar">
                <div class="comment-content">
                    <div class="comment-header">
                        <div class="comment-author-info">
                            <span class="comment-author">You</span>
                            <span class="comment-time">added a comment ${timeString}</span>
                        </div>
                        <button class="comment-menu">
                            <i class="fas fa-ellipsis-h"></i>
                        </button>
                    </div>
                    <p class="comment-text">${text}</p>
                </div>
            `;

            return commentDiv;
        }

        // Handle social share buttons (both styles)
        document.querySelectorAll('.share-btn, .share-icon-btn').forEach(btn => {
            btn.addEventListener('click', function(e) {
                if (!this.classList.contains('print')) {
                    e.preventDefault();

                    const currentURL = window.location.href;
                    const title = document.querySelector('.article-title').textContent;
                    let shareURL = '';

                    if (this.classList.contains('linkedin')) {
                        shareURL = `https://www.linkedin.com/sharing/share-offsite/?url=${encodeURIComponent(currentURL)}`;
                    } else if (this.classList.contains('twitter')) {
                        shareURL = `https://twitter.com/intent/tweet?url=${encodeURIComponent(currentURL)}&text=${encodeURIComponent(title)}`;
                    } else if (this.classList.contains('facebook')) {
                        shareURL = `https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(currentURL)}`;
                    } else if (this.classList.contains('whatsapp')) {
                        shareURL = `https://wa.me/?text=${encodeURIComponent(title + ' ' + currentURL)}`;
                    } else if (this.classList.contains('email')) {
                        shareURL = `mailto:?subject=${encodeURIComponent(title)}&body=${encodeURIComponent('Check out this article: ' + currentURL)}`;
                        window.location.href = shareURL;
                        return;
                    }

                    if (shareURL) {
                        window.open(shareURL, '_blank');
                    }
                }
            });
        });

        // Handle comment menu buttons
        document.addEventListener('click', function(e) {
            if (e.target.closest('.comment-menu')) {
                e.preventDefault();
                // Add dropdown menu functionality here
                console.log('Menu clicked');
            }
        });

        // Handle file attachment
        document.querySelector('.attach-btn').addEventListener('click', function() {
            const input = document.createElement('input');
            input.type = 'file';
            input.accept = 'image/*,.pdf,.doc,.docx';
            input.onchange = function(e) {
                const file = e.target.files[0];
                if (file) {
                    console.log('File selected:', file.name);
                    // Handle file upload here
                }
            };
            input.click();
        });

        // Auto-resize all textareas
        document.querySelectorAll('.comment-textarea').forEach(textarea => {
            textarea.addEventListener('input', function() {
                this.style.height = 'auto';
                this.style.height = (this.scrollHeight) + 'px';
            });
        });
    </script>
</body>
</html>