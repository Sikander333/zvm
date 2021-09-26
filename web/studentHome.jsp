<%-- 
    Document   : index
    Created on : 17 Jan, 2020, 3:30:29 PM
    Author     : hp
--%>



<%@page import="DAO.MethodDeclarations"%>
<%@page import="DAO.MethodOperation"%>
<%@page import="Bean.StudentTableBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Bean.IRProblemsBean"%>

<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
         <meta charset="UTF-8">
	<meta http-equiv="X-UA-compatible" content = "IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        
    
    
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  
  <link href='https://fonts.googleapis.com/css?family=Alex Brush' rel='stylesheet'>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
         <link href='https://fonts.googleapis.com/css?family=Alex Brush' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css_sik/home.css">
         <link rel="stylesheet" href="css_sik/slide_images.css">
       <link rel="stylesheet" href="css_sik/register.css">
   <style>
            html,body,h1,h2,h3,h4,h5,h6 {
                font-family: "Roboto", sans-serif;
            }
       
             textarea{
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }

          

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                float: right;
            }

            


           

            
            table, td {
                border:none;
            }
            th{
               font-size :large;
            }
            

           
            .upload-btn-wrapper {
                position: relative;
                overflow: hidden;
                display: inline-block;
            }

            .btn {
                border: 2px solid gray;
                color: gray;
                background-color: white;
                padding: 8px 20px;
                border-radius: 8px;
                font-size: 20px;
                font-weight: bold;
            }

            .upload-btn-wrapper input[type=file]{
                font-size: 100px;
                position: absolute;
                left: 0;
                top: 0;
                opacity: 0;                                                                                               
            }
            
            


           

        

            .back-image img{
                position: fixed;
                width:100%;
              
                height:1040px;


            }
            .uploaded_problems_sticky{
                position:sticky;
                top:0;
                
            }
           


        </style> 
        <style>
            
/* The container */
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

/* Hide the browser's default radio button */
.container_rb input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 50px;
  width: 50px;
  background-color:#2196F3;       /* blue  */          /*  before check outer most circle will be blue  */
  border-radius: 50%;
}
.checkmark1 {
  position: absolute;
  top: 10px;
  left:11px;
  height: 30px;
  width: 30px;
  background-color: #f3f8f8;                            /*  before check  mid circle will be card's background colour  */
  border-radius: 50%;
}

.checkmark2 {
  position: absolute;
  top: 5px;
  left:5px;
  height: 20px;
  width: 20px;
  background-color: #f3f8f8;                               /*  before check inner most circle will be  card's background colour  */
  border-radius: 70%;
 
} 


/* On mouse-over, add a grey background color */



.container_rb:hover input ~ .checkmark .checkmark2{                 /*  On mouse over inner most circle will be blue  */
  background-color: #2196F3;         /* blue  */
  
}





/* When the radio button is checked, add a blue background */

 
.container_rb input:checked ~ .checkmark .checkmark2{                            /*  On checked inner most circle will be blue  */
  background-color:#2196F3;         /* blue  */
}


 @media screen and (max-width:1600px){
            div.margin_top{
                margin-top:15px;
            }
            div.card_large{
                display:none;
            }
            div.img_width{
                width:625px;
            }
 }

@media screen and (min-width:1601px){
          div.card_small{
                display:none;
            } 
            div.img_width{
                width:650px;
            }
 }





        </style>  
