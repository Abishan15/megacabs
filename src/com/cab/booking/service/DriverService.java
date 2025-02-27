package com.cab.booking.service;

import com.cab.booking.model.Driver;

import java.util.ArrayList;
import java.util.List;

public class DriverService {
    private List<Driver> drivers= new ArrayList<>();


    public void addDriver(Driver driver) {
        drivers.add(driver);
    }

    public List<Driver> getAvailableDrivers() {
        List<Driver> availableDrivers = new ArrayList<>();
        for (Driver driver : drivers) {
            if (driver.isAvailable()) {
                availableDrivers.add(driver);
            }
        }
        return availableDrivers;
    }

}
