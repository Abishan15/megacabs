package com.cab.booking.model;

public class User {
    private String id;
    private String name;
    private String phoneNumber;

    public User(String id, String name, String phoneNumber) {
        this.id = id;
        this.name = name;
        this.phoneNumber = phoneNumber;
    }

    public String getId() { return id; }
    public String getName() { return name; }
    public String getPhoneNumber() { return phoneNumber; }

    @Override
    public String toString() {
        return "User{" + "id='" + id + '\'' + ", name='" + name + '\'' + ", phoneNumber='" + phoneNumber + '\'' + '}';
    }

}
