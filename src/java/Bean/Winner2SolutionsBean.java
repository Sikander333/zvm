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
public class Winner2SolutionsBean {
   private String aadharid;
    private String username;
    private String college;
     private String second_m;
    private String third_m;
    private String photo;
    private int P_id;
    private String iraadharid;

    public Winner2SolutionsBean() {
    }

    public Winner2SolutionsBean(String aadharid, String username, String college, String second_m, String third_m, String photo, int P_id, String iraadharid) {
        this.aadharid = aadharid;
        this.username = username;
        this.college = college;
        this.second_m = second_m;
        this.third_m = third_m;
        this.photo = photo;
        this.P_id = P_id;
        this.iraadharid = iraadharid;
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

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getP_id() {
        return P_id;
    }

    public void setP_id(int P_id) {
        this.P_id = P_id;
    }

    public String getIraadharid() {
        return iraadharid;
    }

    public void setIraadharid(String iraadharid) {
        this.iraadharid = iraadharid;
    }

}
