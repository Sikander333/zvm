/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author Lenovo
 */
public class StudentTableBean {
     private String aadharid;
           private String username;
           private String emailadd;
           private String contactno;
           private String college;
           private String address;
           private String city;
           private String state;
           private String second_m;
           private String third_m;
           private String file;  
           private String referenceid;

    public StudentTableBean() {
    }

    public StudentTableBean(String aadharid, String username, String emailadd, String contactno, String college, String address, String city, String state, String second_m, String third_m, String file, String referenceid) {
        this.aadharid = aadharid;
        this.username = username;
        this.emailadd = emailadd;
        this.contactno = contactno;
        this.college = college;
        this.address = address;
        this.city = city;
        this.state = state;
        this.second_m = second_m;
        this.third_m = third_m;
        this.file = file;
        this.referenceid = referenceid;
    }

    public String getAadharid() {
        return aadharid;
    }

    public void setAadharid(String aadharid) {
        this.aadharid = aadharid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmailadd() {
        return emailadd;
    }

    public void setEmailadd(String emailadd) {
        this.emailadd = emailadd;
    }

    public String getContactno() {
        return contactno;
    }

    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getSecond_m() {
        return second_m;
    }

    public void setSecond_m(String second_m) {
        this.second_m = second_m;
    }

    public String getThird_m() {
        return third_m;
    }

    public void setThird_m(String third_m) {
        this.third_m = third_m;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public String getReferenceid() {
        return referenceid;
    }

    public void setReferenceid(String referenceid) {
        this.referenceid = referenceid;
    }
    

}
