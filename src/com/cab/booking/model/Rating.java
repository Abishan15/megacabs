package com.cab.booking.model;

public class Rating {
    private String userId;
    private String driverId;
    private int stars;

    public Rating(String userId, String driverId, int stars) {
        this.userId = userId;
        this.driverId = driverId;
        this.stars = stars;
    }

    public String getUserId() {
        return userId;
    }

    public String getDriverId() {
        return driverId;
    }

    public int getStars() {
        return stars;
    }

    @Override
    public String toString() {
        return "Rating{" + "userId='" + userId + '\'' + ", driverId='" + driverId + '\'' + ", stars=" + stars + '}';
    }

}