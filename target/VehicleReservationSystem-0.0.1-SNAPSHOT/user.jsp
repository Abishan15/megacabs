<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light text-dark">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="manageBooking.jsp">Manage Bookings</a></li>
                <li class="nav-item"><a class="nav-link" href="profile.jsp">Profile</a></li>
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
            <h4>Welcome, <%= session.getAttribute("userName") %></h4>
            <p><strong>Email:</strong> <%= session.getAttribute("userEmail") %></p>
            <p><strong>Phone:</strong> <%= session.getAttribute("userPhone") %></p>
        </div>
    </div>

    <!-- Quick Actions Buttons -->
    <div class="row g-3">
        <div class="col-md-6">
            <a href="newBooking.jsp" class="btn btn-primary w-100">Make a Booking</a>
        </div>
        <div class="col-md-6">
            <a href="manageBooking.jsp" class="btn btn-warning w-100">Manage Bookings</a>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>