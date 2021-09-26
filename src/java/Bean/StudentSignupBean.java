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
public class StudentSignupBean {
  
    
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
           private String referenceid;
           private String password;
           private String f_Name;
           

    public StudentSignupBean() {
    }

    public StudentSignupBean(String username, String emailadd, String contactno, String college, String address, String city, String state, String second_m, String third_m,String referenceid, String password, String f_Name) {
        this.username = username;
        this.emailadd = emailadd;
        this.contactno = contactno;
        this.college = college;
        this.address = address;
        this.city = city;
        this.state = state;
        this.second_m = second_m;
        this.third_m = third_m;
        this.referenceid = referenceid;
        this.password = password;
        this.f_Name = f_Name;
        
    }

    public StudentSignupBean(String aadharid, String username, String emailadd, String contactno, String college, String address, String city, String state, String second_m, String third_m, String referenceid ,String password, String f_Name) {
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
        this.referenceid = referenceid;
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

    public void setSecond_m(String second_m) {
        this.second_m = second_m;
    }

    public void setThird_m(String third_m) {
        this.third_m = third_m;
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

    public String getSecond_m() {
        return second_m;
    }

    public String getThird_m() {
        return third_m;
    }

    public String getPassword() {
        return password;
    }

    public String getF_Name() {
        return f_Name;
    }

    public String getReferenceid() {
        return referenceid;
    }

    public void setReferenceid(String referenceid) {
        this.referenceid = referenceid;
    }
           
           
           
    
}
