
<%@page import="Bean.ShowAllStudentsBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.MethodDeclarations"%>
<%@page import="DAO.MethodOperation"%>
<%@page import="Bean.StudentSolutionsBean"%>
<%@page import="Bean.IRTableBean"%>
<%@page import="Bean.ProblemsUpByCABean"%>
<%@page import="java.util.ListIterator"%>

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
       
    <style>
      
      .collapsible_button1{
          background-color:#112d32; 
        color:white 
        
      }  
.active, .collapsible_button1:hover {
    background-color: #1b474f;
 // color: lightgreen;
}




.collapsible_button1:after{
  content: '\002B';
   font-size:60px;
   color:white;
  
  
}
.active:after{
  content: "\2212";
 
}
@media screen and (max-width:1600px){
    div.card_width{
        width:90%;
    } 
    div.font_size{
        font-size:20px;
    }
    table.table_fontsize{
       font-size:3vw; 
    }
}
@media screen and (min-width:1601px){
    div.card_width{
        width:60%;
    }   
    div.font_size{
       font-size:30px; 
    }
    table.table_fontsize{
        font-size:1vw;
    }
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
                                             
                                               <h2 align="center"><i>All Institute Representative</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
                      <% 
                           
                           
  
                     MethodDeclarations md=new MethodOperation();
                   
                       List lisacapwirt = md.selectAllIR();
                        if (lisacapwirt != null) {

                            ListIterator lit = lisacapwirt.listIterator();
                            while (lit.hasNext()) {
                                IRTableBean irtb = (IRTableBean) lit.next();
                      
%>
                              
 
                         
                                                       
                                                      
                                      
                                        
                                        
                                              
                                                        
                                                     
                    
                          <!--
                           <button data-toggle="collapse" data-target="#demo" >
                                
                           </button>
                          -->
                          
                              <div align="center">           
                                  
                                    
                                   <div class="card shadow-lg card_width" align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:0px;font-size:20px;margin-top:30px;border:none;padding-top:0px;padding-bottom:0px;" >
                           
                         <div class="card-body "  >
                               
                              
                             
                              <table align="left" width="60%">
                                    <tr><td ><img src="image_ddp/<%=irtb.getFile()%>" class="rounded-circle " style="height:200px;width:200px;margin-top:0px;" ></td><td ><div align="center" class="font_size"><%=irtb.getUsername()%><br><%=irtb.getDesignation()%><br><%=irtb.getCollege()%></div> </td></tr>
                                    
                                </table>   
                                    
                              <div class="card collapsible_button1 rounded-square" style="width:10%;cursor:pointer;max-height: 100px;margin-top:70px;"  data-toggle="collapse" data-target="#IndividualStudent<%=irtb.getAadharid()%>" ></div>   
                               
                              
                              
                              
                              
                    
                              
                              
                              
                              
                              
                              
                              
                           </div>
                                
                         </div> 
                              
                            
                              
                 
                              
                           
                              
                              
                                      
                                                     
                          
                                        <div class="collapse" id="IndividualStudent<%=irtb.getAadharid()%>">  
                           <div class="card card_width " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;min-height:300px;margin-bottom:40px;border:none;" >
                           
                             
                       
                           <div class="card-body">
                               
                             <div class="row">  
                                 
                                   
                                   
                                          
                                          <table style="margin-top:0px;width:90%" align="center" class="table_fontsize">
                                              
                                              
                                              
                                              
                                              
                                              <tr><td><hr>Email Address</td><td><hr><%=irtb.getEmailadd()%></td></tr> 
                                              <tr><td>Contact No.</td><td><%=irtb.getContactno()%></td></tr>
                                              <tr><td>Address</td><td><%=irtb.getAddress()%></td></tr>
                                              <tr><td>City</td><td><%=irtb.getCity()%></td></tr>
                                              <tr><td>State</td><td><%=irtb.getState()%></td></tr>
                                             
                                             
                                          </table>
                                              
                                  
                                          
                                 </div>         
                           </div>
                                
                        
                               
                             </div>     


                              
                   </div>           
                         
         </div>                                                                     
                                                    
                                      
                                        
                                                                   
      
                          
                                               
                                               
                   
                                               
                                               

                                   


                             
                           
                              
                 
                        

                    <%
                            }
                        }else if(lisacapwirt==null){
                        
                        
                        %>
                    
                      <div align="center">  
                           <div class="card shadow-lg" align="center" style="background-color:white;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;width:80%;margin-top:80px;" >
                           
                             
                       
                           <div class="card-body">
                               
                            
                               
                               <span ><i class="fa fa-folder-open fa-10x " style="color:lightgrey;margin-top:60px;"></i></span>
                                <h1 align="center" style="color:lightgrey;"> No students to show !!  </h1>     
                           </div>
                                
                        
                               
                             </div>     


                                   


                             
                           
                              
                   </div>   
                    
                    
                    <%
                        
                        
                        
                        }
                    %>    
                     
                     <script>
var coll = document.getElementsByClassName("collapsible_button1");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}
</script>
                    
                     
                     
                     
                                              
                                             
                                                   
                                                  
                                             
                         

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
