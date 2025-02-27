package com.cab.booking.payment;

public class CreditCard extends Payment{
    @Override
    public void makePayment(double amount){
        System.out.println("Paid credit card" + amount + "using credit card");
    }
}
