/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Lenovo
 */
public class Check {
    
     String username = "root";
    String url = "jdbc:mysql://localhost:3306/zvmportal";
    String password = "";
   public boolean IRLoginValidation(String aadharid, String passwordV){
      
       
        try {
           
            
            String sql="SELECT * FROM IRTable\n"
                    + "WHERE aadharid=? and password=? and status=?";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement pstm=con.prepareStatement(sql);
            pstm.setString(1,aadharid);
            pstm.setString(2,passwordV);
            pstm.setString(3,"NULL");
            ResultSet rs=pstm.executeQuery();
            
           
            while(rs.next()){
                
               
                 return true;
        
                
            }
         
            
      
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    
    return false;
    
}
    
  public static void main(String args[]){
  Check ch = new Check();
  boolean variable1 = ch.IRLoginValidation("222222222222", "Amit123");
  System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!       "+variable1);
  }  
    
    
}
