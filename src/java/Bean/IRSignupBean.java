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
public class IRSignupBean {
    
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
   private String f_Name;
    
    public IRSignupBean() {
    }

    public IRSignupBean(String aadharid, String username, String designation, String emailadd, String contactno, String college, String address, String city, String state, String password, String f_Name) {
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
        this.f_Name = f_Name;
    }

    public IRSignupBean(String username, String designation, String emailadd, String contactno, String college, String address, String city, String state, String password, String f_Name) {
        this.username = username;
        this.designation = designation;
        this.emailadd = emailadd;
        this.contactno = contactno;
        this.college = college;
        this.address = address;
        this.city = city;
        this.state = state;
        this.password = password;
        this.f_Name = f_Name;
    }

    

    

    public void setAadharid(String aadharid) {
        this.aadharid = aadharid;
    }

    public void setUsername(String username) {
        this.username = username;
    }
     
    
    
    public void setEmailadd(String emailadd) {
        this.emailadd = emailadd;
    }

    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
   
    
    public void setF_Name(String f_Name) {
        this.f_Name = f_Name;
    }

    

    public String getAadharid() {
        return aadharid;
    }

    public String getUsername() {
        return username;
    }

    public String getEmailadd() {
        return emailadd;
    }

    public String getContactno() {
        return contactno;
    }

    public String getCollege() {
        return college;
    }

    public String getAddress() {
        return address;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public String getPassword() {
        return password;
    }

    
    
    public String getF_Name() {
        return f_Name;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDesignation() {
        return designation;
    }


   
   
    
}
