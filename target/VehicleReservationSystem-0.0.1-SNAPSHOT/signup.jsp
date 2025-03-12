<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-Up</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="d-flex align-items-center justify-content-center vh-100 bg-light">
<div class="text-center p-4 shadow-lg rounded bg-white w-50">
    <h1 class="fw-bold text-dark">Sign Up</h1>

    <!-- Sign Up Form -->
    <form action="CustomerServlet" method="post" class="mt-3">
        <div class="row mb-3">
            <div class="col-md-6">
                <label for="name" class="form-label">Name:</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="col-md-6">
                <label for="address" class="form-label">Address:</label>
                <input type="text" class="form-control" name="address" required>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-6">
                <label for="phone" class="form-label">Phone:</label>
                <input type="text" class="form-control" name="phone" pattern="[0-9]+" required>
            </div>
            <div class="col-md-6">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" name="email" required>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-6">
                <label for="nic" class="form-label">NIC:</label>
                <input type="text" class="form-control" name="nic" required>
            </div>
            <div class="col-md-6">
                <label for="password" class="form-label">Password:</label>
                <input type="password" class="form-control" name="password" required>
            </div>
        </div>
        <button type="submit" class="btn btn-primary btn-sm w-100">Sign Up</button>
    </form>

    <!-- Login link -->
    <p class="mt-3">Already have an account? <a href="login.jsp" class="text-primary">Login</a></p>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
