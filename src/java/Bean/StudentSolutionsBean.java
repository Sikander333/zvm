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
public class StudentSolutionsBean {
 
   private int P_id;
    private String S_des;
    private String f_Name;
    private String aadharid;
     private String IRStatus;
    private String sdate;
    private String CAStatus;
   
    private String username;
    private String photo;

    public StudentSolutionsBean() {
    }

    public StudentSolutionsBean(String S_des, String f_Name, String IRStatus, String sdate, String CAStatus) {
        this.S_des = S_des;
        this.f_Name = f_Name;
        this.IRStatus = IRStatus;
        this.sdate = sdate;
        this.CAStatus = CAStatus;
    }

    public StudentSolutionsBean(int P_id, String S_des, String f_Name, String IRStatus, String sdate, String CAStatus) {
        this.P_id = P_id;
        this.S_des = S_des;
        this.f_Name = f_Name;
        this.IRStatus = IRStatus;
        this.sdate = sdate;
        this.CAStatus = CAStatus;
    }

    public StudentSolutionsBean(int P_id, String S_des, String f_Name, String IRStatus, String sdate) {
        this.P_id = P_id;
        this.S_des = S_des;
        this.f_Name = f_Name;
        this.IRStatus = IRStatus;
        this.sdate = sdate;
    }

    public StudentSolutionsBean(int P_id, String S_des, String f_Name, String aadharid, String IRStatus, String sdate, String username, String photo) {
        this.P_id = P_id;
        this.S_des = S_des;
        this.f_Name = f_Name;
        this.aadharid = aadharid;
        this.IRStatus = IRStatus;
        this.sdate = sdate;
        this.username = username;
        this.photo = photo;
    }

    public StudentSolutionsBean(int P_id, String S_des, String f_Name, String IRStatus) {
        this.P_id = P_id;
        this.S_des = S_des;
        this.f_Name = f_Name;
        this.IRStatus = IRStatus;
    }

   
    

    public int getP_id() {
        return P_id;
    }

    public void setP_id(int P_id) {
        this.P_id = P_id;
    }

    public String getS_des() {
        return S_des;
    }

    public void setS_des(String S_des) {
        this.S_des = S_des;
    }

    public String getF_Name() {
        return f_Name;
    }

    public void setF_Name(String f_Name) {
        this.f_Name = f_Name;
    }

    public String getIRStatus() {
        return IRStatus;
    }

    public void setIRStatus(String IRStatus) {
        this.IRStatus = IRStatus;
    }

    public String getSdate() {
        return sdate;
    }

    public void setSdate(String sdate) {
        this.sdate = sdate;
    }

    public String getCAStatus() {
        return CAStatus;
    }

    public void setCAStatus(String CAStatus) {
        this.CAStatus = CAStatus;
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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    
}
