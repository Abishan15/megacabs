<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="d-flex align-items-center justify-content-center vh-100 bg-light">
<div class="text-center p-4 shadow-lg rounded bg-white w-25">
    <h1 class="fw-bold text-dark">Login</h1>

    <!-- Error message if exists -->
    <%
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
    <p class="text-danger"><%= errorMessage %></p>
    <% } %>

    <!-- Login Form -->
    <form action="LoginServlet" method="post" class="mt-3">
        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" class="form-control" name="email" required>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password:</label>
            <input type="password" class="form-control" name="password" required>
        </div>

        <button type="submit" class="btn btn-primary w-100">Login</button>
    </form>

    <!-- Sign Up link -->
    <p class="mt-3">Don't have an account? <a href="signup.jsp" class="text-primary">Sign Up</a></p>

    <p class="mt-3">Login as Admin? <a href="admin.jsp" class="text-primary">Admin Login</a></p>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
