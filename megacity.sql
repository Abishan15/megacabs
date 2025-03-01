-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 01, 2025 at 05:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `megacity`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `fare` decimal(10,2) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `pickup_location` varchar(255) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total_fare` decimal(10,2) NOT NULL,
  `booking_time` time NOT NULL,
  `car_model` varchar(100) DEFAULT NULL,
  `car_type` varchar(50) DEFAULT NULL,
  `car_license_plate` varchar(20) DEFAULT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `driver_phone` varchar(15) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `order_number`, `customer_name`, `address`, `phone`, `destination`, `fare`, `booking_date`, `pickup_location`, `vehicle_type`, `tax`, `total_fare`, `booking_time`, `car_model`, `car_type`, `car_license_plate`, `driver_name`, `driver_phone`, `payment_method`) VALUES
(1, 'ORD1740736822857', 'Dominic', '7/5A, Wanarathana Place', '043859436', 'Duplication Road', 2800.00, '2025-02-27 18:30:00', 'Dehiwala zoo', 'Luxury', 280.00, 3080.00, '21:30:00', 'BMW', 'Luxury', 'LN4543', 'John Cena', '045634643', 'cash_on_ride'),
(4, 'ORD1740777033748', 'james', 'wattala', '567856745', 'Rajagiriya', 2050.00, '2025-03-03 18:30:00', 'wattala railwaystation', 'SUV', 205.00, 2255.00, '16:30:00', 'BMW', 'Luxury', 'LN4543', 'gfhfgd', '6765876758', 'cash_on_ride'),
(5, 'ORD1740777343497', 'jfghj', 'fghjhgf', '57856786586578', 'Thimbirigasyaya', 480.00, '2025-03-03 18:30:00', 'nbvmvm', 'Sedan', 48.00, 528.00, '16:47:00', 'fsdgdfgh', 'SUV', 'LN4545', 'Basha', '56457667', 'cash_on_ride');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `car_model` varchar(100) NOT NULL,
  `car_type` varchar(50) DEFAULT NULL,
  `license_plate` varchar(20) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_model`, `car_type`, `license_plate`, `year`, `status`) VALUES
(1, 'BMW', 'Luxury', 'LN4543', 2023, 'Available'),
(2, 'Mitsubishi', 'Hatchback', 'LN4554', 2018, 'Available'),
(3, 'fsdgdfgh', 'SUV', 'LN4545', 2000, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `address`, `phone`, `email`, `nic`, `password`) VALUES
(1, 'Dominic', 'dehiwala', '0712345678', 'dominic@gmail.com', '567457546V', '$2a$10$2u.zmoAVdbd9b1KyqMWt9uFwUUvfWdfrfiRLbP2/ygARlV9NdodYK'),
(2, 'James', 'Malabe', '045748656', 'james@gmail.com', '45765765V', '$2a$10$ARIc/9Nb2BLLpZoJ3IZAd.Hau7usQVxA1rkyJFITG0fjX1UmGYMde'),
(3, 'sam', 'Wellawatta', '5764746765', 'sam@gmail.com', '675678568V', '$2a$10$9pmBeeRyeglzZP7W.rR2fOIeshzU3ML1Kysr/gT9WORM4lIF/HJNe');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `license_number` varchar(20) NOT NULL,
  `license_plate` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `driver_name`, `phone`, `email`, `license_number`, `license_plate`, `status`) VALUES
(1, 'John Cena', '045634643', 'john@gmail.com', '56456457665', 'LN4543', 'Active'),
(2, 'Basha', '56457667', 'manikbasha@gmail.com', '6457476657657', 'LN4554', 'Active'),
(3, 'gfhfgd', '6765876758', 'dfghdf@gmail.com', '64574766576545', 'LN4545', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `usersettings`
--

CREATE TABLE `usersettings` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dark_mode` tinyint(1) DEFAULT 0,
  `notifications` tinyint(1) DEFAULT 1,
  `vehicle_preference` varchar(50) DEFAULT 'Car',
  `pickup_location` varchar(255) DEFAULT 'City Center'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `order_number` (`order_number`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `license_plate` (`license_plate`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `license_number` (`license_number`),
  ADD KEY `license_plate` (`license_plate`);

--
-- Indexes for table `usersettings`
--
ALTER TABLE `usersettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usersettings`
--
ALTER TABLE `usersettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_ibfk_1` FOREIGN KEY (`license_plate`) REFERENCES `cars` (`license_plate`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
