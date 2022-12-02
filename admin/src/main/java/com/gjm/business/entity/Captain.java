package com.gjm.business.entity;

public class Captain {
    private int captain_id;
    private String captain_name;
    private String captain_sex;
    private double captain_wage;
    private String position;
    private String captain_date;

    public Captain() {
    }

    public Captain(int captain_id, String captain_name, String captain_sex, double captain_wage, String position, String captain_date) {
        this.captain_id = captain_id;
        this.captain_name = captain_name;
        this.captain_sex = captain_sex;
        this.captain_wage = captain_wage;
        this.position = position;
        this.captain_date = captain_date;
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

    public String getCaptain_sex() {
        return captain_sex;
    }

    public void setCaptain_sex(String captain_sex) {
        this.captain_sex = captain_sex;
    }

    public double getCaptain_wage() {
        return captain_wage;
    }

    public void setCaptain_wage(double captain_wage) {
        this.captain_wage = captain_wage;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCaptain_date() {
        return captain_date;
    }

    public void setCaptain_date(String captain_date) {
        this.captain_date = captain_date;
    }

    @Override
    public String toString() {
        return "Captain{" +
                "captain_id=" + captain_id +
                ", captain_name='" + captain_name + '\'' +
                ", captain_sex='" + captain_sex + '\'' +
                ", captain_wage=" + captain_wage +
                ", position='" + position + '\'' +
                ", captain_date='" + captain_date + '\'' +
                '}';
    }
}
