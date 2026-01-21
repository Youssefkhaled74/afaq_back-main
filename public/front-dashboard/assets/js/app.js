/**
 * Tasks Management Application
 * JavaScript functionality for tasks page
 */

$(document).ready(function() {
    'use strict';

    // Initialize tooltips
    initializeTooltips();

    // Handle tab switching
    handleTabSwitching();

    // Handle comment buttons
    handleCommentButtons();

    // Handle back home button
    handleBackHomeButton();

    // Initialize table interactions
    initializeTableInteractions();

    // Handle modal interactions
    handleModalInteractions();

    // Chart functionality removed - using static HTML/CSS chart

    // Make sure Tasks tab is active by default
    $('#tasks-tab').addClass('active');
    $('#tasks').addClass('show active');
    $('#control-tab').removeClass('active');
    $('#control').removeClass('show active');
});

/**
 * Initialize Bootstrap tooltips
 */
function initializeTooltips() {
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl);
    });
}

/**
 * Handle tab switching with animation
 */
function handleTabSwitching() {
    $('.nav-link').on('click', function(e) {
        // Add smooth transition effect
        $('.tab-pane').removeClass('show');

        setTimeout(function() {
            // Update active state
            $('.nav-link').removeClass('active');
            $(e.currentTarget).addClass('active');
        }, 150);

        // Store active tab in localStorage
        var tabId = $(this).attr('id');
        localStorage.setItem('activeTab', tabId);

        // Log tab switch for analytics (if needed)
        console.log('Switched to tab:', tabId);
    });

    // Restore last active tab on page load
    var lastActiveTab = localStorage.getItem('activeTab');
    if (lastActiveTab) {
        $('#' + lastActiveTab).click();
    }
}

/**
 * Handle comment button interactions
 */
function handleCommentButtons() {
    $('.btn-icon').on('click', function(e) {
        e.preventDefault();

        // Get row data
        var row = $(this).closest('tr');
        var taskNumber = row.find('td:first').text();
        var taskName = row.find('td:nth-child(2)').text();

        // Update modal with context
        $('#commentModal .modal-title').text('Add Comment - Task #' + taskNumber);

        // Add context to modal body if task name exists
        if (taskName.trim()) {
            var contextHtml = '<div class="alert alert-info mb-3">' +
                             '<strong>Task:</strong> ' + taskName +
                             '</div>';

            if (!$('#commentModal .modal-body .alert').length) {
                $('#commentModal .modal-body').prepend(contextHtml);
            } else {
                $('#commentModal .modal-body .alert').html(contextHtml);
            }
        }

        // Store task number for later use
        $('#commentModal').data('taskNumber', taskNumber);

        // Add animation to button
        $(this).addClass('animate-click');
        setTimeout(function() {
            $('.btn-icon').removeClass('animate-click');
        }, 300);
    });
}

/**
 * Handle back home button
 */
function handleBackHomeButton() {
    $('.btn-back-home').on('click', function(e) {
        // Add loading state
        $(this).html('<i class="fas fa-spinner fa-spin"></i> Loading...');
        $(this).prop('disabled', true);

        // Navigate after small delay for effect
        setTimeout(function() {
            window.location.href = 'home';
        }, 500);
    });
}

/**
 * Initialize table interactions
 */
function initializeTableInteractions() {
    // Add hover effect to table rows - simplified
    $('.custom-table tbody tr').hover(
        function() {
            $(this).css('background-color', '#f0f4f8');
        },
        function() {
            $(this).css('background-color', '');
        }
    );

    // Removed complex selection functionality
    // Table is now static without selection
}

/**
 * Add select all functionality
 */
function addSelectAllFunctionality() {
    // Removed checkbox functionality - no checkbox in header

    // Handle keyboard select all (Ctrl+A) only
    // Already handled in keyboard shortcuts section
}

// Selection count functionality removed - table is now static

/**
 * Handle modal interactions
 */
function handleModalInteractions() {
    // Save comment button
    $('#commentModal .btn-primary').on('click', function() {
        var comment = $('#commentText').val();
        var taskNumber = $('#commentModal').data('taskNumber');

        if (comment.trim()) {
            // Show loading state
            $(this).html('<i class="fas fa-spinner fa-spin"></i> Saving...');
            $(this).prop('disabled', true);

            // Simulate save operation
            setTimeout(function() {
                // Show success message
                showNotification('Comment saved successfully!', 'success');

                // Clear form and close modal
                $('#commentText').val('');
                $('#commentModal').modal('hide');

                // Reset button
                $('#commentModal .btn-primary').html('Save Comment');
                $('#commentModal .btn-primary').prop('disabled', false);

                // Update comment icon to show it has comments
                $('.custom-table tbody tr').each(function() {
                    if ($(this).find('td:first').text() == taskNumber) {
                        $(this).find('.btn-icon i').addClass('text-primary');
                    }
                });
            }, 1000);
        } else {
            showNotification('Please enter a comment', 'warning');
        }
    });

    // Clear form when modal is hidden
    $('#commentModal').on('hidden.bs.modal', function() {
        $('#commentText').val('');
        $('.modal-body .alert').remove();
    });

    // Auto-resize textarea
    $('#commentText').on('input', function() {
        this.style.height = 'auto';
        this.style.height = (this.scrollHeight) + 'px';
    });
}

/**
 * Show notification message
 */
function showNotification(message, type) {
    var alertClass = 'alert-' + type;
    var iconClass = type === 'success' ? 'fa-check-circle' :
                   type === 'warning' ? 'fa-exclamation-triangle' :
                   'fa-info-circle';

    var notificationHtml = '<div class="notification-toast alert ' + alertClass + ' alert-dismissible fade show">' +
                          '<i class="fas ' + iconClass + '"></i> ' + message +
                          '<button type="button" class="btn-close" data-bs-dismiss="alert"></button>' +
                          '</div>';

    // Remove existing notifications
    $('.notification-toast').remove();

    // Add new notification
    $('body').append(notificationHtml);

    // Position notification
    $('.notification-toast').css({
        position: 'fixed',
        top: '20px',
        right: '20px',
        zIndex: 9999,
        minWidth: '300px',
        animation: 'slideInRight 0.5s ease'
    });

    // Auto-hide after 3 seconds
    setTimeout(function() {
        $('.notification-toast').fadeOut(function() {
            $(this).remove();
        });
    }, 3000);
}

/**
 * Add keyboard shortcuts
 */
$(document).on('keydown', function(e) {
    // Ctrl/Cmd + H to go home
    if ((e.ctrlKey || e.metaKey) && e.key === 'h') {
        e.preventDefault();
        $('.btn-back-home').click();
    }
});

// Add minimal custom styles
var customStyles = `
<style>
    .text-primary {
        color: #1e3a6f !important;
    }
</style>
`;

// Append custom styles to head
$('head').append(customStyles);

// Chart.js functionality has been removed - using static HTML/CSS chart instead

// Log initialization complete
console.log('Tasks Management Application initialized successfully');

// Export functions for testing/debugging
window.tasksApp = {
    showNotification: showNotification,
    initializeTooltips: initializeTooltips
};