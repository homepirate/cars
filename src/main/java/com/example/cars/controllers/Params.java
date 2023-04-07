package com.example.cars.controllers;

public class Params {
    public String parm1;
    public String parm2;
    public String parm3;

    public Params(String parm1, String parm2, String parm3){
        this.parm1 = parm1;
        this.parm2 = parm2;
        this.parm3 = parm3;
    }

    @Override
    public String toString() {
        return this.parm1 + " " + this.parm2 + " " + this.parm3 ;
    }
}
