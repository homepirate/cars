package com.example.cars.controllers;

public class Car {

    private final double par1;
    private final double par2;
    private final double par3;

    public Car(double par1, double par2, double par3){
        this.par1 = par1;
        this.par2 = par2;
        this.par3 = par3;


    }
    public double get_sum(){
        return this.par1 + this.par2 + this.par3;
    }
}
