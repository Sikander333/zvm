
package DAO;

import Bean.CASignupBean;
import Bean.CATableBean;
import Bean.IRProblemsBean;
import Bean.IRSignupBean;
import Bean.IRTableBean;


import Bean.ProblemsUpByCABean;
import Bean.ShowAllStudentsBean;
import Bean.StudentProblemsBean;
import Bean.StudentSignupBean;
import Bean.StudentSolutionsBean;
import Bean.StudentTableBean;
import Bean.Winner1SolutionsBean;
import Bean.Winner2SolutionsBean;
import Bean.Winner3SolutionsBean;
import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
public class MethodOperation implements MethodDeclarations  {
    
    
    String username = "root";
    String url = "jdbc:mysql://localhost:3306/zvmportal";            //?autoReconnect=true&useSSL=false
    String password = "";

  
        
        
      
        
    
    
   
       
            
      
    
   

    @Override
    public int addCA(CASignupBean casub) {
             try {
            
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);  
          //  Statement statement = con.createStatement();    Not Confirmed LD
         
         

            String query = "insert into CATable(aadharid,username,emailadd,contactno,address, city, district,  state,  password,file) values(?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
            System.out.println("VVVVVVVVVVVVVVVVVVVVVVVVVVV<<<<<<<<<<<<"+ "MethodOperation" +"<<<<<<<<<<VVVVVVVVVVVVVVVVVVVVVVVVV"+casub.getAadharid()+" "+casub.getUsername());
            pst.setString(1, casub.getAadharid());
            pst.setString(2, casub.getUsername());
            pst.setString(3, casub.getEmailadd());
            pst.setString(4, casub.getContactno());
            pst.setString(5, casub.getAddress());
            pst.setString(6, casub.getCity());
            pst.setString(7, casub.getDistrict());
            pst.setString(8, casub.getState());
            pst.setString(9, casub.getPassword());
            pst.setString(10, casub.getF_Name());
            
         
            
            
           
            
            
            
            
            
            
            
            int x = pst.executeUpdate();
           
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
    }

    @Override
    public int addIR(IRSignupBean irsub) {
             try {
            
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);     
         //   Statement statement = con.createStatement();  Not confirmed
         
         

            String query = "insert into IRTable(aadharid,username,designation,emailadd,contactno , college ,address, city, state,  password,file) values(?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
         //   System.out.println("VVVVVVVVVVVVVVVVVVVVVVVVVVV<<<<<<<<<<<<"+ "MethodOperation" +"<<<<<<<<<<VVVVVVVVVVVVVVVVVVVVVVVVV"+casub.getAadharid()+" "+casub.getUsername());
            pst.setString(1, irsub.getAadharid());
        //    System.out.println("################  &&&&&&& ############### AADHARID ######### " + irsub.getAadharid()+" "+ irsub.getUsername());
            pst.setString(2, irsub.getUsername());
            pst.setString(3 ,irsub.getDesignation());
            pst.setString(4, irsub.getEmailadd());
            pst.setString(5, irsub.getContactno());
            pst.setString(6 , irsub.getCollege());
            pst.setString(7, irsub.getAddress());
            pst.setString(8, irsub.getCity());
            pst.setString(9, irsub.getState());
            pst.setString(10, irsub.getPassword());
            pst.setString(11, irsub.getF_Name());
            
         
            
            
           
            
            
            
            
            
            
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
    }

    @Override
    public int addStudent(StudentSignupBean stsub) {
              try {
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);  
            
          //  Statement statement = con.createStatement();     Not Confirmed
         
         

            String query = "insert into StudentTable(aadharid,username,emailadd,contactno , college ,address, city, state,second_m , third_m ,password,file ,referenceid) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
         //   System.out.println("VVVVVVVVVVVVVVVVVVVVVVVVVVV<<<<<<<<<<<<"+ "MethodOperation" +"<<<<<<<<<<VVVVVVVVVVVVVVVVVVVVVVVVV"+casub.getAadharid()+" "+casub.getUsername());
            pst.setString(1, stsub.getAadharid());
        //    System.out.println("################  &&&&&&& ############### AADHARID ######### " + irsub.getAadharid()+" "+ irsub.getUsername());
            pst.setString(2, stsub.getUsername());
            pst.setString(3, stsub.getEmailadd());
            pst.setString(4, stsub.getContactno());
            pst.setString(5 , stsub.getCollege());
            pst.setString(6, stsub.getAddress());
            pst.setString(7, stsub.getCity());
            pst.setString(8, stsub.getState());
             pst.setString(9, stsub.getSecond_m());
              pst.setString(10, stsub.getThird_m());
            pst.setString(11, stsub.getPassword());
            pst.setString(12, stsub.getF_Name());
            pst.setString(13,stsub.getReferenceid());
            
         
            
            
           
            
            
            
            
            
            
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
    }

    

