/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Huu
 */
public class User {
//    UserID int primary key,
//[password] varchar(20),
//[name] varchar(50),
//email varchar(50),
//sex binary,
//[address] varchar(50),
//[phonenumber] varchar(20),
//[Role] int
//);
    private int userid,role;
    private String password,name,email,address,phonenumber;
    private boolean sex;

    public User(String password, String name) {
        this.password = password;
        this.name = name;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "User{" + "userid=" + userid + ", role=" + role + ", password=" + password + ", name=" + name + ", email=" + email + ", address=" + address + ", phonenumber=" + phonenumber + ", sex=" + sex + '}';
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public boolean isSex() {
        return sex;
    }

    public void setSex(boolean sex) {
        this.sex = sex;
    }

    public User(int userid, int role, String password, String name, String email, String address, String phonenumber, boolean sex) {
        this.userid = userid;
        this.role = role;
        this.password = password;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phonenumber = phonenumber;
        this.sex = sex;
    }

    public User() {
    }
}
