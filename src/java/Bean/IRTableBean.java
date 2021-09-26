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
public class IRTableBean {
    
     private String aadharid;
           private String username;
           private String designation;
           private String emailadd;
           private String contactno;
           private String college;
           private String address;
           private String city;
           private String state;
           private String password;
           private String file;
           private String status;  

    public IRTableBean() {
    }

    public IRTableBean(String aadharid, String username,String designation, String emailadd, String contactno, String college, String address, String city, String state, String password, String file, String status) {
        this.aadharid = aadharid;
        this.username = username;
        this.designation = designation;
        this.emailadd = emailadd;
        this.contactno = contactno;
        this.college = college;
        this.address = address;
        this.city = city;
        this.state = state;
        this.password = password;
        this.file = file;
        this.status = status;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }
    
    
    
    
}
