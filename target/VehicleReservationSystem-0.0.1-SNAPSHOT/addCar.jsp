<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Car</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <!-- Title -->
    <h1 class="text-center mb-4 bg-white p-3 rounded shadow">Add Car Details</h1>

    <!-- Form Container -->
    <div class="row justify-content-center">
        <div class="col-md-8">
            <form action="AddCarServlet" method="post" class="bg-white p-4 rounded shadow">
                <!-- Row 1: Car Model and Car Type -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="carModel" class="form-label">Car Model:</label>
                        <input type="text" class="form-control" name="carModel" required>
                    </div>
                    <div class="col-md-6">
                        <label for="carType" class="form-label">Car Type:</label>
                        <select class="form-select" name="carType" required>
                            <option value="Sedan">Sedan</option>
                            <option value="SUV">SUV</option>
                            <option value="Hatchback">Hatchback</option>
                            <option value="Coupe">Coupe</option>
                            <option value="Convertible">Convertible</option>
                            <option value="Van">Van</option>
                            <option value="Pickup">Pickup</option>
                        </select>
                    </div>
                </div>

                <!-- Row 2: License Plate and Year -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="licensePlate" class="form-label">License Plate:</label>
                        <input type="text" class="form-control" name="licensePlate" required>
                    </div>
                    <div class="col-md-6">
                        <label for="year" class="form-label">Year:</label>
                        <input type="number" class="form-control" name="year" required>
                    </div>
                </div>

                <!-- Row 3: Status -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="status" class="form-label">Status:</label>
                        <select class="form-select" name="status" required>
                            <option value="Available">Available</option>
                            <option value="Unavailable">Unavailable</option>
                        </select>
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="row">
                    <div class="col-md-12 text-center">
                        <button type="submit" class="btn btn-primary w-50">Add Car</button>
                    </div>
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