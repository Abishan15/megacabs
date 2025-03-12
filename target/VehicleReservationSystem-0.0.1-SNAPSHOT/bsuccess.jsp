<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Success</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <div class="card shadow-lg p-4">
        <h1 class="text-center text-success mb-4">Booking Successful!</h1>

        <!-- Booking Details -->
        <div class="mb-4">
            <h2>Booking Details</h2>
            <p class="mb-2"><strong>Order Number:</strong> <span class="text-primary">${param.orderNumber}</span></p>
            <p class="mb-2"><strong>Customer Name:</strong> ${param.name}</p>
            <p class="mb-2"><strong>Pickup Location:</strong> ${param.pickupLocation}</p>
            <p class="mb-2"><strong>Destination:</strong> ${param.destination}</p>
            <p class="mb-2"><strong>Vehicle Type:</strong> ${param.vehicleType}</p>
            <p class="mb-2"><strong>Date of Booking:</strong> ${param.date}</p>
            <p class="mb-2"><strong>Time of Booking:</strong> ${param.time}</p>
        </div>

        <!-- Fare Details -->
        <div class="mb-4">
            <h2>Fare Details</h2>
            <p class="mb-2"><strong>Fare:</strong> ${param.fare}</p>
            <p class="mb-2"><strong>Tax:</strong> ${param.tax}</p>
            <p class="mb-2"><strong>Total Fare:</strong> <span class="text-primary">${param.totalFare}</span></p>
        </div>

        <!-- Payment Details -->
        <div class="mb-4">
            <h2>Payment Details</h2>
            <p class="mb-2"><strong>Payment Method:</strong> <span class="text-primary">${param.paymentMethod}</span></p>
        </div>

        <!-- Driver and Vehicle Details -->
        <div class="mb-4">
            <h2>Driver and Vehicle Details</h2>
            <p class="mb-2"><strong>Car Model:</strong> ${param.carModel}</p>
            <p class="mb-2"><strong>Car License Plate:</strong> ${param.carLicensePlate}</p>
            <p class="mb-2"><strong>Driver Name:</strong> ${param.driverName}</p>
            <p class="mb-2"><strong>Driver Phone:</strong> ${param.driverPhone}</p>
        </div>

        <!-- Back to Dashboard Link -->
        <div class="text-center mb-4">
            <a href="user.jsp" class="btn btn-outline-primary">Back to Dashboard</a>
        </div>

        <!-- Print Bill Form -->
        <div class="text-center">
            <h3>Print Your Bill</h3>
            <form action="PrintBillServlet" method="get" class="d-inline-block">
                <div class="mb-3">
                    <label for="orderNumber" class="form-label">Enter your Booking Order Number:</label>
                    <input type="text" name="orderNumber" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary">Print Bill</button>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>