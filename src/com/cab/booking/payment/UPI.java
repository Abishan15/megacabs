package com.cab.booking.payment;

public class UPI extends Payment{

@Override
    public void makePayment(double amount){
    System.out.println("Paid Amount:"+ amount+ "Using UPI");
}}
