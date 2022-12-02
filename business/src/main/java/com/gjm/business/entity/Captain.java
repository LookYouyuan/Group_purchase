package com.gjm.business.entity;


public class Captain {
    private int captain_id;
    private String captain_name,password;
    private double captain_wage;

    private String newpw;

    public Captain() {
    }

    public Captain(int captain_id, String captain_name, String password, double captain_wage, String newpw) {
        this.captain_id = captain_id;
        this.captain_name = captain_name;
        this.password = password;
        this.captain_wage = captain_wage;
        this.newpw = newpw;
    }

    public int getCaptain_id() {
        return captain_id;
    }

    public void setCaptain_id(int captain_id) {
        this.captain_id = captain_id;
    }

    public String getCaptain_name() {
        return captain_name;
    }

    public void setCaptain_name(String captain_name) {
        this.captain_name = captain_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNewpw() {
        return newpw;
    }

    public void setNewpw(String newpw) {
        this.newpw = newpw;
    }

    public double getCaptain_wage() {
        return captain_wage;
    }

    public void setCaptain_wage(double captain_wage) {
        this.captain_wage = captain_wage;
    }

    @Override
    public String toString() {
        return "Captain{" +
                "captain_id=" + captain_id +
                ", captain_name='" + captain_name + '\'' +
                ", password='" + password + '\'' +
                ", captain_wage=" + captain_wage +
                ", newpw='" + newpw + '\'' +
                '}';
    }
}
