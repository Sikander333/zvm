
<%@page import="java.util.ListIterator"%>
<%@page import="DAO.MethodOperation"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="mo" class="DAO.MethodOperation" scope="page"/>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
	<meta http-equiv="X-UA-compatible" content = "IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel ="stylesheet" type ="text/css" href="bootstrap.min.css">
        <script src="jquery-3.3.1.min.js"></script>
        <script type = text/javascript src="bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        
        <jsp:include page="title.jsp" /> 
        
        
        
<link rel=stylesheet type = text/css href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   



 <!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
-->

 <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
<script type="text/javascript"  src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript"  src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
  
 
        
  <style>
      
       #frame_size{
                width: 500px;
                height: 500px;
            }
         .uploaded_problems_sticky{
                position:sticky;
                top:0;
              
                
            }
  </style>
        
        
        
        
        
        
    </head>
    <body>
        
         <%
           
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("IRAadharidFromIRHome")!=null && session.getAttribute("passwordFromIRHome")!=null){
           
        %>
        
        <jsp:include page="IRNavbar.jsp" /> 
        
        
        
        
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
                
                
                <div class="col-lg-12"  style="height:899px;background-color: #88bdbc;overflow-y:scroll;padding:0px;">
                        
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:40px;margin-bottom:40px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>New Student Requests</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
                      <% 
                           
                           

                        String IRAadharid= session.getAttribute("IRAadharidFromIRHome").toString();
                        
                        session.setAttribute("IRAadharidFromNewStudentRequest",IRAadharid);
                        session.setAttribute("passwordFromNewStudentRequest",session.getAttribute("passwordFromIRHome"));
                        ResultSet rs = mo.newStudentRequest(IRAadharid);
                  
                        if (rs != null) {

                           
                            while (rs.next()) {
                              
                                
                      
                      
                      
%>
                              
 
                         
                                                       
                                                      
                                      
                                        
                                        
                                              
                                                        
                                                        
                      <div align="center">  
                           <div class="card shadow-lg" align="center" style="background-color:white;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;width:80%;margin-bottom:40px;" >
                           
                             
                       
                           <div class="card-body">
                               
                             <div class="row">  
                                 <div class=" col-lg-4  ">
                                     
                                      <img src="image_ddp/<%=rs.getString(12)%>" class="rounded-circle " style="height:400px;width:400px;margin-top:25px;" > 
                              
                                   </div>
                                   
                                   <div class="col-lg-5">
                                          <table style="font-size:25px;margin-top:30px;">
                                              <tr><td>Name</td><td>:&nbsp</td><td><%=rs.getString(2) %></td></tr>
                                              <tr><td>emailadd</td><td>:&nbsp</td><td><%=rs.getString(3) %></td></tr>
                                              <tr><td>contact no</td><td>:&nbsp</td><td><%=rs.getString(4) %></td></tr>
                                              <tr><td>college</td><td>:&nbsp</td><td><%=rs.getString(5) %></td></tr>
                                              <tr><td>address</td><td>:&nbsp</td><td><%=rs.getString(6) %></td></tr>
                                              <tr><td>city</td><td>:&nbsp</td><td><%=rs.getString(7) %></td></tr>
                                              <tr><td>state</td><td>:&nbsp</td><td><%=rs.getString(8) %></td></tr>
                                               <tr><td>second member</td><td>:&nbsp</td><td><%=rs.getString(9) %></td></tr>
                                                <tr><td>third member</td><td>:&nbsp</td><td><%=rs.getString(10) %></td></tr>
                                          </table>
                                      </div>  
                                          <div class="col-lg-3">
                                              <a style = "font-size : 40px;padding:20px;margin-top:150px;" class="btn btn-dark shadow-lg" href="assignStudentStatus.jsp?id=<%= rs.getString(1) %>">Assign Status</a>
                                              
                                          </div>
                                          
                                 </div>         
                           </div>
                                
                        
                               
                             </div>     


                                   


                             
                           
                              
                   </div>         


                    <%
                            }
                       
                        
                        }else if(rs==null){
                        
                        
                        %>
                    
                      <div align="center">  
                           <div class="card shadow-lg" align="center" style="background-color:white;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;width:80%;margin-top:80px;" >
                           
                             
                       
                           <div class="card-body">
                               
                            
                               
                               <span ><i class="fa fa-folder-open fa-10x " style="color:lightgrey;margin-top:60px;"></i></span>
                                <h1 align="center" style="color:lightgrey;">  No New Requests Found !!     </h1>     
                           </div>
                                
                        
                               
                             </div>     


                                   


                             
                           
                              
                   </div>   
                    
                    
                    
                    <%
                        
                        
                        
                        
                        
                        
                        }
                    %>    
                     
                     
                     
                     
                     
                     
                                              
                                             
                                                   
                                                  
                                             
                         

                     </div>
                
                
                
                
                
            </div>
        
        </div>
        
        
        
        
        
        
    <%
           }else{
           
               response.sendRedirect("IRLogin.jsp?value=0");
           
           }
       %>       
      






    </body>
</html>
