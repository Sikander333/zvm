



<%@page import="Bean.StudentSolutionsBean"%>
<%@page import="Bean.StudentProblemsBean"%>
<%@page import="DAO.MethodDeclarations"%>
<%@page import="java.util.ListIterator"%>
<%@page import="DAO.MethodOperation"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
  
  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script>
  $(document).ready(function() {
    $("#example").dataTable();
  });
  </script>     
        
  <style>
      
       #frame_size{
                width: 500px;
                height: 500px;
            }
         .uploaded_problems_sticky{
                position:sticky;
                top:0;
              
                
            }
            
            @media screen and (max-width:1600px){
                a.font_size{
                    font-size:20px;
                }   
                div.card_width{
                    width:40%;
                }
                
            } 
            @media screen and (min-width:1601px){
                a.font_size{
                    font-size:40px;
                } 
                div.card_width{
                    width:20%;
                }
            } 
  </style>
              
        
        
        
        
        
    </head>
    <body>
        
        <%
           
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("aadharidFromcollectorHome")!=null && session.getAttribute("passwordFromcollectorHome")!=null){
          
        %>
       
        
        <jsp:include page="collectorNavbar.jsp" /> 
        
    
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
               
                
                <div class="col-lg-12"  style="height:899px;background-color: #88bdbc; overflow-y:scroll;padding:0px;">
                        
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:30px;margin-bottom:30px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>Settings</i></h2>
                                             
                                                            
                                              </div>
                                             
                                  </div>
                       <%
                        String str="";
    str =  request.getParameter("value").toString();
   if(str.equals("0"))
   {
                       
                       %>
     
    
                    <div align="center">
                    <div class="card btn btn-dark card_width" style="height:40%;padding:20px;" >
                        <span>
                          
              <!--           <span class="fa fa-skull-crossbones fa-10x" style="color:red;"></span>            -->
                            
                        
                         <a style = "padding:20px;color:red;text-decoration:none;" href="formatPortalController" class="font_size">
                             <i  class="fa fa-skull-crossbones fa-6x" style="color:red;"></i>
                             <b>Format Portal</b></a>
                       </span>
                        
                    </div>
                        
                        
                        

                                  
	
                 
      </div>          
               
      
   
                       <%
   }else if(str.equals("1")){
   
   %>
                   <div align="center">  
                           <div class="card shadow-lg" align="center" style="background-color:white;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;width:80%;margin-top:80px;" >
                           
                             
                       
                           <div class="card-body">
                               
                            
                               
                               <span ><i class="fa fa-check-circle fa-10x " style="color:lightgrey;margin-top:60px;"></i></span>
                                <h1 align="center" style="color:lightgrey;"> Portal has been formatted !!  </h1>     
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
           
               response.sendRedirect("CALogin.jsp?value=0");
           
           }
       %>                      
                       
     
    </body>
</html>





















        
        
       
      
        
               
        
  