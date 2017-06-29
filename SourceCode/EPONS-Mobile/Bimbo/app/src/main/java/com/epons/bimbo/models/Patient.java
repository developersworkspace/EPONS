package com.epons.bimbo.models;

/**
 * Created by Barend.Erasmus on 4/12/2016.
 */
public class Patient {
    public String Firstname = "Barend";
    public String Lastname;


    public String Fullname() {
        return Firstname + " " + Lastname;
    }
}
