<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.reservation.models.Driver" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Drivers</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <!-- Page Title -->
    <h1 class="text-center mb-4 text-primary">List of Drivers</h1>

    <!-- Table Container -->
    <div class="card shadow">
        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                <tr>
                    <th>Driver Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>License Number</th>
                    <th>License Plate</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="driver" items="${requestScope.drivers}">
                    <tr>
                        <td>${driver.driverName}</td>
                        <td>${driver.driverPhone}</td>
                        <td>${driver.driverEmail}</td>
                        <td>${driver.licenseNumber}</td>
                        <td>${driver.licensePlate}</td>
                        <td>
                                    <span class="badge ${driver.status == 'Available' ? 'bg-success' : 'bg-danger'}">
                                            ${driver.status}
                                    </span>
                        </td>
                        <td>
                            <form action="DeleteDriverServlet" method="post" class="d-inline">
                                <input type="hidden" name="licenseNumber" value="${driver.licenseNumber}">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Back to Dashboard Button -->
    <div class="text-center mt-4">
        <a href="adminDashboard.jsp" class="btn btn-secondary">Back to Dashboard</a>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>