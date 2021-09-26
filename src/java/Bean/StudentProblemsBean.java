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
public class StudentProblemsBean {
    
    
     private int P_id;
    private String P_des;
    private String f_Name;
    private String status1;
    private String pdate;
    private String status2;
    private String username;
    private String photo;

    public StudentProblemsBean() {
    }

    public StudentProblemsBean(String P_des, String f_Name, String status1, String pdate, String status2) {
        this.P_des = P_des;
        this.f_Name = f_Name;
        this.status1 = status1;
        this.pdate = pdate;
        this.status2 = status2;
    }

    public StudentProblemsBean(int P_id, String P_des, String f_Name, String status1, String pdate, String status2) {
        this.P_id = P_id;
        this.P_des = P_des;
        this.f_Name = f_Name;
        this.status1 = status1;
        this.pdate = pdate;
        this.status2 = status2;
    }

    public StudentProblemsBean(int P_id, String P_des, String f_Name, String status1, String pdate, String status2, String username, String photo) {
        this.P_id = P_id;
        this.P_des = P_des;
        this.f_Name = f_Name;
        this.status1 = status1;
        this.pdate = pdate;
        this.status2 = status2;
        this.username = username;
        this.photo = photo;
    }

    
    

    public int getP_id() {
        return P_id;
    }

    public void setP_id(int P_id) {
        this.P_id = P_id;
    }

    public String getP_des() {
        return P_des;
    }

    public void setP_des(String P_des) {
        this.P_des = P_des;
    }

    public String getF_Name() {
        return f_Name;
    }

    public void setF_Name(String f_Name) {
        this.f_Name = f_Name;
    }

    public String getStatus1() {
        return status1;
    }

    public void setStatus1(String status1) {
        this.status1 = status1;
    }

    public String getPdate() {
        return pdate;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate;
    }

    public String getStatus2() {
        return status2;
    }

    public void setStatus2(String status2) {
        this.status2 = status2;
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