    @Override
    public String getUserName(String aadharid) {
      
        String usernameV="";
   PreparedStatement pstm;
   try {
       
       
       Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);  
            pstm = con.prepareStatement("Select * from IRTable where aadharid=?");
            pstm.setString(1,aadharid);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                usernameV= rs.getString("username");
            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        }
   
   
      return usernameV; 
    
        
    }

   
 

   
 

    public boolean IRLoginValidation(String aadharid, String passwordV) throws ClassNotFoundException, SQLException {
               boolean status=false;
  Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);  
    
    String sql="SELECT * FROM IRTable\n"
            + "WHERE aadharid=? and password=? and status=?";
    PreparedStatement pstm=con.prepareStatement(sql);
    pstm.setString(1,aadharid);
    pstm.setString(2,passwordV);
    pstm.setString(3,"Accepted");
    
    ResultSet rs=pstm.executeQuery();
      int i=0;
    while(rs.next()){
        
       i++;
            
        }
    
    if( i==1){
         return true;
       } 
    else
    {
         return false;
    }

   
    
}

  
    
       public boolean StudentLoginValidation(String aadharid, String passwordV) throws ClassNotFoundException, SQLException {
           
               boolean status=false;
       Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);  
    
    String sql="SELECT * FROM StudentTable\n"
            + "WHERE aadharid=? and password=? and status=?";
    PreparedStatement pstm=con.prepareStatement(sql);
    pstm.setString(1,aadharid);
    pstm.setString(2,passwordV);
    pstm.setString(3,"Accepted");
    
    ResultSet rs=pstm.executeQuery();
      int i=0;
    while(rs.next()){
        
       i++;
            
        }
    
    if( i==1){
         return true;
       } 
    else
    {
         return false;
    }

   
    
}

    

    @Override
    public String getUserNameOfStudent(String aadharid) {
             String usernameV="";
   PreparedStatement pstm;
   try {
       
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            pstm = con.prepareStatement("Select * from StudentTable where aadharid=?");
            pstm.setString(1,aadharid);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                usernameV= rs.getString("username");
            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        }
   
   
      return usernameV; 
    }
    
    
     

    

    public Object getUserNameOfAdmin(String aadharid) {
                   String usernameV="";
   PreparedStatement pstm;
   try {
       
       
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            pstm = con.prepareStatement("Select * from CATable where aadharid=?");
            pstm.setString(1,aadharid);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                usernameV= rs.getString("username");
            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
            
        }
   
   
      return usernameV; 
    }

    public boolean AdminLoginValidation(String aadharid, String passwordV) throws ClassNotFoundException, SQLException {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
           
        boolean status=false;
    
    String sql="SELECT * FROM CATable\n"
            + "WHERE aadharid=? and password=?";
    PreparedStatement pstm=con.prepareStatement(sql);
    pstm.setString(1,aadharid);
    pstm.setString(2,passwordV);
    
    ResultSet rs=pstm.executeQuery();
    int i=0;
    while(rs.next()){
        
        i++;
            
        }
    
    if( i==1){
         return true;
       } 
    else
    {
         return false;
    }
    }
    
    
    
    
    
    public boolean userExist(String aadharid) throws ClassNotFoundException, SQLException {
           
              
       Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
    
    String sql="SELECT username FROM CATable where aadharid=? UNION SELECT username FROM IRTable where aadharid=? UNION SELECT username FROM StudentTable where aadharid=? ";
          
    PreparedStatement pstm=con.prepareStatement(sql);
    pstm.setString(1,aadharid);
    pstm.setString(2,aadharid);
    pstm.setString(3,aadharid);
    
    ResultSet rs=pstm.executeQuery();
      int i=0;
    while(rs.next()){
        
       i++;
            
        }
   
    if( i!=0){
         return true;
       } 
    else
    {
         return false;
    }

   
    
}

    @Override
    public ResultSet newIRRequest() {
        PreparedStatement pstm;
   ResultSet rs = null;
   
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            Connection con=null;
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
   
   
   try {
            pstm = con.prepareStatement("Select * from IRTable where status is null");
            //pstm.setString(1,null);
            rs=pstm.executeQuery();
           
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
    }

    @Override
    public void updateIRStatus(String aadharid, String status) {
       
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            
            
            
            String sql="update IRTable set status=? where aadharid=?";
            
            PreparedStatement pstm=con.prepareStatement(sql);
            pstm.setString(1,status);
            pstm.setString(2,aadharid);
            
            pstm.executeUpdate();
           
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
    }

    public void updateStudentStatus(String aadharid, String status ,String IRAadharid) {
        
        
          try {
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            
            
            
            String sql="update StudentTable set status=? where aadharid=? and referenceid=?";
            
            PreparedStatement pstm=con.prepareStatement(sql);
            pstm.setString(1,status);
            pstm.setString(2,aadharid);
            pstm.setString(3,IRAadharid);
            
            pstm.executeUpdate();
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
    }

    @Override
    public ResultSet newStudentRequest(String IRAadharid) {
      
        
        PreparedStatement pstm;
   ResultSet rs = null;
   
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            Connection con=null;
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
   
   
   try {
            pstm = con.prepareStatement("Select * from StudentTable where status is null and referenceid='"+IRAadharid+"'");
            //pstm.setString(1,null);
            rs=pstm.executeQuery();
            
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
        
        
        
        
    }

  

    @Override
    public List selectAllCAProblems() {
        
          try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from CAProblems";
            ResultSet rs = st.executeQuery(query);
            List<ProblemsUpByCABean> list = new ArrayList<ProblemsUpByCABean>();

            while (rs.next()) {
                ProblemsUpByCABean pubcab = new ProblemsUpByCABean();
                pubcab.setP_id(rs.getInt("P_id"));
                pubcab.setP_des(rs.getString("P_des"));
                pubcab.setF_Name(rs.getString("file"));
                pubcab.setStatus(rs.getString("status"));
                pubcab.setPdate(rs.getString("pdate"));
                
                list.add(pubcab);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
           
            if (list.size() > 0) {
                
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
    }

    @Override
    public ProblemsUpByCABean selectCAProblems(int id) {
        
          try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from CAProblems where P_id="+id+"";
            ResultSet rs=st1.executeQuery(query);
            while (rs.next()) {
                ProblemsUpByCABean pubcab = new ProblemsUpByCABean();
                pubcab.setP_id(id);
                pubcab.setP_des(rs.getString("P_des"));
                pubcab.setF_Name(rs.getString("file"));
               
                pubcab.setStatus(rs.getString("status"));
                pubcab.setPdate(rs.getString("pdate"));
                
                return pubcab;

            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return null;
        
        
        
    }

    @Override
    public int updateCAProblem(ProblemsUpByCABean pubcab) {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            
        //    Statement statement = con.createStatement();                  Not Confirmed
            
            String query = "update CAProblems set P_des=? , file =? ,status=? where P_id=?";
            
            PreparedStatement pst = con.prepareStatement(query);
        
           
            pst.setString(1, pubcab.getP_des());
            pst.setString(2,pubcab.getF_Name());
            pst.setString(3,pubcab.getStatus());
             pst.setInt(4, pubcab.getP_id());
            
            
        
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
    }

    @Override
    public boolean deleteCAProblem(int id) {
       
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            
          
            Statement statement=con.createStatement();
             String query="delete from CAProblems where P_id="+id+""  ;      
            int x = statement.executeUpdate(query);    
            
         if (x > 0) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
   
        
        return false;
        
        
        
    }

    @Override
    public List searchByName(String name) {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from Students where name like '%"+name+"%'";
            ResultSet rs = st.executeQuery(query);
            List<ProblemsUpByCABean> list = new ArrayList<ProblemsUpByCABean>();

            while (rs.next()) {
                ProblemsUpByCABean pubcab = new ProblemsUpByCABean();
                pubcab.setP_id(rs.getInt("P_id"));
                pubcab.setP_des(rs.getString("P_des"));
          //      pubca.setPath((File) rs.getBlob("file"));
            
                list.add(pubcab);
            }
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
         return null;
    }

    @Override
    public List selectUnSolvedCAProblems(String IRAadharid) {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from CAProblems where status='UnSolved' and status"+IRAadharid+" is null";
            ResultSet rs = st.executeQuery(query);
            List<ProblemsUpByCABean> list = new ArrayList<ProblemsUpByCABean>();

            while (rs.next()) {
                ProblemsUpByCABean pubcab = new ProblemsUpByCABean();
                pubcab.setP_id(rs.getInt("P_id"));
                pubcab.setP_des(rs.getString("P_des"));
                pubcab.setF_Name(rs.getString("file"));
                pubcab.setStatus(rs.getString("status"));
                pubcab.setPdate(rs.getString("pdate"));
                
                list.add(pubcab);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
    }

    @Override
    public int insertIntoIRProblems(ProblemsUpByCABean pubcab ,String IRAadharid) {
        
         try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            
         //   Statement statement = con.createStatement();           Not Confirmed
            
            String query = "insert into "+IRAadharid+"IRProblems(P_id,P_des,file ,status1 ,pdate , status2) values(?,?,?,?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
        
            pst.setInt(1, pubcab.getP_id());
            pst.setString(2, pubcab.getP_des());
            pst.setString(3,pubcab.getF_Name());
            pst.setString(4,"UnSolved");
            
            pst.setString(5,pubcab.getPdate());
            pst.setString(6,"UnSelected");
            
        
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
    }

    @Override
    public int updateCAProblemsStatusInfinity(int id , String IRAadharid) {
        
           try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update CAProblems set status"+IRAadharid+"='forwarded' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
        
        
        
    }

    @Override
    public List selectUnSolvedIRProblems(String IRAadharid) {
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from "+IRAadharid+"IRProblems where status1='UnSolved'";
            ResultSet rs = st.executeQuery(query);
            List<IRProblemsBean> list = new ArrayList<IRProblemsBean>();

            while (rs.next()) {
                IRProblemsBean irpb = new IRProblemsBean();
                irpb.setP_id(rs.getInt("P_id"));
                irpb.setP_des(rs.getString("P_des"));
                irpb.setF_Name(rs.getString("file"));
                irpb.setStatus1(rs.getString("status1"));
                irpb.setPdate(rs.getString("pdate"));
                irpb.setStatus2(rs.getString("status2"));
                
                list.add(irpb);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
        
        
    }

    @Override
    public List selectAllIRProblems(String IRAadharid) {
        
           try {
           Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from "+IRAadharid+"IRProblems";
            ResultSet rs = st.executeQuery(query);
            List<IRProblemsBean> list = new ArrayList<IRProblemsBean>();

            while (rs.next()) {
                IRProblemsBean irpb = new IRProblemsBean();
                irpb.setP_id(rs.getInt("P_id"));
                irpb.setP_des(rs.getString("P_des"));
                irpb.setF_Name(rs.getString("file"));
                irpb.setStatus1(rs.getString("status1"));
                irpb.setPdate(rs.getString("pdate"));
                irpb.setStatus2(rs.getString("status2"));
                
                list.add(irpb);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
    }

    @Override
    public IRProblemsBean selectIRProblems(int id ,String IRAadharid) {
        
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from "+IRAadharid+"IRProblems where P_id="+id+"";
            ResultSet rs=st1.executeQuery(query);
            while (rs.next()) {
                IRProblemsBean irpb = new IRProblemsBean();
                irpb.setP_id(id);
                irpb.setP_des(rs.getString("P_des"));
                irpb.setF_Name(rs.getString("file"));
               
                irpb.setStatus1(rs.getString("status1"));
                irpb.setPdate(rs.getString("pdate"));
                irpb.setStatus2(rs.getString("status2"));
                
              
                return irpb;
                   
            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return null;
        
        
        
    }

    @Override
    public int insertIntoStudentProblems(IRProblemsBean irpb ,String aadharid ,String IRAadharid) {
        
              try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
       //     Statement statement = con.createStatement();           Not Confirmed LD
          
            
            String query = "insert into "+IRAadharid+"StudentProblems(P_id,P_des,file,aadharid,pdate ,status2) values(?,?,?,?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
        
            pst.setInt(1, irpb.getP_id());
            pst.setString(2, irpb.getP_des());
            pst.setString(3,irpb.getF_Name());
            pst.setString(4,aadharid);
            pst.setString(5,irpb.getPdate());
            pst.setString(6,"Not Accepted Yet");
            
        
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
        
    }

    @Override
    public int updateIRProblemsStatus2(int id,String IRAadharid) {
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"IRProblems set status2='Under Consideration' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
    }

    @Override
    public StudentProblemsBean selectStudentProblems(String aadharid ,String IRAadharid) {
       
               try {
            Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from "+IRAadharid+"StudentProblems where aadharid='"+aadharid+"'";
            ResultSet rs=st1.executeQuery(query);
            while (rs.next()) {
                StudentProblemsBean stpb = new StudentProblemsBean();
                stpb.setP_id(rs.getInt("P_id"));
                stpb.setP_des(rs.getString("P_des"));
                stpb.setF_Name(rs.getString("file"));
               
                stpb.setStatus1(rs.getString("aadharid"));
                stpb.setPdate(rs.getString("pdate"));
                stpb.setStatus2(rs.getString("status2"));
              
                return stpb;

            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return null;
        
        
        
        
        
        
    }

    @Override
    public List selectAllStudentProblems(String IRAadharid) {
        
        try {
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from "+IRAadharid+"StudentProblems";
            ResultSet rs = st.executeQuery(query);
            List<StudentProblemsBean> list = new ArrayList<StudentProblemsBean>();

            while (rs.next()) {
                StudentProblemsBean stpb = new StudentProblemsBean();
                stpb.setP_id(rs.getInt("P_id"));
                stpb.setP_des(rs.getString("P_des"));
                stpb.setF_Name(rs.getString("file"));
                stpb.setStatus1(rs.getString("aadharid"));
                stpb.setPdate(rs.getString("pdate"));
                stpb.setStatus2(rs.getString("status2"));
        
                list.add(stpb);
                
            }
                         System.out.println("999999999999999999999999999999999999999  "+list );
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
    }

    @Override
    public List selectAllStudentProblemsWithUsername(String IRAadharid) {
        
        
        try {
         Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select P_id , P_des , StPs.file , StPs.aadharid , pdate , status2 , username , StTa.file FROM "+IRAadharid+"StudentProblems StPs , StudentTable StTa WHERE StPs.aadharid=StTa.aadharid";
            ResultSet rs = st.executeQuery(query);
            List<StudentProblemsBean> list = new ArrayList<StudentProblemsBean>();

            while (rs.next()) {
                StudentProblemsBean stpb = new StudentProblemsBean();
                stpb.setP_id(rs.getInt(1));
                stpb.setP_des(rs.getString(2));
                stpb.setF_Name(rs.getString(3));
                stpb.setStatus1(rs.getString(4));
                stpb.setPdate(rs.getString(5));
                stpb.setStatus2(rs.getString(6));
                stpb.setUsername(rs.getString(7));
                stpb.setPhoto(rs.getString(8));
                list.add(stpb);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
    }

    @Override
    public StudentProblemsBean selectStudentProblems(int id ,String IRAadharid) {
        
        
        
        
           try {
           Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from "+IRAadharid+"StudentProblems where P_id="+id+"";
            ResultSet rs=st1.executeQuery(query);
            while (rs.next()) {
                StudentProblemsBean stpb = new StudentProblemsBean();
                stpb.setP_id(rs.getInt("P_id"));
                stpb.setP_des(rs.getString("P_des"));
                stpb.setF_Name(rs.getString("file"));
               
                stpb.setStatus1(rs.getString("aadharid"));
                stpb.setPdate(rs.getString("pdate"));
                stpb.setStatus2(rs.getString("status2"));
              
                return stpb;

            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return null;
        
        
        
        
        
    }

    @Override
    public boolean deleteStudentProblems(String aadharid ,String IRAadharid) {
        
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
          
            Statement statement=con.createStatement();
             String query="delete from "+IRAadharid+"StudentProblems where aadharid='"+aadharid+"'"  ;      
            int x = statement.executeUpdate(query);  
            
         if (x > 0) {
                return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
   
        
        return false;
        
        
        
        
        
        
        
    }

    @Override
    public int updateIRProblemsStatus2AsUnSelected(int id ,String IRAadharid) {
        
          try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"IRProblems set status2='UnSelected' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
        
    }

   /*
    @Override
    public List selectMax3IRProblems(int[] arr) {
      
        
           try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            
           
            String query = "select *from IRProblems WHERE P_id="+arr[0]+" OR P_id="+arr[1]+" OR P_id="+arr[2]+"";
            ResultSet rs = st.executeQuery(query);
            List<IRProblemsBean> list = new ArrayList<IRProblemsBean>();

            while (rs.next()) {
                IRProblemsBean irpb = new IRProblemsBean();
                
                
                irpb.setP_id(rs.getInt("P_id"));
                irpb.setP_des(rs.getString("P_des"));
                irpb.setF_Name(rs.getString("file"));
                irpb.setStatus1(rs.getString("status1"));
                irpb.setPdate(rs.getString("pdate"));
                irpb.setStatus2(rs.getString("status2"));
                
                
                list.add(irpb);
               
                
            }
         
            
            
            
            
            
            
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
    
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;  
        
        
    
    
    

    }          */

    @Override
    public int updateIRProblemsStatus3AsAadharid(int[] arr ,String aadharid ,String IRAadharid) {
        
        
         try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"IRProblems set status2='UnderConsideration', status3='"+aadharid+"' where P_id="+arr[0]+"  OR P_id="+arr[1]+"  OR P_id="+arr[2]+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
    }

    @Override
    public List selectIRProblemsWithStatus3AsAsAadharid(String aadharid ,String IRAadharid) {
        
              try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from "+IRAadharid+"IRProblems where Status3='"+aadharid+"'";
            ResultSet rs = st.executeQuery(query);
            List<IRProblemsBean> list = new ArrayList<IRProblemsBean>();

            while (rs.next()) {
                IRProblemsBean irpb = new IRProblemsBean();
                irpb.setP_id(rs.getInt("P_id"));
                irpb.setP_des(rs.getString("P_des"));
                irpb.setF_Name(rs.getString("file"));
                irpb.setStatus1(rs.getString("status1"));
                irpb.setPdate(rs.getString("pdate"));
                irpb.setStatus2(rs.getString("status2"));
                
                list.add(irpb);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
    }

    @Override
    public int updateStudentProblemsStatus2ASRejected(int id ,String IRAadharid) {
        
               try {
         Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"StudentProblems set status2='Rejected' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
    }

  

    @Override
    public int updateStudentProblemsStatus2ASAccepted(int id , String IRAadharid) {
        
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"StudentProblems set status2='Accepted' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
    }

    @Override
    public int updateIRProblemsStatus2AsSelected(int id ,String IRAadharid){
      
        
        
          try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"IRProblems set status2='Selected' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
    }

    @Override
    public int updateIRProblemsStatus2and3AsUnSelected(int id, String aadharid ,String IRAadharid) {
        
        
           try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"IRProblems set status2='UnSelected' , status3=NULL where status3='"+aadharid+"' AND P_id!="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
    }

    @Override
    public StudentSolutionsBean selectStudentSolution(int id ,String IRAadharid) {
        
        
                   try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from "+IRAadharid+"StudentSolutions where P_id="+id+"";
            ResultSet rs=st1.executeQuery(query);
            while (rs.next()) {
                StudentSolutionsBean stsb = new StudentSolutionsBean();
                stsb.setP_id(rs.getInt("P_id"));
                stsb.setS_des(rs.getString("S_des"));
                stsb.setF_Name(rs.getString("file"));
                stsb.setAadharid(rs.getString("aadharid"));
                stsb.setIRStatus(rs.getString("IRStatus"));
                stsb.setSdate(rs.getString("sdate"));
               
              
                return stsb;

            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return null;
        
        
        
        
        
        
        
        
    }

    @Override
    public int insertIntoStudentSolutions(StudentSolutionsBean stsb ,String aadharid ,String IRAadharid) {
        
        
            try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
       //     Statement statement = con.createStatement();         Not Confirmed
            
            String query = "insert into "+IRAadharid+"StudentSolutions(P_id,S_des,file,aadharid,IRStatus,sdate) values(?,?,?,?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
            
         
            
            pst.setInt(1, stsb.getP_id());
            pst.setString(2,stsb.getS_des());
            pst.setString(3,stsb.getF_Name());
            pst.setString(4,aadharid);
            pst.setString(5,stsb.getIRStatus());
            
            pst.setString(6,stsb.getSdate());
            
        
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
    }

    

   

   

    

    @Override
    public List selectAllStudentSolutionsWithUsername(String IRAadharid) {
       
        
         try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select P_id , S_des , StSs.file , StSs.aadharid , IRStatus ,sdate, username , StTa.file FROM "+IRAadharid+"StudentSolutions StSs , StudentTable StTa WHERE StSs.aadharid=StTa.aadharid";
            ResultSet rs = st.executeQuery(query);
            List<StudentSolutionsBean> list = new ArrayList<StudentSolutionsBean>();

            while (rs.next()) {
                StudentSolutionsBean stsb = new StudentSolutionsBean();
                stsb.setP_id(rs.getInt(1));
                stsb.setS_des(rs.getString(2));
                stsb.setF_Name(rs.getString(3));
                stsb.setAadharid(rs.getString(4));
                stsb.setIRStatus(rs.getString(5));
                stsb.setSdate(rs.getString(6));
                stsb.setUsername(rs.getString(7));
                stsb.setPhoto(rs.getString(8));
                list.add(stsb);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
        
        
        
        
        
    }

    @Override
    public StudentSolutionsBean selectStudentSolution(String aadharid ,String IRAadharid) {
       
        
                try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from "+IRAadharid+"StudentSolutions where aadharid='"+aadharid+"'";
            ResultSet rs=st1.executeQuery(query);
            while (rs.next()) {
                StudentSolutionsBean stsb = new StudentSolutionsBean();
                stsb.setP_id(rs.getInt("P_id"));
                stsb.setS_des(rs.getString("S_des"));
                stsb.setF_Name(rs.getString("file"));
               
                stsb.setIRStatus(rs.getString("IRStatus"));
                stsb.setSdate(rs.getString("sdate"));
                
              
                return stsb;

            }
            

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return null;
        
        
        
        
        
        
    }

    @Override
    public int updateStudentSolutionsIRStatusASUpdateIt(int id ,String IRAadharid) {
        
        
        
                 try {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"StudentSolutions set IRStatus='Update It' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
    }

    @Override
    public int updateStudentSolutionWithIRStatusAsUpdated(StudentSolutionsBean stsb ,String IRAadharid) {
        
        
        
        
        
             try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
         //   Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"StudentSolutions set S_des=? , file =? ,IRStatus=? WHERE P_id=?";
            
            PreparedStatement pst = con.prepareStatement(query);
        
           
            pst.setString(1, stsb.getS_des());
            pst.setString(2,stsb.getF_Name());
            pst.setString(3,stsb.getIRStatus());
             pst.setInt(4, stsb.getP_id());
            
            
        
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
        
        
        
    }

    @Override
    public int updateStudentSolutionsIRStatusAsAccepted(int id ,String IRAadharid) {
        
              try {
           Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"StudentSolutions set IRStatus='Accepted' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
        
        
        
        
    }

    @Override
    public int updateIRProblemsStatus1AsSolved(int id ,String IRAadharid) {
        
        
        
         try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update "+IRAadharid+"IRProblems set status1='Solved' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
    }

    @Override
    public int updateCAProblemsStatusAsSolved(int id) {
        
        
          try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String query = "update CAProblems set status='Solved' where P_id="+id+"";
            
            
            int x = statement.executeUpdate(query);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
    }

    @Override
    public int createIRProblems(String aadharid) {
        
        
       
            
            
            try {
         Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="create table "+aadharid+"IRProblems(P_id int(250),P_des varchar(10000),file varchar(500),status1 varchar(50),pdate varchar(50),status2 varchar(50), status3 varchar(50),CONSTRAINT "+aadharid+"IRProblems_pk PRIMARY KEY(P_id))";
            
            
            int x = statement.executeUpdate(sql);
            
            if (x > 0) {
            return x;
            }
            } catch (Exception ex) {
            ex.printStackTrace();
            }
            
            
            return 0;
            
            
            
            
            
            
        
        
        
        
        
        
        
        
    }

    @Override
    public int createStudentProblems(String aadharid) {
       
        
         try {
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="create table "+aadharid+"StudentProblems(P_id int(250),P_des varchar(10000),file varchar(500),aadharid varchar(30),pdate varchar(50),status2 varchar(50),CONSTRAINT "+aadharid+"StudentProblems_pk PRIMARY KEY(P_id),CONSTRAINT "+aadharid+"StudentProblems_fk FOREIGN KEY(aadharid) REFERENCES StudentTable(aadharid))";
            
            
            int x = statement.executeUpdate(sql);
           
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
    }

    @Override
    public int createStudentSolutions(String aadharid) {
        
        
        try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="create table "+aadharid+"StudentSolutions(P_id int(250),S_des varchar(10000),file varchar(500),aadharid varchar(30),IRStatus varchar(50),sdate varchar(50),CONSTRAINT "+aadharid+"StudentSolutions_pk PRIMARY KEY(P_id),CONSTRAINT "+aadharid+"StudentSolutions_fk FOREIGN KEY(aadharid) REFERENCES StudentTable(aadharid))";
            
            
            int x = statement.executeUpdate(sql);
           
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
    }

    @Override
    public int addColumnInCAProblems(String aadharid){
        
        
        
           
        try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="alter table CAProblems add column status"+aadharid+" varchar(50)";
            
            
            int x = statement.executeUpdate(sql);
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
    }

    @Override
    public ResultSet selectAllIRTableWhereStatusIsAccepted() {
        
        
        
       PreparedStatement pstm;
   ResultSet rs = null;
   
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            Connection con=null;
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
   
   
   try {
            pstm = con.prepareStatement("Select * from IRTable where status='Accepted'");
            //pstm.setString(1,null);
            rs=pstm.executeQuery();
            
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
        
        
        
        
    }

    @Override
    public String selectStudentTableReferenceId(String aadharid) {
        
        
        String id=null;
        PreparedStatement pstm;
   ResultSet rs = null;
   
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            Connection con=null;
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
   
   
   try {
            pstm = con.prepareStatement("Select * from StudentTable where aadharid='"+aadharid+"'");
            //pstm.setString(1,null);
            rs=pstm.executeQuery();
            while(rs.next()){
            id = rs.getString("referenceid");
            
            }
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
   
      return id; 
        
        
        
        
        
        
        
    }

    @Override
    public int insertIntoCAProblem(ProblemsUpByCABean pubcab) {
    
        
        
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
          //  Statement statement = con.createStatement();
            
            String query = "insert into CAProblems(P_id,P_des,file ,status,pdate) values(?,?,?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
        
            pst.setInt(1, pubcab.getP_id());
            pst.setString(2, pubcab.getP_des());
            pst.setString(3,pubcab.getF_Name());
            pst.setString(4,pubcab.getStatus());
            
            pst.setString(5,pubcab.getPdate());
            
        
            
            int x = pst.executeUpdate();
           
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
    }

    @Override
    public boolean checkForSuggestion(String StudentAadharid, String IRAadharid) {
        
        
           try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from "+IRAadharid+"IRProblems where status3='"+StudentAadharid+"'";
            ResultSet rs=st1.executeQuery(query);
            if(rs.next()) {
           
                return true;

            }
            

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return false;
        
        
        
        
        
        
        
        
    }

    @Override
    public List selectIRTable() {
        
        
         try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from IRTable";
            ResultSet rs = st.executeQuery(query);
            List<IRTableBean> list = new ArrayList<IRTableBean>();

            while (rs.next()) {
                IRTableBean irtb = new IRTableBean();
                irtb.setAadharid(rs.getString("aadharid"));
                irtb.setDesignation(rs.getString("designation"));
                irtb.setUsername(rs.getString("username"));
                irtb.setEmailadd(rs.getString("emailadd"));
                irtb.setContactno(rs.getString("contactno"));
                irtb.setCollege(rs.getString("college"));
                irtb.setAddress(rs.getString("address"));
                irtb.setCity(rs.getString("city"));
                irtb.setState(rs.getString("state"));
                irtb.setFile(rs.getString("file"));
                irtb.setStatus(rs.getString("status"));
                
                list.add(irtb);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
        
    }

    @Override
    public List selectAllCAProblemsWithIRTable() {
        
        
         try {
         Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            
            
            
            
            String query = "select *from IRTable where Status='Accepted'";
            ResultSet rs = st.executeQuery(query);
            List<IRTableBean> list = new ArrayList<IRTableBean>();
            
            while (rs.next()) {
                IRTableBean irtb = new IRTableBean();
                irtb.setAadharid(rs.getString("aadharid"));
                irtb.setUsername(rs.getString("username"));
                irtb.setDesignation(rs.getString("designation"));
                irtb.setEmailadd(rs.getString("emailadd"));
                irtb.setContactno(rs.getString("contactno"));
                irtb.setCollege(rs.getString("college"));
                irtb.setAddress(rs.getString("address"));
                irtb.setCity(rs.getString("city"));
                irtb.setState(rs.getString("state"));
                irtb.setFile(rs.getString("file"));
                irtb.setStatus(rs.getString("status"));
                
                list.add(irtb);
            }           
            
            
            
            String query1 = "select *from CAProblems";
            ResultSet rs1 = st.executeQuery(query1);
            
            List<ProblemsUpByCABean> list1 = new ArrayList<ProblemsUpByCABean>();
            

            while (rs1.next()) {
                ProblemsUpByCABean pubcab = new ProblemsUpByCABean();
                pubcab.setP_id(rs1.getInt("P_id"));
                pubcab.setP_des(rs1.getString("P_des"));
                pubcab.setF_Name(rs1.getString("file"));
                pubcab.setStatus(rs1.getString("status"));
                pubcab.setPdate(rs1.getString("pdate"));
                pubcab.setIrtbList(list);
                list1.add(pubcab);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list1.size());
            
            if (list1.size() > 0) {
                return list1;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
        
        
        
    }

    @Override
    public StudentSolutionsBean selectStudentSolutionWithUsername(int id, String IRAadharid) {
        
        
        
         try {
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            Statement st = con.createStatement();
            String query = "select P_id , S_des , StSs.file , StSs.aadharid , IRStatus ,sdate , username , StTa.file FROM "+IRAadharid+"StudentSolutions StSs , StudentTable StTa WHERE StSs.aadharid=StTa.aadharid and StSs.P_id="+id+" and IRStatus='Accepted'";
            ResultSet rs = st.executeQuery(query);
            

            while (rs.next()) {
                StudentSolutionsBean stsb = new StudentSolutionsBean();
                stsb.setP_id(rs.getInt(1));
                stsb.setS_des(rs.getString(2));
                stsb.setF_Name(rs.getString(3));
                stsb.setAadharid(rs.getString(4));
                stsb.setIRStatus(rs.getString(5));
                stsb.setSdate(rs.getString(6));
                stsb.setUsername(rs.getString(7));
                stsb.setPhoto(rs.getString(8));
                return stsb;
            }
            
          
           
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
        
        
        
        
    }

 

    @Override
    public List selectAllCAProblemsWithIRTableAndStatusInCAProblemsAsSolved() {
        
        
        
        
        try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            
            
            
            
            String query = "select *from IRTable";
            ResultSet rs = st.executeQuery(query);
            List<IRTableBean> list = new ArrayList<IRTableBean>();
            
            while (rs.next()) {
                IRTableBean irtb = new IRTableBean();
                irtb.setAadharid(rs.getString("aadharid"));
                irtb.setUsername(rs.getString("username"));
                irtb.setDesignation(rs.getString("designation"));
                irtb.setEmailadd(rs.getString("emailadd"));
                irtb.setContactno(rs.getString("contactno"));
                irtb.setCollege(rs.getString("college"));
                irtb.setAddress(rs.getString("address"));
                irtb.setCity(rs.getString("city"));
                irtb.setState(rs.getString("state"));
                irtb.setFile(rs.getString("file"));
                irtb.setStatus(rs.getString("status"));
                
                list.add(irtb);
            }           
            
            
            
            String query1 = "select *from CAProblems where status='Solved'";
            ResultSet rs1 = st.executeQuery(query1);
            
            List<ProblemsUpByCABean> list1 = new ArrayList<ProblemsUpByCABean>();
            

            while (rs1.next()) {
                ProblemsUpByCABean pubcab = new ProblemsUpByCABean();
                pubcab.setP_id(rs1.getInt("P_id"));
                pubcab.setP_des(rs1.getString("P_des"));
                pubcab.setF_Name(rs1.getString("file"));
                pubcab.setStatus(rs1.getString("status"));
                pubcab.setPdate(rs1.getString("pdate"));
                pubcab.setIrtbList(list);
                list1.add(pubcab);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list1.size());
            
            if (list1.size() > 0) {
                return list1;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
        
        
    }

    


    

    @Override
    public int insertIntoWinner1Solutions(int id, String aadharid, String IRAadharid) {
        
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);
            
         //   Statement statement = con.createStatement();
          
            
            String query = "insert into Winner1Solutions(P_id,aadharid,IRAadharid) values(?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
        
            pst.setInt(1, id);
            pst.setString(2,aadharid);
            pst.setString(3,IRAadharid);
           
        
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
        
        
    }

    @Override
    public int insertIntoWinner2Solutions(int id, String aadharid, String IRAadharid) {
        
        
        
          try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
        //    Statement statement = con.createStatement();
          
            
            String query = "insert into Winner2Solutions(P_id,aadharid,IRAadharid) values(?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
        
            pst.setInt(1, id);
            pst.setString(2,aadharid);
            pst.setString(3,IRAadharid);
           
        
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
        
        
        
        
        
        
        
        
        
        
    }

    @Override
    public int insertIntoWinner3Solutions(int id, String aadharid, String IRAadharid) {
        
        
        
        
          try {
         Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
         //   Statement statement = con.createStatement();
          
            
            String query = "insert into Winner3Solutions(P_id,aadharid,IRAadharid) values(?,?,?)";
            
            PreparedStatement pst = con.prepareStatement(query);
        
            pst.setInt(1, id);
            pst.setString(2,aadharid);
            pst.setString(3,IRAadharid);
           
        
            
            int x = pst.executeUpdate();
            
            if (x > 0) {
                return x;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        return 0;
        
        
      
        
    }

    @Override
    public Winner1SolutionsBean selectWinner1Solutions(int id) {
        
        
         try {
         Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select StTa.aadharid ,username ,college ,second_m ,third_m ,file , P_id ,IRAadharid from StudentTable StTa ,Winner1Solutions W1 where StTa.aadharid=W1.aadharid and P_id="+id+"";
            ResultSet rs = st.executeQuery(query);
            

            while (rs.next()) {
                Winner1SolutionsBean w1sb = new Winner1SolutionsBean();
                w1sb.setAadharid(rs.getString(1));
                w1sb.setUsername(rs.getString(2));
                w1sb.setCollege(rs.getString(3));
                w1sb.setSecond_m(rs.getString(4));
                w1sb.setThird_m(rs.getString(5));
                w1sb.setPhoto(rs.getString(6));
                w1sb.setP_id(rs.getInt(7));
                w1sb.setIraadharid(rs.getString(8));
               
                return w1sb;
            }
                    
          
           
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
        
        
    }

    @Override
    public Winner2SolutionsBean selectWinner2Solutions(int id) {
        
        
          try {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select StTa.aadharid ,username ,college ,second_m ,third_m ,file , P_id ,IRAadharid from StudentTable StTa ,Winner2Solutions W2 where StTa.aadharid=W2.aadharid and P_id="+id+"";
            ResultSet rs = st.executeQuery(query);
            

            while (rs.next()) {
                Winner2SolutionsBean w2sb = new Winner2SolutionsBean();
                w2sb.setAadharid(rs.getString(1));
                w2sb.setUsername(rs.getString(2));
                w2sb.setCollege(rs.getString(3));
                w2sb.setSecond_m(rs.getString(4));
                w2sb.setThird_m(rs.getString(5));
                w2sb.setPhoto(rs.getString(6));
                w2sb.setP_id(rs.getInt(7));
                w2sb.setIraadharid(rs.getString(8));
               
                return w2sb;
                
            }
                        
            
           
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
        
        
    }

    @Override
    public Winner3SolutionsBean selectWinner3Solutions(int id) {
        
        
        
        
            try {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select StTa.aadharid ,username ,college ,second_m ,third_m ,file , P_id ,IRAadharid from StudentTable StTa ,Winner3Solutions W3 where StTa.aadharid=W3.aadharid and P_id="+id+"";
            ResultSet rs = st.executeQuery(query);
            

            while (rs.next()) {
                Winner3SolutionsBean w3sb = new Winner3SolutionsBean();
                w3sb.setAadharid(rs.getString(1));
                w3sb.setUsername(rs.getString(2));
                w3sb.setCollege(rs.getString(3));
                w3sb.setSecond_m(rs.getString(4));
                w3sb.setThird_m(rs.getString(5));
                w3sb.setPhoto(rs.getString(6));
                w3sb.setP_id(rs.getInt(7));
                w3sb.setIraadharid(rs.getString(8));
               
                return w3sb;
                
            }
                        
           
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
    }

    @Override
    public List selectAllCAProblemsWithStatusInCAProblemsAsSolved() {
        
        
        
          try {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            
           
            String query1 = "select *from CAProblems where status='Solved'";
            ResultSet rs1 = st.executeQuery(query1);
            
            List<ProblemsUpByCABean> list1 = new ArrayList<ProblemsUpByCABean>();
            

            while (rs1.next()) {
                ProblemsUpByCABean pubcab = new ProblemsUpByCABean();
                pubcab.setP_id(rs1.getInt("P_id"));
                pubcab.setP_des(rs1.getString("P_des"));
                pubcab.setF_Name(rs1.getString("file"));
                pubcab.setStatus(rs1.getString("status"));
                pubcab.setPdate(rs1.getString("pdate"));
                list1.add(pubcab);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list1);
          
            System.err.println("" + list1.size());
            
            if (list1.size() > 0) {
                return list1;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
        
        
        
        
        
        
        
        
    }

    @Override
    public List selectAllStudents() {
       
        
     try {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from StudentTable where status='Accepted'";
            ResultSet rs = st.executeQuery(query);
            List<ShowAllStudentsBean> list = new ArrayList<ShowAllStudentsBean>();

            while (rs.next()) {
                ShowAllStudentsBean sasb = new ShowAllStudentsBean();
                sasb.setAadharid(rs.getString("aadharid"));
                sasb.setUsername(rs.getString("username"));
                sasb.setEmailadd(rs.getString("emailadd"));
                sasb.setContactno(rs.getString("contactno"));
                sasb.setCollege(rs.getString("college"));
                sasb.setAddress(rs.getString("address"));
                sasb.setCity(rs.getString("city"));
                sasb.setState(rs.getString("state"));
                sasb.setSecond_m(rs.getString("second_m"));
                sasb.setThird_m(rs.getString("third_m"));
                sasb.setF_Name(rs.getString("file"));
                sasb.setReferenceid(rs.getString("referenceid"));
                
                list.add(sasb);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;   
        
        
        
        
        
        
        
    }

    @Override
    public List selectAllIR() {
        
        
         try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);  
            Statement st = con.createStatement();
            String query = "select *from IRTable where status='Accepted'";
            ResultSet rs = st.executeQuery(query);
            List<IRTableBean> list = new ArrayList<IRTableBean>();

            while (rs.next()) {
                IRTableBean irtb = new IRTableBean();
                irtb.setAadharid(rs.getString("aadharid"));
                irtb.setUsername(rs.getString("username"));
                irtb.setDesignation(rs.getString("designation"));
                irtb.setEmailadd(rs.getString("emailadd"));
                irtb.setContactno(rs.getString("contactno"));
                irtb.setCollege(rs.getString("college"));
                irtb.setAddress(rs.getString("address"));
                irtb.setCity(rs.getString("city"));
                irtb.setState(rs.getString("state"));
                irtb.setFile(rs.getString("file"));
                
                
                list.add(irtb);
            }
                         System.out.println("999999999999999999999999999999999999999  "+list);
          
            System.err.println("" + list.size());
            
            if (list.size() > 0) {
                return list;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;   
        
        
        
        
        
        
        
        
        
        
    }

    @Override
    public ResultSet selectCATable() {
        
             PreparedStatement pstm;
   ResultSet rs = null;
   
      try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            Connection con=null;
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
  
   
   try {
            pstm = con.prepareStatement("Select * from CATable");
            //pstm.setString(1,null);
            
            rs=pstm.executeQuery();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs; 
        
        
        
        
        
        
        
        
    }

    @Override
    public IRTableBean selectIRTable(String IRAadharid) {
        
        
        
                PreparedStatement pstm;
   ResultSet rs = null;
   
     try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            Connection con=null;
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
              
        IRTableBean irtb = new IRTableBean();
   try {
            pstm = con.prepareStatement("Select * from IRTable where aadharid='"+IRAadharid+"'");
            //pstm.setString(1,null);
            rs=pstm.executeQuery();
           while(rs.next()){
           irtb.setUsername(rs.getString("username"));
           irtb.setDesignation(rs.getString("designation"));
           irtb.setEmailadd(rs.getString("emailadd"));
           irtb.setContactno(rs.getString("contactno"));
           irtb.setCollege(rs.getString("college"));
           irtb.setAddress(rs.getString("address"));
           irtb.setCity(rs.getString("city"));
           irtb.setState(rs.getString("state"));
           irtb.setFile(rs.getString("file"));
           irtb.setStatus(rs.getString("status"));
           
           }
           
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return irtb; 
        
        
        
        
        
        
        
        
        
    }

    @Override
    public StudentTableBean selectStudentTable(String StudentAadharid) {
        
        
        
           
                PreparedStatement pstm;
   ResultSet rs = null;
   
       try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            Connection con=null;
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        StudentTableBean sttb = new StudentTableBean();
   try {
            pstm = con.prepareStatement("Select * from StudentTable where aadharid='"+StudentAadharid+"'");
            //pstm.setString(1,null);
            rs=pstm.executeQuery();
           while(rs.next()){
           sttb.setUsername(rs.getString("username"));
           sttb.setEmailadd(rs.getString("emailadd"));
           sttb.setContactno(rs.getString("contactno"));
           sttb.setCollege(rs.getString("college"));
           sttb.setAddress(rs.getString("address"));
           sttb.setCity(rs.getString("city"));
           sttb.setState(rs.getString("state"));
           sttb.setFile(rs.getString("file"));
           
           }
           
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return sttb; 
        
        
        
        
        
        
        
        
        
    }

    @Override
    public CATableBean selectCAInformation() {
        
        
                PreparedStatement pstm;
   ResultSet rs = null;
   
       try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            Connection con=null;
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
             
        CATableBean catb = new CATableBean();
   try {
            pstm = con.prepareStatement("Select * from CATable");
            //pstm.setString(1,null);
            rs=pstm.executeQuery();
           while(rs.next()){
           catb.setAadharid(rs.getString("aadharid"));    
           catb.setUsername(rs.getString("username"));
           catb.setEmailadd(rs.getString("emailadd"));
           catb.setContactno(rs.getString("contactno"));
           catb.setAddress(rs.getString("address"));
           catb.setCity(rs.getString("city"));
           catb.setState(rs.getString("district"));
           catb.setState(rs.getString("state"));
           catb.setFile(rs.getString("file"));
           
           }
           
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return catb; 
        
        
        
        
        
        
        
    }

    @Override
    public void truncateWinner1Solutions() {
        
        
         try {
           Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="truncate table Winner1Solutions";
            
            
            int x = statement.executeUpdate(sql);
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
     
    }

    @Override
    public void dropStudentSolutions(String IRAadharid) {
        
        
        
          try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="drop table "+IRAadharid+"StudentSolutions";
            
            
            int x = statement.executeUpdate(sql);
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
       
        
    }

    @Override
    public void dropStudentProblems(String IRAadharid) {
      
        
        
          try {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="drop table "+IRAadharid+"StudentProblems";
            
            
            int x = statement.executeUpdate(sql);
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
        
        
        
    }

    @Override
    public void dropIRProblems(String IRAadharid) {
        
        
        
          try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="drop table "+IRAadharid+"IRProblems";
            
            
            int x = statement.executeUpdate(sql);
           
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
        
        
    }

    @Override
    public void dropIRAadharidStatusFromCAProblems(String IRAadharid) {
        
         try {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="alter table CAProblems drop column  status"+IRAadharid+"";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
        
        
    }

    @Override
    public void truncateCAProblems() {
        
        
        try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="truncate table CAProblems";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
    }

    @Override
    public void truncateStudentTable() {
        
        
        try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="truncate table StudentTable";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
        
        
        
    }

    @Override
    public void truncateIRTable() {
        
        try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="truncate table IRTable";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
        
        
        
    }

    @Override
    public void truncateWinner2Solutions() {
        
         try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="truncate table Winner2Solutions";
            
            
            int x = statement.executeUpdate(sql);
            
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
    }

    @Override
    public void truncateWinner3Solutions() {
        
        
         try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="truncate table Winner3Solutions";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
     
    }

    @Override
    public void createWinner1Solutions() {
        
        
          try {
         Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="create table IF NOT EXISTS Winner1Solutions(P_id int(250) ,aadharid varchar(30) ,IRAadharid varchar(30), CONSTRAINT Winner1Solutions_pk PRIMARY KEY(P_id) ,CONSTRAINT Winner1Solutions_fk FOREIGN KEY(aadharid) REFERENCES StudentTable(aadharid))";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
    }

    @Override
    public void createWinner2Solutions() {
        
           try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="create table IF NOT EXISTS Winner2Solutions(P_id int(250) ,aadharid varchar(30) ,IRAadharid varchar(30), CONSTRAINT Winner2Solutions_pk PRIMARY KEY(P_id) ,CONSTRAINT Winner2Solutions_fk FOREIGN KEY(aadharid) REFERENCES StudentTable(aadharid))";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
    }

    @Override
    public void createWinner3Solutions() {
        
           try {
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="create table IF NOT EXISTS Winner3Solutions(P_id int(250) ,aadharid varchar(30) ,IRAadharid varchar(30) , CONSTRAINT Winner3Solutions_pk PRIMARY KEY(P_id) ,CONSTRAINT Winner3Solutions_fk FOREIGN KEY(aadharid) REFERENCES StudentTable(aadharid))";
            
            
            int x = statement.executeUpdate(sql);
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
    }

    @Override
    public void dropAllWinnersTables() {
        
        
         try {
        Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="drop table Winner1Solutions , Winner2Solutions ,Winner3Solutions";
            
            
            int x = statement.executeUpdate(sql);
            
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
    }

    @Override
    public boolean checkForSelectedProblemInStudentProblems(String StudentAadharid, String IRAadharid) {
        
        
        
                
           try {
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from "+IRAadharid+"StudentProblems where aadharid='"+StudentAadharid+"'";
            ResultSet rs=st1.executeQuery(query);
            if(rs.next()) {
           
                return true;

            }
            

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return false;
        
        
        
        
        
        
        
        
        
        
        
        
    }

    @Override
    public boolean checkForSelectedProblemInIRProblems(String StudentAadharid, String IRAadharid) {
        
        
        
        
        
        
            try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from "+IRAadharid+"IRProblems where Status3='"+StudentAadharid+"'";
            ResultSet rs=st1.executeQuery(query);
            if(rs.next()) {
           
                return true;

            }
           

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return false;
        
        
        
        
        
        
        
        
    }

    

    

    @Override
    public boolean checkForEnableOrDisableOfAssignPoints(String StudentAadharid) {
        
        
        boolean h=false,i=false,j=false;
        
        try {
         Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            
            
            Statement st1 = con.createStatement();
            String query1 = "show tables like 'Winner3Solutions' ";
            ResultSet rs1=st1.executeQuery(query1);
            
            if(rs1.next()) {
           Statement st2 = con.createStatement();
            String query2 = "select *from Winner3Solutions where aadharid='"+StudentAadharid+"'";
            ResultSet rs2=st2.executeQuery(query2);
            
            if(rs2.next()) {
           
                h=true;

            }
            
            
            }
            
            
            
            
            Statement st3 = con.createStatement();
            String query3 = "show tables like 'Winner2Solutions' ";
            ResultSet rs3=st3.executeQuery(query3);
            
            if(rs3.next()) {
           Statement st4 = con.createStatement();
            String query4 = "select *from Winner2Solutions where aadharid='"+StudentAadharid+"'";
            ResultSet rs4=st4.executeQuery(query4);
            
            if(rs4.next()) {
           
                i=true;

            }
            
            }
            
            
            
            
            
            
             Statement st5 = con.createStatement();
            String query5 = "show tables like 'Winner1Solutions' ";
            ResultSet rs5=st5.executeQuery(query5);
            
            if(rs5.next()) {
           Statement st6 = con.createStatement();
            String query6 = "select *from Winner1Solutions where aadharid='"+StudentAadharid+"'";
            ResultSet rs6=st6.executeQuery(query6);
            
            if(rs6.next()) {
           
                j=true;

            }
            
            }
            
            
            
            
            if(h==true||i==true||j==true){
           return true;
        }
           
            
         

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return false;
        
        
        
        
        
        
    }

    @Override
    public boolean checkForEnableOrDisableOf1PointRadioButton(int Pid) {
        
        
        
        boolean h=false;
        
        try {
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            
            
             Statement st1 = con.createStatement();
            String query1 = "show tables like 'Winner1Solutions' ";
            ResultSet rs1=st1.executeQuery(query1);
            
            if(rs1.next()) {
           Statement st2 = con.createStatement();
            String query2 = "select *from Winner1Solutions where P_id='"+Pid+"'";
            ResultSet rs2=st2.executeQuery(query2);
            
            if(rs2.next()) {
           
                h=true;

            }
            
            }
           
            
            
            
            if(h==true){
           return true;
        }
            
            
            

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return false;
        
        
        
        
    }

    @Override
    public boolean checkForEnableOrDisableOf2PointsRadioButton(int Pid) {
        
        
        
                boolean h=false;
        
        try {
        Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            
            
             Statement st1 = con.createStatement();
            String query1 = "show tables like 'Winner2Solutions' ";
            ResultSet rs1=st1.executeQuery(query1);
            
            if(rs1.next()) {
           Statement st2 = con.createStatement();
            String query2 = "select *from Winner2Solutions where P_id='"+Pid+"'";
            ResultSet rs2=st2.executeQuery(query2);
            
            if(rs2.next()) {
           
                h=true;

            }
            
            }
            
            
            
            
            
            if(h==true){
           return true;
        }
            
            

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return false;
        
        
        
        
        
    }

    @Override
    public boolean checkForEnableOrDisableOf3PointsRadioButton(int Pid) {
        
                boolean h=false;
        
        try {
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            
            
             Statement st1 = con.createStatement();
            String query1 = "show tables like 'Winner3Solutions' ";
            ResultSet rs1=st1.executeQuery(query1);
            
            if(rs1.next()) {
           Statement st2 = con.createStatement();
            String query2 = "select *from Winner3Solutions where P_id='"+Pid+"'";
            ResultSet rs2=st2.executeQuery(query2);
            
            if(rs2.next()) {
           
                h=true;

            }
            
            }
            
            
            
            
            
            
            if(h==true){
           return true;
        }
          
          
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return false;
        
        
    }

    @Override
    public ResultSet selectIRTableWhereIRAadharidIs200000000000() {
        
       PreparedStatement pstm;
   ResultSet rs = null;
   
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
            Connection con=null;
        try {
            con = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(MethodOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
   
   
   try {
            pstm = con.prepareStatement("Select * from IRTable where aadharid='200000000000'");
            //pstm.setString(1,null);
            rs=pstm.executeQuery();
           
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
   
   
      return rs;  
        
        
        
        
    }

    @Override
    public void deleteFromStudentTableWhereReferenceIdIs200000000000() {
        
        
         try {
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="delete from StudentTable where referenceid='200000000000'";
            
            
            int x = statement.executeUpdate(sql);
           
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
    }

    @Override
    public void deleteFromIRTableWhereAadharidIs200000000000() {
        
         try {
           Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="delete from IRTable where aadharid='200000000000'";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
        
        
    }

    @Override
    public void deleteFromCAProblemsWhereP_idIs11() {
        
        
        
        try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="delete from CAProblems where P_id=11 OR P_id>11";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
    }

    @Override
    public void updateStatusOfCAProblemsAsUnSolved() {
        
        
         
        try {
          Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, username, password);
            
            Statement statement = con.createStatement();
            
            String sql="update CAProblems set Status='UnSolved'";
            
            
            int x = statement.executeUpdate(sql);
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
        
        
        
        
    }

    @Override
    public StudentSolutionsBean selectStudentSolutionOfWinners(int id, String IRAadharid) {
        
        
                 try {
           Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url, username, password);
            Statement st1 = con.createStatement();
            String query = "select *from "+IRAadharid+"StudentSolutions where P_id="+id+"";
            ResultSet rs=st1.executeQuery(query);
            while (rs.next()) {
                StudentSolutionsBean stsb = new StudentSolutionsBean();
                stsb.setP_id(rs.getInt("P_id"));
                stsb.setS_des(rs.getString("S_des"));
                stsb.setF_Name(rs.getString("file"));
                stsb.setAadharid(rs.getString("aadharid"));
                stsb.setIRStatus(rs.getString("IRStatus"));
                stsb.setSdate(rs.getString("sdate"));
               
              
                return stsb;

            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        
           return null;
        
        
        
        
        
    }

    

    

   

   
    
    
}