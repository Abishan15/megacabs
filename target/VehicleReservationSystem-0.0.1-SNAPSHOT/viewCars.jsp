<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.reservation.models.Car" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Cars</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <!-- Page Title -->
    <h1 class="text-center mb-4 text-primary">List of Cars</h1>

    <!-- Table Container -->
    <div class="card shadow">
        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                <tr>
                    <th>Car Model</th>
                    <th>Car Type</th>
                    <th>License Plate</th>
                    <th>Year</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="car" items="${requestScope.cars}">
                    <tr>
                        <td>${car.carModel}</td>
                        <td>${car.carType}</td>
                        <td>${car.licensePlate}</td>
                        <td>${car.year}</td>
                        <td>
                                    <span class="badge ${car.status == 'Available' ? 'bg-success' : 'bg-danger'}">
                                            ${car.status}
                                    </span>
                        </td>
                        <td>
                            <form action="DeleteCarServlet" method="post" class="d-inline">
                                <input type="hidden" name="licensePlate" value="${car.licensePlate}">
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