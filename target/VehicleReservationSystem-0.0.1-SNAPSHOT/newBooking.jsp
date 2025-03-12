<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Booking</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<!-- Main Container -->
<div class="container mt-5">
    <!-- Form Container -->
    <div class="card shadow">
        <div class="card-body">
            <h1 class="text-center mb-4 text-primary">New Booking</h1>

            <form action="BookingServlet" method="post">
                <!-- Customer Name -->
                <div class="mb-3">
                    <label for="name" class="form-label">Customer Name:</label>
                    <input type="text" name="name" class="form-control" required>
                </div>

                <!-- Address -->
                <div class="mb-3">
                    <label for="address" class="form-label">Address:</label>
                    <input type="text" name="address" class="form-control" required>
                </div>

                <!-- Phone -->
                <div class="mb-3">
                    <label for="phone" class="form-label">Telephone Number:</label>
                    <input type="text" name="phone" class="form-control" required>
                </div>

                <!-- Pickup Location -->
                <div class="mb-3">
                    <label for="pickupLocation" class="form-label">Pickup Location:</label>
                    <input type="text" name="pickupLocation" class="form-control" required>
                </div>

                <!-- Destination -->
                <div class="mb-3">
                    <label for="destination" class="form-label">Destination:</label>
                    <select id="destination" name="destination" class="form-control" onchange="calculateFare()" required>
                        <option value="">Select Destination</option>
                        <option value="Galle Road">Galle Road</option>
                        <option value="Duplication Road">Duplication Road</option>
                        <option value="Marine Drive">Marine Drive</option>
                        <option value="Union Place">Union Place</option>
                        <option value="Bauddhaloka Mawatha">Bauddhaloka Mawatha</option>
                        <option value="Baseline Road">Baseline Road</option>
                        <option value="Havelock Road">Havelock Road</option>
                        <option value="Nawala Road">Nawala Road</option>
                        <option value="Ward Place">Ward Place</option>
                        <option value="Park Road">Park Road</option>
                        <option value="Kollupitiya">Kollupitiya</option>
                        <option value="Bambalapitiya">Bambalapitiya</option>
                        <option value="Wellawatte">Wellawatte</option>
                        <option value="Dehiwala">Dehiwala</option>
                        <option value="Mount Lavinia">Mount Lavinia</option>
                        <option value="Thimbirigasyaya">Thimbirigasyaya</option>
                        <option value="Rajagiriya">Rajagiriya</option>
                        <option value="Battaramulla">Battaramulla</option>
                        <option value="Nugegoda">Nugegoda</option>
                        <option value="Kirulapone">Kirulapone</option>
                        <option value="Colombo Fort">Colombo Fort</option>
                        <option value="Pettah">Pettah</option>
                        <option value="Dematagoda">Dematagoda</option>
                        <option value="Orugodawatta">Orugodawatta</option>
                        <option value="Grandpass">Grandpass</option>
                        <option value="Borella">Borella</option>
                        <option value="Malabe">Malabe</option>
                        <option value="Koswatta">Koswatta</option>
                        <option value="Pelawatte">Pelawatte</option>
                        <option value="Hokandara">Hokandara</option>
                    </select>
                </div>

                <!-- Vehicle Type -->
                <div class="mb-3">
                    <label for="vehicleType" class="form-label">Vehicle Type:</label>
                    <select id="vehicleType" name="vehicleType" class="form-control" onchange="calculateFare()" required>
                        <option value="">Select Vehicle Type</option>
                        <option value="Sedan">Sedan</option>
                        <option value="SUV">SUV</option>
                        <option value="Hatchback">Hatchback</option>
                        <option value="Coupe">Coupe</option>
                        <option value="Convertible">Convertible</option>
                        <option value="Van">Van</option>
                        <option value="Truck">Pickup</option>
                    </select>
                </div>

                <!-- Date and Time -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="date" class="form-label">Date of Booking:</label>
                        <input type="date" name="date" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label for="time" class="form-label">Time of Booking:</label>
                        <input type="time" name="time" class="form-control" required>
                    </div>
                </div>

                <!-- Fare Details -->
                <div class="row mb-3">
                    <div class="col-md-4">
                        <label for="fare" class="form-label">Base Fare:</label>
                        <input type="text" id="fare" name="fare" class="form-control" readonly>
                    </div>
                    <div class="col-md-4">
                        <label for="tax" class="form-label">Tax (10%):</label>
                        <input type="text" id="tax" name="tax" class="form-control" readonly>
                    </div>
                    <div class="col-md-4">
                        <label for="totalFare" class="form-label">Total Fare:</label>
                        <input type="text" id="totalFare" name="totalFare" class="form-control" readonly>
                    </div>
                </div>

                <!-- Payment Method -->
                <div class="mb-3">
                    <h3>Select Payment Method:</h3>
                    <div class="form-check">
                        <input type="radio" name="paymentMethod" value="cash_on_ride" class="form-check-input" onclick="togglePaymentFields()" required>
                        <label class="form-check-label">Cash</label>
                    </div>
                    <div class="form-check">
                        <input type="radio" name="paymentMethod" value="debit_card" class="form-check-input" onclick="togglePaymentFields()">
                        <label class="form-check-label">Card</label>
                    </div>
                </div>

                <!-- Debit Card Details -->
                <div id="cardDetails" class="card p-3 mb-3" style="display: none;">
                    <h3>Debit Card Details</h3>
                    <div class="mb-3">
                        <label for="cardNumber" class="form-label">Card Number:</label>
                        <input type="text" name="cardNumber" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="cardHolder" class="form-label">Card Holder Name:</label>
                        <input type="text" name="cardHolder" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="expiryDate" class="form-label">Expiry Date:</label>
                        <input type="month" name="expiryDate" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="cvv" class="form-label">CVV:</label>
                        <input type="password" name="cvv" class="form-control">
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="text-center">
                    <button type="submit" class="btn btn-primary w-50">Book</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

