/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lenovo
 */
public class ProblemsUpByCABean {
    
    private int P_id;
    private String P_des;
    private String f_Name;
    private String status;
    private String pdate;
    private List<IRTableBean> irtbList = new ArrayList<IRTableBean>();

    public ProblemsUpByCABean() {
    }

    public ProblemsUpByCABean(String P_des, String f_Name, String status, String pdate) {
        this.P_des = P_des;
        this.f_Name = f_Name;
        this.status = status;
        this.pdate = pdate;
    }

    public ProblemsUpByCABean(int P_id, String P_des, String f_Name, String status, String pdate) {
        this.P_id = P_id;
        this.P_des = P_des;
        this.f_Name = f_Name;
        this.status = status;
        this.pdate = pdate;
    }

    public ProblemsUpByCABean(int P_id, String P_des, String f_Name, String status) {
        this.P_id = P_id;
        this.P_des = P_des;
        this.f_Name = f_Name;
        this.status = status;
    }

    

    public void setP_id(int P_id) {
        this.P_id = P_id;
    }

    public void setP_des(String P_des) {
        this.P_des = P_des;
    }

    public void setF_Name(String f_Name) {
        this.f_Name = f_Name;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate;
    }

    public int getP_id() {
        return P_id;
    }

    public String getP_des() {
        return P_des;
    }

    public String getF_Name() {
        return f_Name;
    }

    public String getStatus() {
        return status;
    }

    public String getPdate() {
        return pdate;
    }

    public List getIrtbList() {
        return irtbList;
    }

    public void setIrtbList(List irtbList) {
        this.irtbList = irtbList;
    }
        
    
    
}
