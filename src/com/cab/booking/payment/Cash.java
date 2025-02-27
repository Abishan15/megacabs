package com.cab.booking.payment;

public class Cash extends  Payment{
    @Override
    public void makePayment(double amount ){
        System.out.println("paid Cash"+ amount+ "using cash");}
}