<jsp:include page="title.jsp" />
        
        
        
        
        
        
        
        
        
 
        
        
        
      
       
       
        
                
      
         
 </head>
    <body>
        <%
  
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("aadharidFromController")!=null && session.getAttribute("passwordFromStudentLoginController")!=null){
            
        
     String str="";
    str =  request.getParameter("value").toString();
   if(str.equals("1"))
   {
   %>
   <script>
     
    alert("Problem has been Submitted Successfully");
   window.location.assign("studentHome.jsp?value=0");
  
   </script>
   
   <%
       
   }
   else if(str.equals("0"))
   {
   
   }   
  %>
        
        
        <% 
        
            String StudentAadharid = (String)session.getAttribute("aadharidFromController");
            
            session.setAttribute("aadharidFromStudentHome",StudentAadharid);
            session.setAttribute("passwordFromStudentHome",session.getAttribute("passwordFromStudentLoginController"));
            
            
             MethodDeclarations md = new MethodOperation();
                        
                          String IRAadharid = md.selectStudentTableReferenceId(StudentAadharid);
            session.setAttribute("IRAadharidFromStudentHome",IRAadharid);
            
            
        %>
                 
          <jsp:include page="studentNavbar.jsp" /> 
          
          
          
          
          
           <div class="container-fluid"  style = "margin-top : 95px;"  >     
            
           
            
            <div class="row"  >
                
             
                
                
                <div class="col-lg-4" style="height:889px;background-color:#112d32;" >
                    <%
                     StudentTableBean sttb = md.selectStudentTable(StudentAadharid);
                     if(sttb!=null){
                    %>
                     <div class="card img_width" style="background-image:url('image_ddp/<%=sttb.getFile()%>');background-size:cover;background-repeat:no-repeat;height:500px;border:none;" >
                        <div class="card-body">
                            
                        </div>
                        <div class="card-footer" style="background-color:rgba(23,67,88,0.5);">
                            <div style="color:white;" > 
                    
                            <h1 style="padding-top:20px;"><%=sttb.getUsername()%></h1>
                           
                            
                     </div> 
                        </div>
                    </div>
                                         <div style="color:white;font-size:30px;">
                            
                            <p><i class="fa fa-home fa-fw "></i> <%=sttb.getAddress()%>&nbsp;&#44;&nbsp;<%=sttb.getCity()%>&nbsp;&#44;&nbsp;<%=sttb.getState()%></p>
                            <p><i class="fa fa-envelope fa-fw"></i> <%=sttb.getEmailadd()%></p>
                            <p><i class="fa fa-phone fa-fw"></i> +91&nbsp;<%=sttb.getContactno()%></p>
                            
                                               
                                                  <div  class="row" style="width: 100%;color:white;margin-left:4px;cursor:pointer;margin-top: 50px;">
                                                  <a class="btn btn-info" href="ScoreBoardForStudents.jsp"  style="text-decoration:none;width:100%;"><span class="fa fa-th fa-3x" > Scoreboard</span></a>
                                                  </div>
                                                  
                                                  
                                                  
                                                  
                                                  
                           
                        </div>
                    
                 <%
                     }
                 %>
                    
                </div>
                
                 <div class="col-lg-8 margin_top"  style="height:889px;background-color: #88bdbc;overflow-y:scroll;" >
                        
                     
                     
                       <form action="SelectedByStudent" method="post" >
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-bottom:15px;">
                     
                                          <div class="card shadow-lg" style="background-color:#112d32;color:white;padding:20px;">
                                              <%
                                              boolean b1 = md.checkForSelectedProblemInStudentProblems(StudentAadharid, IRAadharid);
                                              boolean b2 = md.checkForSelectedProblemInIRProblems(StudentAadharid, IRAadharid);
                                              if(b1==true){
                                              %>
                                               <h1 style="padding:20px;"><i>You have already Selected the problem ...</i></h1>
                                              <%
                                              }else if(b1==false && b2==false){
                                              
                                              
                                              %>
                                              
                                              <h1><i>Select any One Unselected problem only</i></h1>
                                              <h5><i>Submit it to Institute Representative for consideration</i></h5>
                                              <input style="float:right;width:30%;"  type="submit" class="btn btn-success" value="Submit" > 
                                              
                                              
                                              <%
                                              
                                              
                                              
                                              }
                                              %>
                                              </div>
                                                  
                                          <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;">
                                              <div  style="background-color:#f3f8f8;padding:20px;" >
                                                  
                                                
                                                  
                                              <table  width="100%">
                                            <tr >
                                                
                                                <th width="20%" >Problems Id </th>
                                                <th width="60%">Problem Description</th>
                                                <th width="10%">Status</th>
                                                <th width="10%">Documents</th>
                                                
                                            </tr>
                                        </table>
                                             </div>
                                                 
                                              </div>
                     
                                  </div>
                     
                                         <%

                       
                        List li = md.selectUnSolvedIRProblems(IRAadharid);
                        if (li != null) {

                            ListIterator lit = li.listIterator();
                            while (lit.hasNext()) {
                                IRProblemsBean irpb = (IRProblemsBean) lit.next();
                                

                    %>         
 

                       <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            <tr >

                                     
                                                <td width="10%">
                                                    <label class="container_rb">
                                                        <input type="radio"  name="radio" value="<%=irpb.getP_id()%>"> <span class="checkmark"><span class="checkmark1"><span class="checkmark2"></span></span></span>
                                                    </label>
                                        </td>
                                                <td width="5%"><%=irpb.getP_id()%></td>
                                                <td width="65%" style="padding-right:70px;"><%= irpb.getP_des()%></td>
                                                <td width="10%" style="margin-left:0px;"><h2><span class="badge badge-secondary"><%= irpb.getStatus2()%></span></h2><td>
                                                <td width="10%" style="padding-left:30px;"><a class="btn btn-info" href="viewUnsolvedIRProblems.jsp?id=<%= irpb.getP_id()%>" style="text-decoration:none;" >View</a></td>
                                             
                         
                                            

                                            </tr>

                                        </table>


                                   


                             
                            </div>
                   
                        </div>


                                                
                                                
                                                
                                                
                     <div class="card shadow-lg card_small" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            

                                     
                                                
                                                <tr><td align="center" colspan="3"><h2><b>Problem Id : <%=irpb.getP_id()%></b></h2></td></tr>
                                                <tr><td align="center" colspan="3"><hr><b>Problem Description</b></td></tr>
                                                <tr><td colspan="3" ><%= irpb.getP_des()%><hr></td></tr>
                                                <tr><td>Status</td><td>&nbsp;</td><td ><h2><span class="badge badge-secondary"><%= irpb.getStatus2()%></span></h2><td></tr>
                                                <tr><td>Select the problem </td><td>&nbsp;</td><td >
                                                    <label class="container_rb">
                                                        <input type="radio"  name="radio" value="<%=irpb.getP_id()%>"> <span class="checkmark"><span class="checkmark1"><span class="checkmark2"></span></span></span>
                                                    </label>
                                                      </td></tr>
                                                <tr><td colspan="3"><a class="btn btn-info" href="viewUnsolvedIRProblems.jsp?id=<%= irpb.getP_id()%>" style="text-decoration:none;width:100%;margin-top:50px;" >View</a></td></tr>
                                                
                         
                                            

                                           

                                        </table>


                                   


                             
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
                                <h1 align="center" style="color:lightgrey;">  No Problems to show.    </h1>     
                           </div>
                                
                        
                               
                             </div>     


                                   


                             
                           
                              
                   </div>   
                           
                           
                           
                           <%
                        
                        
                        
                        
                        }
                    %>    
                     
                     
                     
                     
                     
                     
                                              
                                             
                                                   
                                                  
                                             
                         
</form>
                     </div>
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                    
                
                
               
        
            
        
        
       </div> 
   
            
    </div>
       <%
       }else{
           
               response.sendRedirect("StudentLogin.jsp?value=0");
           
           }
       %>
        
    </body>
</html>
