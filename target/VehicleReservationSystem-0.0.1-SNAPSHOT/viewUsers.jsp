<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ page import="com.reservation.utils.DBConnection" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Users</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <!-- Page Title -->
    <h1 class="text-center mb-4 text-primary">Users List</h1>

    <!-- Table Container -->
    <div class="card shadow">
        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                <tr>
                    <th>Customer ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try {
                        Connection con = DBConnection.getConnection();  // Create connection
                        String sql = "SELECT customer_id, name, email, phone FROM Customers";
                        PreparedStatement ps = con.prepareStatement(sql);  // Prepare the query
                        ResultSet rs = ps.executeQuery();  // Execute the query

                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt("customer_id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("phone") %></td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();  // Handle exception
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Back to Admin Dashboard -->
    <div class="text-center mt-4">
        <a href="adminDashboard.jsp" class="btn btn-secondary">Back to Admin Dashboard</a>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>