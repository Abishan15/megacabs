<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%
    ResultSet booking = (ResultSet) request.getAttribute("booking");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Details</title>

    <!-- Bootstrap 5 & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <div class="card shadow-lg p-4">
        <h1 class="text-center mb-4"><i class="bi bi-file-earmark-check"></i> Booking Details</h1>

        <!-- Booking Details -->
        <% if (booking != null) { %>
        <div class="mb-4">
            <p class="mb-2"><strong>Order Number:</strong> <span class="text-primary"><%= booking.getString("order_number") %></span></p>
            <p class="mb-2"><strong>Customer Name:</strong> <%= booking.getString("customer_name") %></p>
            <p class="mb-2"><strong>Pickup Location:</strong> <%= booking.getString("pickup_location") %></p>
            <p class="mb-2"><strong>Destination:</strong> <%= booking.getString("destination") %></p>
            <p class="mb-2"><strong>Date:</strong> <%= booking.getString("booking_date") %></p>
            <p class="mb-2"><strong>Time:</strong> <%= booking.getString("booking_time") %></p>
            <p class="mb-2"><strong>Total Fare:</strong> <span class="text-primary"><%= booking.getString("total_fare") %> LKR</span></p>
        </div>
        <% } else { %>
        <p class="text-danger">No booking found.</p>
        <% } %>

        <!-- Back to Management Button -->
        <div class="text-center">
            <a href="user.jsp" class="btn btn-primary"><i class="bi bi-arrow-left-circle"></i> Dashboard</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS & Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>