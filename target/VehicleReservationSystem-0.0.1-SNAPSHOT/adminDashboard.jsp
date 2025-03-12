<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</head>
<body class="bg-light text-dark">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="ViewCarsServlet">Manage Cars</a></li>
                <li class="nav-item"><a class="nav-link" href="ViewDriversServlet">Manage Drivers</a></li>
                <li class="nav-item"><a class="nav-link" href="viewUsers.jsp">Manage Users</a></li>
                <li class="nav-item"><a class="nav-link" href="ViewBookingsServlet">Manage Bookings</a></li>
                <li class="nav-item"><a class="nav-link btn btn-danger text-white" href="logout.jsp">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container my-5">
    <!-- Welcome Section -->
    <div class="card mb-4">
        <div class="card-body text-left">
            <h4>Welcome to the MegaCityCabs Admin!</h4>
        </div>
    </div>

    <!-- Quick Actions Buttons -->
    <div class="row g-3">
        <!-- Manage Cars -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-body text-center">
                    <i class="bi bi-car-front fs-2"></i>
                    <h3>Manage Cars</h3>
                    <a href="addCar.jsp" class="btn btn-primary w-100">Add Car</a>
                    <a href="ViewCarsServlet" class="btn btn-secondary w-100 mt-2">View Cars</a>
                </div>
            </div>
        </div>

        <!-- Manage Drivers -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-body text-center">
                    <i class="bi bi-person-badge fs-2"></i>
                    <h3>Manage Drivers</h3>
                    <a href="addDriver.jsp" class="btn btn-primary w-100">Add Driver</a>
                    <a href="ViewDriversServlet" class="btn btn-secondary w-100 mt-2">View Drivers</a>
                </div>
            </div>
        </div>

        <!-- Manage Users -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-body text-center">
                    <i class="bi bi-people fs-2"></i>
                    <h3>Manage Users</h3>
                    <a href="viewUsers.jsp" class="btn btn-primary w-100">View Users</a>
                </div>
            </div>
        </div>

        <!-- Manage Bookings -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-body text-center">
                    <i class="bi bi-calendar-check fs-2"></i>
                    <h3>Manage Bookings</h3>
                    <a href="ViewBookingsServlet" class="btn btn-primary w-100">View Bookings</a>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>