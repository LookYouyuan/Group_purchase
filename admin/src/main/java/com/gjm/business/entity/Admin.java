package com.gjm.business.entity;


public class Admin {
    private int admin_id;
    private String admin_name,password;
    private String newpw;

    @Override
    public String toString() {
        return "Admin{" +
                "admin_id=" + admin_id +
                ", admin_name='" + admin_name + '\'' +
                ", password='" + password + '\'' +
                ", newpw='" + newpw + '\'' +
                '}';
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
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

    public Admin(int admin_id, String admin_name, String password, String newpw) {
        this.admin_id = admin_id;
        this.admin_name = admin_name;
        this.password = password;
        this.newpw = newpw;
    }

    public Admin() {
    }
}
