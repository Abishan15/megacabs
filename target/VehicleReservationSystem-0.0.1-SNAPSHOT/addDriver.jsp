<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Driver</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <!-- Title -->
    <h1 class="text-center mb-4 bg-white p-3 rounded shadow">Add Driver Details</h1>

    <!-- Form Container -->
    <div class="row justify-content-center">
        <div class="col-md-8">
            <form action="AddDriverServlet" method="post" class="bg-white p-4 rounded shadow">
                <!-- Row 1: Driver Name and Driver Phone -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="driverName" class="form-label">Driver Name:</label>
                        <input type="text" class="form-control" name="driverName" required>
                    </div>
                    <div class="col-md-6">
                        <label for="driverPhone" class="form-label">Driver Phone:</label>
                        <input type="text" class="form-control" name="driverPhone" required>
                    </div>
                </div>

                <!-- Row 2: Driver Email and License Number -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="driverEmail" class="form-label">Driver Email:</label>
                        <input type="email" class="form-control" name="driverEmail" required>
                    </div>
                    <div class="col-md-6">
                        <label for="licenseNumber" class="form-label">Driver License Number:</label>
                        <input type="text" class="form-control" name="licenseNumber" required>
                    </div>
                </div>

                <!-- Row 3: Car License Plate -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="licensePlate" class="form-label">Car License Plate:</label>
                        <input type="text" class="form-control" name="licensePlate" required>
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="text-center">
                    <button type="submit" class="btn btn-primary w-50">Add Driver</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>