<script>
    // Function to calculate fare based on destination and vehicle type
    function calculateFare() {
        var destination = document.getElementById("destination").value;
        var vehicleType = document.getElementById("vehicleType").value;
        var fare = 0;

        // Set fare based on Colombo city streets
        var fareMap = {
            "Galle Road": 500,
            "Duplication Road": 450,
            "Marine Drive": 480,
            "Union Place": 520,
            "Bauddhaloka Mawatha": 550,
            "Baseline Road": 420,
            "Havelock Road": 500,
            "Nawala Road": 490,
            "Ward Place": 570,
            "Park Road": 460,
            "Kollupitiya": 520,
            "Bambalapitiya": 510,
            "Wellawatte": 500,
            "Dehiwala": 530,
            "Mount Lavinia": 560,
            "Thimbirigasyaya": 480,
            "Rajagiriya": 550,
            "Battaramulla": 600,
            "Nugegoda": 500,
            "Kirulapone": 490,
            "Colombo Fort": 620,
            "Pettah": 580,
            "Dematagoda": 440,
            "Orugodawatta": 460,
            "Grandpass": 420,
            "Borella": 520,
            "Malabe": 650,
            "Koswatta": 610,
            "Pelawatte": 580,
            "Hokandara": 630
        };

        if (fareMap[destination]) {
            fare = fareMap[destination];
        } else {
            fare = 0; // Default if no destination selected
        }

        // Adjust fare based on vehicle type
        switch (vehicleType) {
            case "SUV":
                fare += 1500; // Additional fare for SUV
                break;
            case "Luxury":
                fare += 1000; // Additional fare for Luxury
                break;
            case "Convertible":
                fare += 2000; // Additional fare for Convertible
                break;
            case "Van":
                fare += 1200; // Additional fare for Van
                break;
            case "Pickup":
                fare += 2500; // Additional fare for Pickup
                break;
            // Sedan, Hatchback, and Coupe have no additional fare
        }

        // Add 10% tax to the fare
        var tax = fare * 0.10;
        var totalFare = fare + tax;

        // Display the fare, tax, and total fare
        document.getElementById("fare").value = fare + " LKR";
        document.getElementById("tax").value = tax.toFixed(2) + " LKR";
        document.getElementById("totalFare").value = totalFare.toFixed(2) + " LKR";
    }

    // Function to toggle debit card payment fields
    function togglePaymentFields() {
        var paymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;
        var cardDetails = document.getElementById("cardDetails");

        if (paymentMethod === "debit_card") {
            cardDetails.style.display = "block";
        } else {
            cardDetails.style.display = "none";
        }
    }
</script>
</body>
</html>