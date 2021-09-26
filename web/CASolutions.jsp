
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
      
      .collapsible_button{
        background-color:#112d32;  
          color:white;
      }  
       
.active, .collapsible_button:hover {
  background-color: #1b474f;
  color:white;
}

.collapsible_button:after {
  content: '\002B';
  color: white;
  font-weight: bold;
 // float: right;
 // margin-left: 5px;
}



.active:after{
  content: "\2212";
  color:white;
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




@media screen and (max-width:1600px){
  
div.SerialNo{
  display:none;  
    
}    
    
div.uploaded_by{
  font-size:4vw;  
    
}
div.collapsible_button1:after{
   
  content: '\002B';
   font-size:45px;
   color:white;
  
  
}
div.circular_button{
    margin-top:30px;
    width:12vw;
    height:12vw;
    
}
div.active:after{
  content: "\2212";
 
}
img.sol_img{
    max-height:40vw;
    max-height:40vw;
}
a.view_button{
   width:150px;
   font-size:25px;
    
}
a.assignpoints_button{
    
    width:200px;
    font-size:30px;
}
div.card_width{
    
    width:90%;
}
div.outermost_card_padding{
    padding:5px;
}
}

@media screen and (min-width:1601px){
div.uploaded_by{
  font-size:2vw;  
    
}
div.collapsible_button1:after{
  content: '\002B';
   font-size:100px;
   color:white;
  
  
}
div.circular_button{
    width:8vw;
    height:8vw;
    
}
div.active:after{
  content: "\2212";
 
}
img.sol_img{
    max-height:400px;
    max-height:400px;
}
a.view_button{
   width:200px;
   
    
}
a.assignpoints_button{
    
    width:250px;
    font-size:35px;
}
div.card_width{
    width:80%;
}
div.outermost_card_padding{
    padding:20px;
}
}
  </style>          
        
        
        
        
    </head>
    <body>
        
         <%
           
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("aadharidFromcollectorHome")!=null && session.getAttribute("passwordFromcollectorHome")!=null){
                session.setAttribute("aadharidFromCASolutions",session.getAttribute("aadharidFromcollectorHome"));
                session.setAttribute("passwordFromCASolutions",session.getAttribute("passwordFromcollectorHome"));
           
        %>
        
        <jsp:include page="collectorNavbar.jsp" /> 
        
        
       
        
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
                
                
                <div class="col-lg-12"  style="height:899px;background-color: #88bdbc;overflow-y:scroll;padding:0px;">
                        
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:40px;margin-bottom:40px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>Solutions from all colleges</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
                      <% 
                           
                           
  
                     MethodDeclarations md=new MethodOperation();
                  
                       List lisacapwirt = md.selectAllCAProblemsWithIRTable();
                        if (lisacapwirt != null) {

                            ListIterator lit = lisacapwirt.listIterator();
                            while (lit.hasNext()) {
                                 String notUploadedIR =null;
                                ProblemsUpByCABean pubcab = (ProblemsUpByCABean) lit.next();
                      
%>
                              
 
                         
                                                       
                                                      
                                      
                                        
                                        
                                              
                                                        
                       <div align="center" >                                 
                    
                          <!--
                           <button data-toggle="collapse" data-target="#demo" >
                                
                           </button>
                          -->
                          <div class="row card_width">
                        
                              <div class="card " style="color:white;width:20%;margin-top:0px;min-height:340px;max-height:340px;cursor:pointer;border:none;" align="center" data-toggle="collapse" data-target="#CASolution<%=pubcab.getP_id()%>" >
                           
                                                        <div style="font-size:50px;padding:63px;min-height:340px;max-height:340px;"      class="collapsible_button">
                                                            <%=pubcab.getP_id()%>
                                                            <div   style="font-size:30px;padding-bottom:20px;" class="SerialNo">Problem Id</div>
                                                        </div>
                                                        
                                                   
                                                    </div>    
                                                      
                                                        
                                                        
                                                     
                                    <div class="card shadow-lg "  style="padding:20px;margin-bottom:70px;background-color: white;width:80%;height:340px">
                           <div class="card" style="background-color:#f3f8f8;padding-top:20px;padding-left:20px;padding-right:20px;font-size:20px;height:330px;overflow-y:auto;border:none;">
                           
                       
                           <div class="card-body">
                                 <h1 align="center">Problem Description</h1>
                               <%= pubcab.getP_des()%>
                               
                               
                              
              
                               </div>
                             
                                                        
                                 </div>   
                              
                                       
                              <div class="row" style="margin-top:20px;">
                                  <div class="col-lg-1">
                                  <a class="btn btn-info  " href="viewAllProblemsInSolutionsPageForCA.jsp?id=<%= pubcab.getP_id()%>" style="text-decoration:none; border: none;margin-left:20px;"><h3>View</h3></a>
                             </div>
                             <div class="col-lg-11">
                                  <h4 style="float:right;">Uploaded&nbsp;:&nbsp;<%=pubcab.getPdate()%></h4>
                              </div>
                              </div>
                                   
                                  
                          
                            </div>
                                                        
                                                    
                                  </div>                      
                                                        
                          
                          
                          
                                                                              
                                                    
                                      
                                        
                                                                   
                       <div class="card shadow-lg collapse popout card_width outermost_card_padding" id="CASolution<%=pubcab.getP_id()%>" style="margin-bottom:70px;background-color: #112d32;">
                           <div class="card" style="background-color:#f3f8f8;padding-top:20px;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;">
                           
                       
                           <div class="card-body">
                                          
                                              
                                   
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
<%           
                              
                               List list = pubcab.getIrtbList();
                        if (list != null) {

                            ListIterator listIterator = list.listIterator();
                            
                            if(listIterator != null){
                         
                                while (listIterator.hasNext()) {
                                    
                                IRTableBean irtb = (IRTableBean)listIterator.next();
                                     
                                StudentSolutionsBean stsb =md.selectStudentSolutionWithUsername(pubcab.getP_id(),irtb.getAadharid());
                                
                                               if(stsb!=null){
                                                          %>
                                                          
                              
                                                          <div align="center"  >  
                          
                                <div class="row" >                              
                          <div class="card " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;width:80%;margin-top:10px;border:none;" >
                           
                             
                       
                           <div class="card-body "  >
                               
                            
                               
                             <% session.setAttribute("IRAadharidFromCASolutions", irtb.getAadharid());
                               // session.setAttribute("StudentAadharidFromCASolution",stsb.getAadharid());
                             %>
                                <div align="center"  class="uploaded_by"> Uploaded by <%=irtb.getUsername()%>&nbsp;&#40;<%=irtb.getCollege()%>&#41;</div>     
                           </div>
                                
                        
                               
                             </div>     
                           
                           
                           <div class="card collapsible_button1 rounded-circle circular_button " style="cursor:pointer; "   data-toggle="collapse" data-target="#IndividualSolution<%=stsb.getAadharid()%>" ></div>
                           
                           </div>
                           
                           


                                   


                             
                           
                              
                   </div>   
                                                          
                                                          
                                                          
                                                          
                                                          
                                                          
                                                          
                                                          
                                                          
                                                          
                                                          
                                                          
                                                         
                                                                           <div align="center" class="collapse" id="IndividualSolution<%=stsb.getAadharid()%>">  
                           <div class="card " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;width:100%;margin-bottom:40px;border:none;" >
                           
                             
                       
                           <div class="card-body">
                               
                             <div class="row">  
                                 <div class=" col-lg-4 ">
                                     <div>
                                      <img src="image_ddp/<%=stsb.getPhoto()%>" class="rounded-circle sol_img" style="margin-top:25px;" > 
                                       </div>
                                       <div style="padding:20px;">
                                         <h1><b><%=stsb.getUsername() %></b> </h1>
                                       
                                       </div>
                                   </div>
                                   
                                   <div class="col-lg-8 ">
                                  
                                          <table style="font-size:25px;margin-top:30px;">
                                              
                                              <tr><td align="center" colspan="2"><h2><b>Solution Description</b> </h2>&nbsp;</td></tr>
                                              <tr><td colspan="2"><%=stsb.getS_des()%><hr></td></tr>
                                              <tr><td>Upload Date</td><td><%=stsb.getSdate()%></td></tr>
                                              <tr><td>Institute Representative</td><td><%=irtb.getUsername()%></td></tr>
                                              <tr><td>College</td><td><%=irtb.getCollege()%></td></tr>
                                              <tr>
                                                  <td><a class="btn btn-info shadow-lg view_button" href="viewCASolution.jsp?id=<%= stsb.getP_id()%>&document=<%=stsb.getF_Name()%>"  style="margin-top:20px; text-decoration:none;height:65px;"><h2>View</h2></a></td>
                                                  <td>
                                                    <%
                                                      boolean b=md.checkForEnableOrDisableOfAssignPoints(stsb.getAadharid());
                                                   if(b==false){
                                                   //###########################################################################################
                                                   // Why session is not working properly
                                                   //     session.setAttribute("IRAadharidFromCASolution"+ircount, irtb.getAadharid());
                                                   //       session.setAttribute("StudentAadharidFromCASolution"+stcount,stsb.getAadharid());
                                                  //############################################################################################
                                                                       %>
                                                    <a style = "padding:0px;margin-top:25px;height:65px;" class="btn btn-dark shadow-lg assignpoints_button" href="assignPoints.jsp?id=<%=stsb.getP_id()%>&iraadharid=<%=irtb.getAadharid()%>&studentaadharid=<%=stsb.getAadharid()%>">Assign Points</a>
                                                 
                                                      <%
                                                   }else if(b==true){
                                                   
                                                                       %>
                                                      <div style="cursor:not-allowed;"> <a style = "padding:0px;margin-top:25px;height:65px;pointer-events:none;" class="btn btn-dark shadow-lg assignpoints_button" href="assignPoints.jsp?id=<%=stsb.getP_id()%>">Assign Points</a></div>
                                                 
                                                      <%
                                                   
                                                   }
                                                  
                                                    %> 
                                                  
                                                  </td>
                                              </tr> 
                                          </table>
                                              
                                      </div>  
                                          
                                              
                                              
                                              
                                               
                                        
                                          
                                 </div>         
                           </div>
                                
                        
                               
                             </div>     


                                   


                             
                           
                              
                   </div>    
                               <hr>                            
                                                          
                                                          <%
                                
                                               }else if(stsb==null){
                                               
                                                          
                                                  notUploadedIR = notUploadedIR+irtb.getUsername()+" ("+irtb.getCollege()+") , ";
                                                   
                                               
                                               }
                                               
                                               
                               
                                
                                
                                }
                                
                                
                                
                                %>
                                                                                               <div align="center">  
                           <div class="card "  style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;width:80%;margin-top:10px;border:none;" >
                           
                             
                       
                           <div class="card-body">
                               
                            
                               
                             
                                <h4 align="center" style="color:lightgrey;">  Solution has not been uploaded by : <%=notUploadedIR.substring(4,notUploadedIR.length()-2)%></h4>     
                           </div>
                                
                        
                               
                             </div>     


                                   


                             
                           
                              
                   </div>   
                               
                               <%
                                
                                
                        }else{
                          %><h1>listIterator is null</h1><%
                            }
                            
                            
                        }else if(list==null){
                              System.out.println("list is   "+ list);
                        }
                              
                              
                              %>
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              
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
                                <h1 align="center" style="color:lightgrey;">  CA has not uploaded any problem yet !!  </h1>     
                           </div>
                                
                        
                               
                             </div>     


                                   


                             
                           
                              
                   </div>   
                    
                    
                    <%
                        
                        
                        
                        }
                    %>    
                     
                     <script>
var coll = document.getElementsByClassName("collapsible_button");
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
           
               response.sendRedirect("CALogin.jsp?value=0");
           
           }
       %>    
      






    </body>
</html>
