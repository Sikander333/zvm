



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
    </style>
    <style>
    
    .container_rb {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}


.container_rb input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}


.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 50px;
  width: 50px;
  background-color:#2196F3;       
  border-radius: 50%;
}
.radio_card{
    color:black;
    
}


.container_rb:hover input ~ .radio_card{          
  color: #2196F3;        
  
}


.container_rb input:checked ~ .radio_card{          
 color:#2196F3;       
}

@media screen and (max-width:1600px){
  
div.card_width{
  width:85%;
    
} 

}

@media screen and (min-width:1601px){
div.card_width{
  width:73%;  
    
}

}







  </style>
        
          
        
        
        
        
    </head>
    <body>
        
        <%
          response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
           if(session.getAttribute("aadharidFromCASolutions")!=null && session.getAttribute("passwordFromCASolutions")!=null){
            
           
       %>
        
        <jsp:include page="studentNavbar.jsp" /> 
        
        
        
        
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
                
                
                <div class="col-lg-12"  style="height:899px;background-color: #88bdbc; overflow-y:scroll;padding:0px;">
                        
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:30px;margin-bottom:30px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>Assign Points to the Solutions</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
         <%
             
           
            
      if((Integer.parseInt(request.getParameter("id")))!=0){   
    int Pid = Integer.parseInt(request.getParameter("id")); 
           
    MethodDeclarations md = new MethodOperation();
   //###############################################################################################
   //Why Session is not working
   // String IRAadharid =session.getAttribute("IRAadharidFromCASolution").toString();
   // String StudentAadharid =session.getAttribute("StudentAadharidFromCASolution").toString();
   //###############################################################################################
    String IRAadharid =request.getParameter("iraadharid").toString();
    String StudentAadharid =request.getParameter("studentaadharid").toString();
    
    
    
    
   session.setAttribute("PidFromAssignPoints", Pid);
  session.setAttribute("IRAadharidFromAssignPoints", IRAadharid);
   session.setAttribute("StudentAadharidFromAssignPoints",StudentAadharid);
    
    %>
                     
              
    
                         <form action="assignPointsController" method="post" >
                     
                              <div align="center">
                             
                             
                     <div class="uploaded_problems_sticky card_width" style="z-index:1;margin-bottom:15px;">
                     
                                          <div class="card shadow-lg" style="background-color:#112d32;color:white;padding:20px;">
                                              
                                               <h1 align="left" style="padding-bottom:10px;"><i>Select any One Out of three given below</i></h1>
                                             
                                              <input style="float:center;width:30%;"  type="submit" class="btn btn-success" value="Submit"  > 
                                              </div>
                                                  
                                          
                     
                                  </div>
                     
                       
 

                       
                                 
                           
                                              <div class="row card_width" style="padding:20px;font-size:20px;">

                               
                                    
                                                     <%
                                          boolean b =md.checkForEnableOrDisableOf1PointRadioButton(Pid);
                                                    if(b==false){
                                                     %>
                                                    <div class="col-lg-4">
                                                    <label class="container_rb" >
                                                        <input type="radio"  name="radio" value="1"> <span class="card radio_card "  style="width:400px;height:440px;padding:0px;font-size:60px;"><span  ><strong style="font-size:170px;" >1</strong><br><b>Point</b></span></span> 
                                                    </label>
                                                     </div>
                                                        <%
                                                    }else if(b==true){
                                                     
                                                     %>
                                                      <div class="col-lg-4" style="cursor:not-allowed;">
                                                    <label class="container_rb" style="pointer-events:none;">
                                                        <input type="radio"  name="radio" value="1"> <span class="card radio_card "  style="width:400px;height:440px;padding:0px;font-size:60px;"><span  ><strong style="font-size:170px;" >1</strong><br><b>Point</b></span></span> 
                                                    </label>
                                                     </div>
                                                  
                                                  
                                                  <%
                                                     
                                                 
                                                        }
                                                        %>
                                                        
                                                        
                                                        
                                                        
                                                        
                                                  <%
                                            boolean c=md.checkForEnableOrDisableOf2PointsRadioButton(Pid);
                                                if(c==false){
                                                  %>
                                                  <div class="col-lg-4">
                                                    <label class="container_rb" >
                                                        <input type="radio"  name="radio" value="2"> <span class="card radio_card"  style="width:400px;height:440px;padding:0px;font-size:60px;"><span  ><strong style="font-size:170px;" >2</strong><br><b>Points</b></span></span> 
                                                    </label>
                                                     </div>
                                                  <%
                                                }else if(c==true){
                                             
                                             %>
                                                   <div class="col-lg-4" style="cursor:not-allowed;">
                                                    <label class="container_rb" style="pointer-events:none;" >
                                                        <input type="radio"  name="radio" value="2"> <span class="card radio_card"  style="width:400px;height:440px;padding:0px;font-size:60px;"><span  ><strong style="font-size:170px;" >2</strong><br><b>Points</b></span></span> 
                                                    </label>
                                                     </div> 
                                                  
                                                  <%
                                             
                                                }
                                                  %>   
                                                  
                                                  
                                                  
                                                  
                                                  <%
                                            boolean d =md.checkForEnableOrDisableOf3PointsRadioButton(Pid);
                                           if(d==false){
                                                  %>
                                                 <div class="col-lg-4" >
                                                    <label class="container_rb" >
                                                        <input type="radio"  name="radio" value="3"> <span class="card radio_card"  style="width:400px;height:440px;padding:0px;font-size:60px;"><span  ><strong style="font-size:170px;" >3</strong><br><b>Points</b></span></span> 
                                                    </label>
                                                     </div>
                                                 <%
                                           }else if(d==true){
                                         
                                         %>
                                                    <div class="col-lg-4"  style="cursor:not-allowed;" >
                                                    <label class="container_rb"  style="pointer-events:none;" >
                                                        <input type="radio"  name="radio" value="3"> <span class="card radio_card"  style="width:400px;height:440px;padding:0px;font-size:60px;"><span  ><strong style="font-size:170px;" >3</strong><br><b>Points</b></span></span> 
                                                    </label>
                                                     </div>
               
                                                  <%
                                            }
                                                 %> 
                                                  
                                                  
                                                  
                             
                            </div>
                   </div>
                       


                   
                         
</form>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
                    
                    
  <%
   }else{
       out.println("Select any record cause ID is null");
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





















        
        
       
      
        
               
        
  