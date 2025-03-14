<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Your Booking</title>
    <!-- Bootstrap 5 & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <!-- Form Container -->
    <div class="card shadow">
        <div class="card-body">
            <h1 class="text-center mb-4">Manage Your Booking</h1>

            <!-- Display Success Message -->
            <% if (request.getAttribute("successMessage") != null) { %>
            <div class="alert alert-success"><%= request.getAttribute("successMessage") %></div>
            <% } %>

            <!-- Display Error Message -->
            <% if (request.getAttribute("errorMessage") != null) { %>
            <div class="alert alert-danger"><%= request.getAttribute("errorMessage") %></div>
            <% } %>

            <!-- Booking Management Form -->
            <form action="ManageBookingServlet" method="post" id="bookingForm">
                <div class="mb-3">
                    <label for="orderNumber" class="form-label">Enter Order Number:</label>
                    <input type="text" name="orderNumber" id="orderNumber" class="form-control" required>
                </div>

                <!-- Buttons -->
                <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                    <button type="submit" name="action" value="view" class="btn btn-primary">
                        <i class="bi bi-eye"></i> View Booking
                    </button>
                    <button type="submit" name="action" value="cancel" class="btn btn-danger">
                        <i class="bi bi-x-circle"></i> Cancel Booking
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS & Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>