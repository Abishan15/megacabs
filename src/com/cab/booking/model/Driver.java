package com.cab.booking.model;

public class Driver {
    private String id;
    private String name;
    private String vehicleNumber;
    private boolean available;

    public Driver(String id, String name, String vehicleNumber, boolean available){
        this.id = id;
        this.name = name;
        this.vehicleNumber = vehicleNumber;
        this.available = available;
    }
    public  String getId()
    { return id; }
    public String getName()
    { return name; }
    public String getVehicleNumber()
    { return vehicleNumber; }

    @Override
    public String toString() {
        return "Driver{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", vehicleNumber='" + vehicleNumber + '\'' +
                ", available=" + available +
                '}';
    }

    public boolean isAvailable()
    { return available; }
    public void setAvailable(boolean available)
    { this.available = available;

    }

}
