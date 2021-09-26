
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
                
                div.card_width{
                    width:90%;
                }
                  tr.sd_row_part2{
                    display:none;
                } 
                tr.view_button_table{
                    display:none;
                }
                
            }
             @media screen and (min-width:1601px){
                 div.card_width{
                    width:80%;
                }
                tr.sd_row_part1{
                    display:none;
                } 
                div.view_button_div{
                    display:none;
                }
            }
  </style>
        
        
        
        
        
        
    </head>
    <body>
        
        <%
           response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
           if(session.getAttribute("IRAadharidFromIRHome")!=null && session.getAttribute("passwordFromIRHome")!=null){
             session.setAttribute("IRAadharidFromVerifiedSolutions",session.getAttribute("IRAadharidFromIRHome"));
             session.setAttribute("passwordFromVerifiedSolutions",session.getAttribute("passwordFromIRHome"));
       %>
        
        <jsp:include page="IRNavbar.jsp" /> 
        
        
        
        
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
                
                
                <div class="col-lg-12"  style="height:899px;background-color: #88bdbc;overflow-y:scroll;padding:0px;">
                        
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:40px;margin-bottom:40px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>Verified Solutions</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
                      <% 
                           
                           
                    MethodDeclarations md = new MethodOperation();
                    String IRAadharid=session.getAttribute("IRAadharidFromIRHome").toString();     
                    List li =md.selectAllStudentSolutionsWithUsername(IRAadharid);
                     if (li != null) {

                           ListIterator lit = li.listIterator();
                            while (lit.hasNext()) {
                               StudentSolutionsBean stsb = (StudentSolutionsBean) lit.next();
                              if(stsb.getIRStatus().equals("Accepted")){
                            
                            
                            
                            %>
                    
                    
                                        <div align="center">  
                           <div class="card shadow-lg card_width" align="center" style="background-color:white;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;;margin-bottom:40px;" >
                           
                             
                       
                           <div class="card-body">
                               
                             <div class="row">  
                                 <div class=" col-lg-4 ">
                                     <div>
                                      <img src="image_ddp/<%=stsb.getPhoto()%>" class="rounded-circle " style="height:400px;width:400px;margin-top:25px;" > 
                                       </div>
                                       <div style="padding:20px;">
                                         <h1><b><%=stsb.getUsername() %></b> </h1>
                                       
                                       </div>
                                   </div>
                                   
                                   <div class="col-lg-5 ">
                                  
                                          <table style="font-size:25px;margin-top:30px;">
                                              <tr><td  >Problem Id </td><td>&nbsp;</td><td><%=stsb.getP_id()%></td></tr>
                                              <tr class="sd_row_part1"><td  colspan="3" align="center"><hr><b>Solution Description</b></td></tr>
                                              <tr class="sd_row_part1" ><td colspan="3" ><%=stsb.getS_des()%><hr></td></tr>
                                              <tr class="sd_row_part2" ><td align="top">Solution Description &nbsp;</td><td >&nbsp;</td><td><%=stsb.getS_des()%></td></tr>
                                              <tr><td>Solution Date</td><td>&nbsp;</td><td><%=stsb.getSdate()%></td></tr>
                                               <tr><td>Status</td><td>&nbsp;</td><td><h2><span class="badge badge-secondary"><%=stsb.getIRStatus()%></span></h2></td></tr>
                                              <tr class="view_button_table"><td><a class="btn btn-info" href="viewVerifiedSolutionsForIR.jsp?id=<%= stsb.getP_id()%>"  style="text-decoration:none;width:200px;"><h2>View</h2></a></td></tr> 
                                          </table>
                                              
                                      </div>  
                                          <div class="col-lg-3">
                                              
                                                <div class="view_button_div" ><a style = "font-size : 40px;padding:20px;margin-top:130px;width:250px;height:100px;" class="btn btn-info shadow-lg" href="viewVerifiedSolutionsForIR.jsp?id=<%= stsb.getP_id()%>">View</a></div>
                                              
                                              <div style="cursor:not-allowed;"><a style = "font-size : 40px;padding:20px;margin-top:50px;width:250px;height:100px;pointer-events:none;" class="btn btn-dark shadow-lg" href="acceptStudentSolutionsController?id=<%= stsb.getP_id() %>&aadharid=<%= stsb.getAadharid()%>">Accept</a></div>
                                               <div style="cursor:not-allowed;"><a style = "font-size : 40px;padding:20px;margin-top:50px;width:250px;height:100px;pointer-events:none;" class="btn btn-dark shadow-lg" href="reviewStudentSolutionController?aadharid=<%= stsb.getAadharid()%>&P_id=<%=stsb.getP_id()%>">Reconsider</a></div>
                                          </div>
                                          
                                 </div>         
                           </div>
                                
                        
                               
                             </div>     


                                   


                             
                           
                              
                   </div>     
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                    
                    
                    
                    
                    <%
                            
                            
                            
                            
                            }
                               
                          
                               
                            }
                        }else if(li==null){
                        
                        
                        %>
                    
                        <div align="center">  
                           <div class="card shadow-lg card_width" align="center" style="background-color:white;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;margin-top:80px;" >
                           
                             
                       
                           <div class="card-body">
                               
                            
                               
                               <span ><i class="fa fa-folder-open fa-10x " style="color:lightgrey;margin-top:60px;"></i></span>
                                <h1 align="center" style="color:lightgrey;">  No Verified Solution found !!    </h1>     
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
