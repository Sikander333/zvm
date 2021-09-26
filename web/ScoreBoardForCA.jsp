
<%@page import="Bean.Winner1SolutionsBean"%>
<%@page import="Bean.Winner2SolutionsBean"%>
<%@page import="Bean.Winner3SolutionsBean"%>
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







  </style>          
  <style>
      

 @media screen and (max-width:1600px){
  
div.SerialNo{
  display:none;  
    
} 
div.winner_as_header{
    
  width:100%;
  font-size:40px;
}
div.winner_img&name{
    width:100%;
}
div.collapsible_button_as_footer{
    width:100%;
}

.collapsible_button1:after{
  content: '\002B';
   font-size:40px;
   color:white;
  
  
}
.active:after{
  content: "\2212";
 
}
img.img_size{
    
    height:150px;
    width:150px;
}
td.name_width{
    
    padding-left: 10px;
    font-size: 25px;
}
hr.hr_visibility_hidden{
    visibility:hidden;
}
div.box_shadow{
    box-shadow: 5px 10px 18px grey;
    margin-top:20px;
    
}
div.winner_not_declared_font_size{
    font-size:5vw;
}
div.outermost_card_padding{
    padding:5px;
}

 i.a,i.b,i.c,i.d,i.e,i.f,i.g,i.h {
font-size:100px;
color:#ffcc00;
position:fixed;

}

i.j ,i.k ,i.l,i.m,i.n,i.o{
font-size:50px;
color:#ffcc00;
position:fixed;
    
}


 }   
 
 @media screen and (min-width:1601px){
   
div.winner_as_header{
  
  width:20%;  
  padding-top:60px;
  font-size:80px;
}
div.winner_img&name{
    width:70%;
    
}
div.collapsible_button_as_footer{
    width:10%;
    margin-top:70px;
}
td.name_width{
    width:650px;
    alignment-adjust: left;
    padding-left: 40px;
    font-size: 45px;
}


.collapsible_button1:after{
  content: '\002B';
   font-size:60px;
   color:white;
  
  
}
.active:after{
  content: "\2212";
 
}
img.img_size{
    
    height:200px;
    width:200px;
}




div.winner_not_declared_font_size{
    font-size:3vw;
}
div.outermost_card_padding{
    padding:20px;
}

 i.a,i.b,i.c,i.d,i.e,i.f,i.g,i.h {
font-size:200px;
color:#ffcc00;
position:fixed;

}

i.j ,i.k ,i.l,i.m,i.n,i.o{
font-size:100px;
color:#ffcc00;
position:fixed;
    
}

 }
  </style>
  
        
        
    </head>
    <body>
        
         <%
           
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("aadharidFromcollectorHome")!=null && session.getAttribute("passwordFromcollectorHome")!=null){
               session.setAttribute("aadharidFromScoreBoardForCA",session.getAttribute("aadharidFromcollectorHome"));
               session.setAttribute("passwordFromScoreBoardForCA",session.getAttribute("passwordFromcollectorHome"));
        %>
        
        <jsp:include page="collectorNavbar.jsp" /> 
        
        
       
        
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
                
                
                <div class="col-lg-12"  style="height:899px;background-color:#88bdbc;overflow-y:scroll;padding:0px;"   >
                    
               <i class="fas fa-crown a" ></i> 
               <i class="fas fa-crown b " style="transform: rotate(20deg);"></i>         
               <i class="fas fa-crown c" style="transform: rotate(90deg);"></i>         
               <i class="fas fa-crown d" style="transform: rotate(120deg);"></i>  
               <i class="fas fa-crown e" style="transform:rotate(180deg);"></i>
               <i class="fas fa-crown f" style="transform: rotate(210deg);"></i>        
               <i class="fas fa-crown g" style="transform: rotate(270deg);"></i> 
               <i class="fas fa-crown h" style="transform: rotate(300deg);"></i>   
               <i class="fas fa-star j" ></i>
               <i class="fas fa-star k" ></i>
               <i class="fas fa-star l" ></i>
               <i class="fas fa-star m" ></i>
               <i class="fas fa-star n" ></i>
               <i class="fas fa-star o" ></i>
              
              
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:40px;margin-bottom:40px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>Winners</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
                    
                    <% //  content of Problem id container with solution starts ---------------------------------------------------------- %>  
                    
                      <% 
                           
                           
  
                     MethodDeclarations md=new MethodOperation();
                   
                   List lisacapwirt = md.selectAllCAProblemsWithStatusInCAProblemsAsSolved(); // We have used used the method of without IRTable information.
                     if (lisacapwirt != null) {

                            ListIterator lit = lisacapwirt.listIterator();
                            while (lit.hasNext()) {
                                ProblemsUpByCABean pubcab = (ProblemsUpByCABean) lit.next();
                      
%>
                              
 
                         
                                                       
                                                      
                                      
                                        
                                        
                                              
                                                        
                       <div align="center" >                                 
                    
                          <!--
                           <button data-toggle="collapse" data-target="#demo" >
                                
                           </button>
                          -->
                          <div class="row" style="width:80%;">
                        
                              <div class="card shadow-lg " style="color:white;width:20%;margin-top:0px;height:340px;cursor:pointer;border:none;" align="center" data-toggle="collapse" data-target="#CASolution<%=pubcab.getP_id()%>" >
                           
                                                        <div style="font-size:50px;padding:63px;min-height:340px;max-height:340px;"      class="collapsible_button">
                                                            <%=pubcab.getP_id()%>
                                                            <div   style="font-size:30px;padding-bottom:20px;" class="SerialNo" >Problem Id</div>
                                                        </div>
                                                        
                                                   
                                                    </div>    
                                                      
                                                        
                                                        
                                                     
                                    <div class="card shadow-lg "  style="padding:20px;margin-bottom:70px;background-color: white;width:80%;height:340px;">
                           <div class="card" style="background-color:#f3f8f8;padding-top:20px;padding-left:20px;padding-right:20px;font-size:20px;height:330px;overflow-y:auto;border:none;">
                           
                       
                           <div class="card-body">
                                 <h1 align="center">Problem Description</h1>
                               <%= pubcab.getP_des()%>
                               
                               
                              
              
                               </div>
                             
                                                        
                                 </div>   
                              
                                        <!--               <div class="row" style="margin-left:10px;"><h4>Status</h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;<h3><span class="badge badge-secondary"><%=pubcab.getStatus()%></span></h3></div>                 -->
                              <div class="row" style="margin-top:20px;">
                                  <div class="col-lg-1">
                                      <%       
                                      // session.setAttribute("IRAadharidFromScoreBoardForStudents",IRAadharid);
                                      %>
                                 <div style="cursor:not-allowed;"><a class="btn btn-info  " href="viewWinnerProblemForCA.jsp?id=<%= pubcab.getP_id()%>" style="text-decoration:none; border: none;margin-left:20px;pointer-events: none;"><h3>View</h3></a></div>
                             </div>
                             <div class="col-lg-11">
                                  <h4 style="float:right;">Uploaded&nbsp;:&nbsp;<%=pubcab.getPdate()%></h4>
                              </div>
                              </div>
                                   
                                  
                          
                            </div>
                                                        
                                                    
                                  </div>                      
                                                        
                          
                          
                          
                                                                              
                                                    
                                      
                                        
                                                                   
                       <div class="card shadow-lg collapse popout outermost_card_padding" id="CASolution<%=pubcab.getP_id()%>" style="margin-bottom:70px;background-color: #112d32;width:80%;">
                           <div class="card" style="background-color:#f3f8f8;padding-top:20px;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;">
                           
                       
                           <div class="card-body"  >
                                
                               
                               
                               
                               
                               
                               
                               
           <% // First winner row start ---------------------------------------------------------------------------- %>  
           
           
          
           
                                
                       
                                  <%  
                                 
                                      Winner3SolutionsBean w3sb = md.selectWinner3Solutions(pubcab.getP_id());
                                      if(w3sb!=null){
                                       StudentSolutionsBean stsb3 = md.selectStudentSolution(pubcab.getP_id(), w3sb.getIraadharid());
                                       if(stsb3!=null){
                                          
                                 %>    
                                    <div class="row box_shadow"  > 
                                     
                                     
                                  
                                     
                                     
                                     <div class="card  rounded-square winner_as_header" style="color:white;background-color:#112d32;" ><Strong>1<sup>st</sup></Strong></div>
                                       
                                 
                                 
                                 
                                   <div class="card winner_img&name " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:0px;font-size:20px;margin-top:10px;border:none;padding-top:0px;padding-bottom:0px;" >
                           
                         <div class="card-body "  >
                               
                              
                             
                                <table >     
                                  <tr> <td > <img src="image_ddp/<%=w3sb.getPhoto()%>" class="rounded-circle img_size" style="margin-top:0px;" ></td><td class="name_width"><%=w3sb.getUsername()%><br><%=w3sb.getCollege()%></td></tr>
                                    
                                </table>
                                    
                                    
                           </div>
                                
                         </div> 
                                 
                                    <div class="card collapsible_button1 rounded-square collapsible_button_as_footer" style="cursor:pointer;max-height: 100px;"  data-toggle="collapse" data-target="#IndividualSolution3<%=pubcab.getP_id()%>" ></div>   
                                
                 </div>             
                    <div align="center" class="collapse" id="IndividualSolution3<%=pubcab.getP_id()%>" >  
                           <div class="card box_shadow " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;width:100%;margin-bottom:40px;border:none;" >
                           
                             
                       
                           <div class="card-body">
                               
                             <div class="row">  
                                 
                                   
                                   
                                  
                                          <table style="font-size:25px;margin-top:30px;">
                                              
                                              <tr><td align="center" colspan="2"><h2><b>Solution Description</b> </h2>&nbsp;</td></tr>
                                           
                                              <tr><td colspan="2"><%=stsb3.getS_des()%><hr></td></tr>
                                             <tr><td>Second Member</td><td><%=w3sb.getSecond_m()%></td></tr>
                                              <tr><td>Third Member</td><td><%=w3sb.getThird_m()%></td></tr>
                                              <tr><td>Upload Date</td><td><%=stsb3.getSdate()%></td></tr>
                                            
                                              <tr><td>Institute Representative</td><td><%=md.getUserName(w3sb.getIraadharid())%></td></tr>
                                              <tr><td>College</td><td><%=w3sb.getCollege()%></td></tr>
                                              <tr>
                                                  <%
                                               session.setAttribute("IRAadharidFromScoreBoardForCAFirstWinner",w3sb.getIraadharid());
                                               
                                               
                                                  %>
                                                  <td colspan="1"><a class="btn btn-info shadow-lg" href="viewFirstWinnerSolutionAsCA.jsp?id=<%=w3sb.getP_id()%>&document=<%=stsb3.getF_Name()%>"  style="margin-top:20px; text-decoration:none;width:200px;height:65px;"><h2>View</h2></a></td>
                                                  
                                              </tr> 
                                          </table>
                                              
                                  
                                          
                                 </div>         
                           </div>
                                
                        
                               
                             </div>     


                              
                   </div> 
         
                              
                              
                              
                              
                              
                              <%  
                                       }
                            }else if(w3sb==null){
                                    
                                    %>
                                   
                                    <div class="row box_shadow">
                                        
                             <div class="card  rounded-square winner_as_header" style="color:white;background-color:#112d32;" ><Strong>1<sup>st</sup></Strong></div>           
                                        
                                        
                                     <div align="center">  
                           <div class="card " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;width:80%;margin-top:10px;border:none;" >
                          
                           <div class="card-body">
                               <div align="center" style="color:lightgrey;" class="winner_not_declared_font_size">  Winner has not been declared yet !!</div>     
                           </div>
                            
                             </div>     
  
                              
                   </div>  
                                </div>       
                                    
                                 <%
                                    
                                    }
                                 
                                 %>
                              
                              
                              
                                
                                    
                        
                 
                                 
                                 
           
                               <hr class="hr_visibility_hidden"> 
                                    
                              
                               <% // First winner row end ---------------------------------------------------------------------------- %>          
                              
                              
                              
                              
                              
                              
                              
                              
                              
                              

                              
                              <%  // Second Winner row start %>
                              
                              
                              <%  
                                       
                                      Winner2SolutionsBean w2sb = md.selectWinner2Solutions(pubcab.getP_id());
                                      if(w2sb!=null){
                                       StudentSolutionsBean stsb2 = md.selectStudentSolution(pubcab.getP_id(), w2sb.getIraadharid());
                                       if(stsb2!=null){ 
                                       %>  
                                         
                                 <div class="row box_shadow" > 
                                   
                                     <div class="card  rounded-square winner_as_header" style="color:white;background-color:#112d32;" ><Strong>2<sup>nd</sup></Strong></div>
                                     
                                  
                                   <div class="card winner_img&name" align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:0px;font-size:20px;margin-top:10px;border:none;padding-top:0px;padding-bottom:0px;" >
                           
                         <div class="card-body "  >
                               
                              
                            
                              <table >
                                    <tr><td ><img src="image_ddp/<%=w2sb.getPhoto()%>" class="rounded-circle img_size " style="margin-top:0px;" ></td><td class="name_width"><%=w2sb.getUsername()%><br><%=w2sb.getCollege()%></td></tr>
                                    
                                </table>   
                                    
                                    
                           </div>
                                
                         </div> 
                                 
                              <div class="card collapsible_button1 rounded-square collapsible_button_as_footer" style="cursor:pointer;max-height: 100px;"  data-toggle="collapse" data-target="#IndividualSolution2<%=pubcab.getP_id()%>" ></div>   
                                 
                          </div>     
                              
                              <div align="center" class="collapse" id="IndividualSolution2<%=pubcab.getP_id()%>">  
                           <div class="card box_shadow " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;width:100%;margin-bottom:40px;border:none;" >
                           
                             
                       
                           <div class="card-body">
                               
                             <div class="row">  
                                 
                                   
                                   
                                  
                                          <table style="font-size:25px;margin-top:30px;">
                                              
                                              <tr><td align="center" colspan="2"><h2><b>Solution Description</b> </h2>&nbsp;</td></tr>
                                              
                                              <tr><td colspan="2"><%=stsb2.getS_des()%><hr></td></tr>
                                             <tr><td>Second Member</td><td><%=w2sb.getSecond_m()%></td></tr>
                                              <tr><td>Third Member</td><td><%=w2sb.getThird_m()%></td></tr>
                                              <tr><td>Upload Date</td><td><%=stsb2.getSdate()%></td></tr>
                                             
                                              <tr><td>Institute Representative</td><td><%=md.getUserName(w2sb.getIraadharid())%></td></tr>
                                              <tr><td>College</td><td><%=w2sb.getCollege()%></td></tr>
                                              <tr>
                                                  <%
                                               session.setAttribute("IRAadharidFromScoreBoardForCASecondWinner",w2sb.getIraadharid());
                                               
                                               
                                                  %>
                                                  <td colspan="1"><a class="btn btn-info shadow-lg" href="viewSecondWinnerSolutionAsCA.jsp?id=<%= w2sb.getP_id()%>&document=<%=stsb2.getF_Name()%>"  style="margin-top:20px; text-decoration:none;width:200px;height:65px;"><h2>View</h2></a></td>
                                                  
                                              </tr> 
                                          </table>
                                              
                                  
                                          
                                 </div>         
                           </div>
                                
                        
                               
                             </div>     


                              
                   </div>  
                              
                              
                              
                              
                              
                              
                               <%  
                                       }
                            }else if(w2sb==null){
                                    
                                    %>
                                    <div class="row box_shadow">
                                        
                                        
                                    <div class="card  rounded-square winner_as_header" style="color:white;background-color:#112d32;" ><Strong>2<sup>nd</sup></Strong></div>    
                                        
                                     <div align="center">  
                           <div class="card " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;width:80%;margin-top:10px;border:none;" >
                          
                           <div class="card-body">
                               <div align="center" style="color:lightgrey;" class="winner_not_declared_font_size">  Winner has not been declared yet !!</div>     
                           </div>
                            
                             </div>     
  
                              
                   </div>  
                                   </div> 
                                 <%
                                    
                                    }
                                 
                                 %>
                              
                              
                              
                              
                              
                              
                              
                                
                                    
                                                                  
             
                               <hr class="hr_visibility_hidden"> 
                                    
                              
                              
                              
                              
                                <%  // Second Winner row end %> 
                              
                              
                                
                                
                                
                              
                              <%  // Third Winner row start %>
                              
                              
                              
                              <%
                                      
                                      Winner1SolutionsBean w1sb = md.selectWinner1Solutions(pubcab.getP_id());
                                      if(w1sb!=null){
                                       StudentSolutionsBean stsb1 = md.selectStudentSolution(pubcab.getP_id(), w1sb.getIraadharid());
                                       if(stsb1!=null){ 
                                       %>  
                                 
                                      
                                       <div class="row box_shadow"  > 
                                     
                                     
                                      <div class="card  rounded-square winner_as_header" style="color:white;background-color:#112d32;" ><Strong>3<sup>rd</sup></Strong></div>
                                     
                                 
                                   <div class="card winner_img&name " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:0px;font-size:20px;margin-top:10px;border:none;padding-top:0px;padding-bottom:0px;" >
                           
                         <div class="card-body "  >
                               
                              
                             
                              <table >
                                    <tr ><td ><img src="image_ddp/<%=w1sb.getPhoto()%>" class="rounded-circle img_size" style="margin-top:0px;" ></td><td class="name_width" ><%=w1sb.getUsername()%><br><%=w1sb.getCollege()%></td></tr>
                                    
                                </table>   
                                    
                                    
                           </div>
                                
                         </div> 
                                 
                              <div class="card collapsible_button1 rounded-square collapsible_button_as_footer" style="cursor:pointer;max-height: 100px;"  data-toggle="collapse" data-target="#IndividualSolution1<%=pubcab.getP_id()%>" ></div>   
                                 
                      </div>          
                              
                              <div align="center" class="collapse" id="IndividualSolution1<%=pubcab.getP_id()%>">  
                           <div class="card box_shadow" align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;width:100%;margin-bottom:40px;border:none;" >
                           
                             
                       
                           <div class="card-body">
                               
                             <div class="row">  
                                 
                                   
                                   
                                  
                                          <table style="font-size:25px;margin-top:30px;">
                                              
                                              <tr><td align="center" colspan="2"><h2><b>Solution Description</b> </h2>&nbsp;</td></tr>
                                             
                                              <tr><td colspan="2"><%=stsb1.getS_des()%><hr></td></tr>
                                             <tr><td>Second Member</td><td><%=w1sb.getSecond_m()%></td></tr>
                                              <tr><td>Third Member</td><td><%=w1sb.getThird_m()%></td></tr>
                                              <tr><td>Upload Date</td><td><%=stsb1.getSdate()%></td></tr>
                                              
                                              <tr><td>Institute Representative</td><td><%=md.getUserName(w1sb.getIraadharid())%></td></tr>
                                              <tr><td>College</td><td><%=w1sb.getCollege()%></td></tr>
                                              <tr>
                                                  <%
                                                session.setAttribute("IRAadharidFromScoreBoardForCAThirdWinner",w1sb.getIraadharid());
                                                
                                                
                                                  %>
                                                  <td colspan="1"><a class="btn btn-info shadow-lg" href="viewThirdWinnerSolutionAsCA.jsp?id=<%=w1sb.getP_id()%>&document=<%=stsb1.getF_Name()%>"  style="margin-top:20px; text-decoration:none;width:200px;height:65px;"><h2>View</h2></a></td>
                                                  
                                              </tr> 
                                          </table>
                                              
                                  
                                          
                                 </div>         
                           </div>
                                
                        
                               
                             </div>     


                              
                   </div> 
                              
                              
                              
                              
                              
                               <%  
                                       }
                            }else if(w1sb==null){
                                    
                                    %>
                                    <div class="row box_shadow">
                                        
                          <div class="card  rounded-square winner_as_header" style="color:white;background-color:#112d32;" ><Strong>3<sup>rd</sup></Strong></div>              
                                        
                                     <div align="center">  
                           <div class="card " align="center" style="background-color:#f3f8f8;padding-left:20px;padding-right:20px;font-size:20px;width:80%;margin-top:10px;border:none;" >
                          
                           <div class="card-body">
                               <div align="center" style="color:lightgrey;" class="winner_not_declared_font_size">  Winner has not been declared yet !!</div>     
                           </div>
                            
                             </div>     
  
                              
                   </div>  
                              </div>      
                                 <%
                                    
                                    }
                                 
                                 %>
                              
                              
                              
                              
                              
                               
                                    
                                                                  
              
                              
                                    
                              
                              
                              
                                <%  // Third Winner row end %> 
                              
                              
                              
                              
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
                                <h1 align="center" style="color:lightgrey;">  No Winner to Show !!  </h1>     
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
<script>
      $(document).ready(function(){
    animateDiv('.a');
    animateDiv('.b');
    animateDiv('.c');
    animateDiv('.d');
    animateDiv('.e');
    animateDiv('.f');
    animateDiv('.g');
    animateDiv('.h');
    animateDiv('.j');
    animateDiv('.k');
    animateDiv('.l');
    animateDiv('.m');
    animateDiv('.n');
    animateDiv('.o');
});

function makeNewPosition(){
    
    // Get viewport dimensions (remove the dimension of the div)
    var h = $(window).height() - 50;
    var w = $(window).width() - 300;
    
    var nh = Math.floor(Math.random() * h);
    var nw = Math.floor(Math.random() * w);
    
    return [nh,nw];    
    
}

function animateDiv(myclass){
    var newq = makeNewPosition();
    $(myclass).animate({ top: newq[0], left: newq[1] }, 1500,   function(){
      animateDiv(myclass);        
    });
    
};
</script>             
                     
                     
                                              
                                             
                                                   
                                                  
                                             
      <% //  content of Problem id container with solution ends ---------------------------------------------------------------------------- %>                   

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
