package com.cab.booking.controller;

import com.cab.booking.model.Driver;
import com.cab.booking.service.DriverService;

import java.util.List;

public class DriverController {
    private DriverService driverService = new DriverService();

    public void addDriver(String id, String name, String vehicleNumber, boolean available) {
        Driver driver = new Driver(id, name, vehicleNumber, available);
        driverService.addDriver(driver);
    }

    public void displayAvailableDrivers() {
        List<Driver> drivers = driverService.getAvailableDrivers();
        for (Driver driver : drivers) {
            System.out.println(driver);
        }
    }

}
