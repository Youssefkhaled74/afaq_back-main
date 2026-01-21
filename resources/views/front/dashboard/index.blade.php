@extends('layouts.front-dashboard.home')

<!-- title page -->
@section('title')
    <title>AFAQ</title>
@endsection

<!-- custom page -->
@section('css')
<style></style>
@endsection

@section('content')

    <!-- Main Container -->
    <div class="main-container">
        <!-- Logo Section -->
        <div class="logo-section">
            <h1 class="logo-text">AFAQ</h1>
        </div>

        <!-- Tabs Navigation -->
        <ul class="nav nav-tabs custom-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="tasks-tab" data-bs-toggle="tab" data-bs-target="#tasks" type="button" role="tab" aria-controls="tasks" aria-selected="true">
                    Tasks
                </button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="control-tab" data-bs-toggle="tab" data-bs-target="#control" type="button" role="tab" aria-controls="control" aria-selected="false">
                    Control Panel
                </button>
            </li>
        </ul>

        <!-- Content Card -->
        <div class="content-card">
            <!-- Tab Content -->
            <div class="tab-content" id="myTabContent">
                <!-- Tasks Tab -->
                <div class="tab-pane fade show active" id="tasks" role="tabpanel" aria-labelledby="tasks-tab">
                    <div class="table-container">
                        <table class="table custom-table">
                            <thead>
                                <tr>
                                    <th scope="col" class="text-center">Q</th>
                                    <th scope="col" class="text-center">Tasks</th>
                                    <th scope="col" class="text-center">Importance</th>
                                    <th scope="col" class="text-center">The Person in Charge</th>
                                    <th scope="col" class="text-center">Date</th>
                                    <th scope="col" class="text-center">Notification</th>
                                    <th scope="col" class="text-center">Achievement</th>
                                    <th scope="col" class="text-center">Comments</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">1</td>
                                    <td class="text-center">this is tasks and important</td>
                                    <td class="text-center">High</td>
                                    <td class="text-center">Asmax Ebrahim Mohamed</td>
                                    <td class="text-center">20/5/2025</td>
                                    <td class="text-center">Done</td>
                                    <td class="text-center">Done</td>
                                    <td class="text-center">
                                        <button class="btn-icon" data-bs-toggle="modal" data-bs-target="#commentModal">
                                            <i class="fas fa-comment"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">2</td>
                                    <td class="text-center">Complete project documentation</td>
                                    <td class="text-center">High</td>
                                    <td class="text-center">Asmax Ebrahim Mohamed</td>
                                    <td class="text-center">30/6/2025</td>
                                    <td class="text-center">Done</td>
                                    <td class="text-center">Done</td>
                                    <td class="text-center">
                                        <button class="btn-icon" data-bs-toggle="modal" data-bs-target="#commentModal">
                                            <i class="fas fa-comment"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">3</td>
                                    <td class="text-center">Review code changes</td>
                                    <td class="text-center">High</td>
                                    <td class="text-center">Asmax Ebrahim Mohamed</td>
                                    <td class="text-center">15/7/2025</td>
                                    <td class="text-center">Done</td>
                                    <td class="text-center">Done</td>
                                    <td class="text-center">
                                        <button class="btn-icon" data-bs-toggle="modal" data-bs-target="#commentModal">
                                            <i class="fas fa-comment"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">4</td>
                                    <td class="text-center">Update database schema</td>
                                    <td class="text-center">High</td>
                                    <td class="text-center">Ahmed Mohamed</td>
                                    <td class="text-center">25/7/2025</td>
                                    <td class="text-center">Pending</td>
                                    <td class="text-center">In Progress</td>
                                    <td class="text-center">
                                        <button class="btn-icon" data-bs-toggle="modal" data-bs-target="#commentModal">
                                            <i class="fas fa-comment"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center">5</td>
                                    <td class="text-center">Testing and QA</td>
                                    <td class="text-center">High</td>
                                    <td class="text-center">Sarah Ali</td>
                                    <td class="text-center">30/7/2025</td>
                                    <td class="text-center">Pending</td>
                                    <td class="text-center">Not Started</td>
                                    <td class="text-center">
                                        <button class="btn-icon" data-bs-toggle="modal" data-bs-target="#commentModal">
                                            <i class="fas fa-comment"></i>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Control Panel Tab -->
                <div class="tab-pane fade" id="control" role="tabpanel" aria-labelledby="control-tab">
                    <div class="control-panel-content">
                        <!-- Static Chart Container -->
                        <div class="chart-container-wrapper">
                            <div class="chart-header">
                                <h5 class="chart-title">Chart js Bar Chart</h5>
                                <div class="chart-legend">
                                    <span class="legend-item">
                                        <span class="legend-color" style="background-color: #5BC0DE;"></span>
                                        Dataset 1
                                    </span>
                                    <span class="legend-item">
                                        <span class="legend-color" style="background-color: #1e3a6f;"></span>
                                        Dataset 2
                                    </span>
                                </div>
                            </div>
                            <!-- Static Bar Chart -->
                            <div class="static-chart">
                                <div class="chart-y-axis">
                                    <span>1,000</span>
                                    <span>800</span>
                                    <span>600</span>
                                    <span>400</span>
                                    <span>200</span>
                                    <span>0</span>
                                </div>
                                <div class="chart-area">
                                    <div class="chart-grid">
                                        <div class="grid-line"></div>
                                        <div class="grid-line"></div>
                                        <div class="grid-line"></div>
                                        <div class="grid-line"></div>
                                        <div class="grid-line"></div>
                                    </div>
                                    <div class="bars-container">
                                        <div class="month-group">
                                            <div class="bar bar1" style="height: 40%;"></div>
                                            <div class="bar bar2" style="height: 42%;"></div>
                                        </div>
                                        <div class="month-group">
                                            <div class="bar bar1" style="height: 42%;"></div>
                                            <div class="bar bar2" style="height: 42%;"></div>
                                        </div>
                                        <div class="month-group">
                                            <div class="bar bar1" style="height: 40%;"></div>
                                            <div class="bar bar2" style="height: 60%;"></div>
                                        </div>
                                        <div class="month-group">
                                            <div class="bar bar1" style="height: 25%;"></div>
                                            <div class="bar bar2" style="height: 18%;"></div>
                                        </div>
                                        <div class="month-group">
                                            <div class="bar bar1" style="height: 20%;"></div>
                                            <div class="bar bar2" style="height: 43%;"></div>
                                        </div>
                                        <div class="month-group">
                                            <div class="bar bar1" style="height: 20%;"></div>
                                            <div class="bar bar2" style="height: 22%;"></div>
                                        </div>
                                        <div class="month-group">
                                            <div class="bar bar1" style="height: 50%;"></div>
                                            <div class="bar bar2" style="height: 30%;"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="chart-x-axis">
                                    <span>January</span>
                                    <span>February</span>
                                    <span>March</span>
                                    <span>April</span>
                                    <span>May</span>
                                    <span>June</span>
                                    <span>July</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Back to Home Button -->
        <div class="back-home-container">
            <button class="btn-back-home" onclick="window.location.href='/'">
                <i class="fas fa-arrow-left"></i> Back Home Page
            </button>
        </div>
    </div>
    <div class="modal fade" id="commentModal" tabindex="-1" aria-labelledby="commentModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="commentModalLabel">Add Comment</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="commentText" class="form-label">Your Comment</label>
                            <textarea class="form-control" id="commentText" rows="4" placeholder="Enter your comment here..."></textarea>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Save Comment</button>
                </div>
            </div>
        </div>
    </div>

@endsection

<!-- custom js -->
@section('script')
<script></script>
@endsection
