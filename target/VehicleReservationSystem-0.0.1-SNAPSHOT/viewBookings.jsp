<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookings List</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <!-- Page Title -->
    <h1 class="text-center mb-4 text-primary">Bookings List</h1>

    <!-- Table Container -->
    <div class="card shadow">
        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                <tr>
                    <th>Booking ID</th>
                    <th>Customer Name</th>
                    <th>Phone</th>
                    <th>Destination</th>
                    <th>Total Fare</th>
                    <th>Booking Date</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <%
                    ResultSet rs = (ResultSet) request.getAttribute("bookings");
                    try {
                        while (rs != null && rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt("booking_id") %></td>
                    <td><%= rs.getString("customer_name") %></td>
                    <td><%= rs.getString("phone") %></td>
                    <td><%= rs.getString("destination") %></td>
                    <td><%= rs.getDouble("total_fare") %></td>
                    <td><%= rs.getString("booking_date") %></td>
                    <td>
                        <a href="DeleteBookingServlet?bookingId=<%= rs.getInt("booking_id") %>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this booking?');">Delete</a>
                    </td>
                </tr>
                <%
                        }
                    } catch (SQLException e) {
                        out.println("Error retrieving data: " + e.getMessage());
                    } finally {
                        if (rs != null) {
                            try {
                                rs.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>