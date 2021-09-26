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
public class CASignupBean {
        private String aadharid;
           private String username;
           private String emailadd;
           private String contactno;
           private String address;
           private String city;
           private String district;
           private String state;
           private String password;
           private String profile;
           private String f_Name;
           

    public CASignupBean() {
    }

    public CASignupBean(String username, String emailadd, String contactno, String address, String city, String district, String state, String password ,String f_Name) {
        this.username = username;
        this.emailadd = emailadd;
        this.contactno = contactno;
        this.address = address;
        this.city = city;
        this.district = district;
        this.state = state;
        this.password = password;
        this.f_Name = f_Name;
    }

    public CASignupBean(String aadharid, String username, String emailadd, String contactno, String address, String city, String district, String state, String password, String f_Name) {
        this.aadharid = aadharid;
        this.username = username;
        this.emailadd = emailadd;
        this.contactno = contactno;
        this.address = address;
        this.city = city;
        this.district = district;
        this.state = state;
        this.password = password;
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

    public String getAddress() {
        return address;
    }

    public String getCity() {
        return city;
    }

    public String getDistrict() {
        return district;
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

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setDistrict(String district) {
        this.district = district;
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

           
}
