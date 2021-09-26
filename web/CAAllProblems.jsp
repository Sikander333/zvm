
<%@page import="Bean.ProblemsUpByCABean"%>
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
            
             @media screen and (max-width:1600px){
                 div.outermost_card_padding{
                     padding:10px;
                     width:90%;
                 }
                 div.margin_left{
                     margin-left:32px;
                     width:30%;
                 }
                 div.font_size_upper{
                     font-size: 35px;
                 }
                 div.font_size_lower{
                     font-size: 25px;
                 }
               }
               @media screen and (min-width:1601px){
                 div.outermost_card_padding{
                     padding:20px;
                     width:60%;
                 }
                 div.margin_left{
                     margin-left:405px;
                     width:20%;
                 }
                  div.font_size_upper{
                     font-size: 50px;
                 }
                 div.font_size_lower{
                      font-size:30px;
                 }
               }
  </style>
        
        
        
        
        
        
    </head>
    <body>
        
         <%
           response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
           if(session.getAttribute("IRAadharidFromIRHome")!=null && session.getAttribute("passwordFromIRHome")!=null){
            session.setAttribute("IRAadharidFromCAAllProblems",session.getAttribute("IRAadharidFromIRHome"));
            session.setAttribute("passwordFromCAAllProblems",session.getAttribute("passwordFromIRHome"));
           
       %>
        
        <jsp:include page="IRNavbar.jsp" /> 
        
        
        
        
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
                
                
                <div class="col-lg-12"  style="height:899px;background-color: #88bdbc;overflow-y:scroll;padding:0px;">
                        
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:40px;margin-bottom:40px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>All Problems of Collector Assistant</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
                      <% 
                           
                           
  

                        List li = mo.selectAllCAProblems();
                        if (li != null) {

                            ListIterator lit = li.listIterator();
                            while (lit.hasNext()) {
                                ProblemsUpByCABean pubcab = (ProblemsUpByCABean) lit.next();
                      
%>
                              
 
                         
                                                       
                                                      
                                      
                                        
                                        
                        <div class="card margin_left" style="background-color:#112d32;color:white;" >
                            <div align="center"> 
                                                        <div class="card-body font_size_upper"  >
                                                            <%=pubcab.getP_id()%>
                                                        </div>
                                                        <div   style="padding-bottom:20px;padding-left:15px;padding-right: 15px;" class="font_size_lower" >Problem Id</div>
                         </div>
                                                    </div>                       
                                                        
                       <div align="center">                                 
                    
                                   
                                                                   
                       <div class="card shadow-lg outermost_card_padding " style="margin-bottom:70px;background-color: #112d32;">
                           <div class="card" style="background-color:#f3f8f8;padding-top:20px;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;">
                           
                       
                           <div class="card-body">
                                          
                                                 <h1 align="center">Problem Description</h1>
                               <%= pubcab.getP_des()%>
                               
                               
                              <hr>
                                   <div class="row" style="margin-left:10px;"><h4>Status</h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;<h3><span class="badge badge-secondary"><%=pubcab.getStatus()%></span></h3></div>
                               <div class="row" style="margin-left:10px;"><h4>Uploaded&nbsp;:&nbsp;<%=pubcab.getPdate()%></h4></div>
                                   
                              
                              
                           </div>
                        
                               <div class="card-footer" >
                                             
                                            <div class="row" >
                                               <div class="col-6"><a class="btn btn-info btn-block " href="viewNewCAProblems.jsp?id=<%= pubcab.getP_id()%>" style="text-decoration:none; border: none;">View</a></div> 
                                               <div class="col-6"><div style="cursor:not-allowed;"><a class="btn btn-success btn-block" href="AdminPanel/CAControl/Updatepubca.jsp?id=<%= pubcab.getP_id()%>" style="text-decoration:none;border:none;pointer-events:none;">Forward   <i class="fa fa-forward"></i></a></div></div> 
                                              
                                            </div>
                                    </div>
                             </div>     


                                   


                             
                           
                              
                        </div>
                          
                                               
                                               
                   
                                               
                                               

                                   


                             
                           
                              
                 
                         </div>

                    <%
                            }
                        }else if(li==null){
                        
                        
                        %>
                    
                      <div align="center">  
                           <div class="card shadow-lg" align="center" style="background-color:white;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;width:80%;margin-top:80px;" >
                           
                             
                       
                           <div class="card-body">
                               
                            
                               
                               <span ><i class="fa fa-folder-open fa-10x " style="color:lightgrey;margin-top:60px;"></i></span>
                                <h1 align="center" style="color:lightgrey;">  CA has not uploaded any problem yet !!  </h1>     
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
