package com.gjm.mall.entity;

public class User {
    private int user_id;
    private String user_name;
    private String password;
    private String newpw;

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", password='" + password + '\'' +
                ", newpw='" + newpw + '\'' +
                '}';
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
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

    public User() {
    }

    public User(int user_id, String user_name, String password, String newpw) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.password = password;
        this.newpw = newpw;
    }
}
