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
public class CATableBean {
    
      private String aadharid;
           private String username;
           private String emailadd;
           private String contactno;
           private String address;
           private String city;
           private String district;
           private String state;
           private String file;

    public CATableBean() {
    }

    public CATableBean(String aadharid, String username, String emailadd, String contactno, String address, String city, String district, String state, String file) {
        this.aadharid = aadharid;
        this.username = username;
        this.emailadd = emailadd;
        this.contactno = contactno;
        this.address = address;
        this.city = city;
        this.district = district;
        this.state = state;
        this.file = file;
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

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }
             
    
           
      
    
}
