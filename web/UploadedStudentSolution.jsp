<%@page import="Bean.StudentSolutionsBean"%>
<%@page import="DAO.MethodDeclarations"%>
<%@page import="DAO.MethodOperation"%>
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
                 div.card_large{
                     display:none;
                 }
                 div.card_width{
                     width:90%;
                 }
            }

@media screen and (min-width:1601px){
                 div.card_small{
                     display:none;
                 }
                  div.card_width{
                     width:80%;
                 }
            }







        </style>  
<jsp:include page="title.jsp" />
        
        
        
        
        
        
        
        
        
 
        
        
        
      
       
       
        
                
      
         
 </head>
    <body>
        
        
        
        <%
        
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("aadharidFromStudentHome")!=null && session.getAttribute("passwordFromStudentHome")!=null){
        %>
        
                 
          <jsp:include page="studentNavbar.jsp" /> 
          
          
          <%
           MethodDeclarations md = new MethodOperation();
                        
           String aadharid = session.getAttribute("aadharidFromStudentHome").toString();
           session.setAttribute("aadharidFromUploadedStudentSolution",aadharid);
           session.setAttribute("passwordFromUploadedStudentSolution",session.getAttribute("passwordFromStudentHome"));
           String IRAadharid = session.getAttribute("IRAadharidFromStudentHome").toString();
           session.setAttribute("IRAadharidFromUploadedStudentSolution",IRAadharid);
          %>
          
          
          
          
          
                  <div class="container-fluid"  style = "margin-top : 100px;overflow-y:scroll;height:894px;" >       
        
            <div align="center" >
                
                <div  class="card_width">
             
                    
                
                
                
             
                    
                    
                
                                     <div class="uploaded_problems_sticky " style="z-index:1;margin-bottom:15px;margin-top:60px;">
                     
                                          <div class="card shadow-lg" style="background-color:#112d32;color:white;padding:20px;" align="left">
                                              
                                               <h2 ><i>Uploaded Solution</i></h2>
                                             
                                                 
                                              </div>
                                                  
                                          <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;">
                                              <div  style="background-color:#f3f8f8;padding:20px;" >
                                                  
                                                
                                              <table  width="100%">
                                            <tr >
                                                
                                                <th width="10%" >Problems Id </th>
                                                <th width="65%">Solution Description</th>
                                                <th width="15%">Status</th>
                                                <th width="10%">Documents</th>
                                                
                                            </tr>
                                        </table>
                                             </div>
                                                 
                                              </div>
                     
                                  </div>
                    
                    
                    
                                                             <%

                     
                        StudentSolutionsBean stsb = md.selectStudentSolution(aadharid ,IRAadharid);
                        
                        
                        if (stsb != null && stsb.getIRStatus().equals("Not Accepted Yet")) {     
                    %>        
 

                       <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            <tr >

                                                <td width="10%" style="padding-left: 30px;"><%=stsb.getP_id()%></td>
                                                <td width="65%" style="padding-right:100px;"><%= stsb.getS_des()%></td>
                                                <td width="15%"><h2><span class="badge badge-secondary"><%= stsb.getIRStatus()%></span></h2></td>
                                                <td width="10%"><a class="btn btn-info" href="viewUploadedStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;">View</a></td>
                                                
                                            </tr>

                                        </table>


                                   


                             
                            </div>
                   
                        </div>

                                                
                <div class="card shadow-lg card_small" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            

                                            <tr><td align="center" colspan="3"><h2>Problem Id : <%=stsb.getP_id()%></h2></td></tr>
                                            <tr><td align="center" colspan="3"><hr><b>Solution Description</b></td></tr>
                                               <tr> <td colspan="3"><%= stsb.getS_des()%><hr></td></tr>
                                                <tr><td>Status</td><td>&nbsp;</td><td ><h2><span class="badge badge-secondary"><%= stsb.getIRStatus()%></span></h2></td></tr>
                                                <tr><td colspan="3" ><a class="btn btn-info" href="viewUploadedStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;width:100%;">View</a></td></tr>
                                                
                                           

                                        </table>


                                   


                             
                            </div>
                   
                        </div>
                                 
                                                
                                                
                                                

                    <%
                            }else if (stsb != null && stsb.getIRStatus().equals("Update It")) {     
                    %>        
 

                       <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            <tr >

                                                <td width="10%"><%=stsb.getP_id()%></td>
                                                <td width="65%" style="padding-right: 20px;ding"><%= stsb.getS_des()%></td>
                                                <td width="15%" style="Padding-left:40px;"><h2><span class="badge badge-secondary"><%= stsb.getIRStatus()%></span></h2></td>
                                                <td width="10%"><a class="btn btn-success  " href="updateStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;"  >Update</a></td>
                                                
                                                <td width="10%"><a class="btn btn-info" href="viewUploadedStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;">View</a></td>
                                                
                                            </tr>

                                        </table>


                                   


                             
                            </div>
                   
                        </div>
                     
                                                
                    <div class="card shadow-lg card_small" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                           

                                                <tr><td align="center" colspan="3"><h2>Problem Id : <%=stsb.getP_id()%></h2></td></tr>
                                                <tr><td colspan="3" align="center"><hr><b>Solution Description</b></td></tr>
                                                <tr><td colspan="3"><%= stsb.getS_des()%><hr></td></tr>
                                                <tr><td>Status</td><td>&nbsp;</td><td ><h2><span class="badge badge-secondary"><%= stsb.getIRStatus()%></span></h2></td></tr>
                                                <tr><td colspan="3"><a class="btn btn-success  " href="updateStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;width:100%;"  >Update</a></td></tr>
                                                
                                                <tr ><td colspan="3" ><a class="btn btn-info" href="viewUploadedStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;width:100%;">View</a></td></tr>
                                                
                                            

                                        </table>


                                   


                             
                            </div>
                   
                        </div>

                    <%
                            }else if (stsb != null && stsb.getIRStatus().equals("Accepted")) {   
                    %>        
 

                       <div class="card shadow-lg card_large " style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            <tr >

                                                <td width="10%"><%=stsb.getP_id()%></td>
                                                <td width="65%" style="padding-right:100px;" ><%= stsb.getS_des()%></td>
                                                <td width="15%"><h2><span class="badge badge-secondary"><%= stsb.getIRStatus()%></span></h2></td>
                                                <td width="10%"><a class="btn btn-info" href="viewUploadedStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;">View</a></td>
                                                
                                            </tr>

                                        </table>


                                   


                             
                            </div>
                   
                        </div>
                                                
                                                
                                                
                        <div class="card shadow-lg card_small " style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            

                                                <tr><td align="center" colspan="3"><h2>Problem Id : <%=stsb.getP_id()%></h2></td></tr>
                                                <tr><td align="center" colspan="3"><hr><b>Solution Description</b></td></tr>
                                                <tr><td colspan="3" ><%= stsb.getS_des()%><hr></td></tr>
                                                <tr><td>Status<td></td>&nbsp;<td ><h2><span class="badge badge-secondary"><%= stsb.getIRStatus()%></span></h2></td></tr>
                                                <tr><td colspan="3"><a class="btn btn-info" href="viewUploadedStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;width:100%;">View</a></td></tr>
                                                
                                            

                                        </table>


                                   


                             
                            </div>
                   
                        </div>                        


                    <%
                            }else if (stsb != null && stsb.getIRStatus().equals("Updated")) {    
                    %>        
 

                       <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            <tr >

                                                <td width="10%"><%=stsb.getP_id()%></td>
                                                <td width="65%" style="padding-right:100px;"><%= stsb.getS_des()%></td>
                                                <td width="15%"><h2><span class="badge badge-secondary"><%= stsb.getIRStatus()%></span></h2></td>
                                                <td width="10%"><a class="btn btn-info" href="viewUploadedStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;">View</a></td>
                                                
                                            </tr>

                                        </table>


                                   


                             
                            </div>
                   
                        </div>
                                                
                                          <div class="card shadow-lg card_small" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            

                                                <tr><td align="center" colspan="3"><h2>Problem Id : <%=stsb.getP_id()%></h2></td></tr>
                                                <tr><td align="center" colspan="3"><hr><b>Solution Description</b></td></tr>
                                                <tr><td colspan="3" ><%= stsb.getS_des()%><hr></td></tr>
                                                <tr><td>Status</td><td>&nbsp;</td><td ><h2><span class="badge badge-secondary"><%= stsb.getIRStatus()%></span></h2></td></tr>
                                                <tr><td colspan="3"><a class="btn btn-info" href="viewUploadedStudentSolution.jsp?id=<%= stsb.getP_id()%>" style="text-decoration:none;width:100%;">View</a></td></tr>
                                                
                                           

                                        </table>


                                   


                             
                            </div>
                   
                        </div>


                    <%
                            }else if(stsb == null){
                            
                            %>
                    
                              <div align="center">                                          
                           <div class="card shadow-lg card_width" align="center" style="background-color:white;font-size:20px;min-height:450px;margin-bottom:40px;" >
                           
                             
                       
                           <div class="card-body">
                               
                             <span ><i class="fa fa-folder-open fa-10x " style="color:lightgrey;margin-top:60px;"></i></span>
                                <h1 align="center" style="color:lightgrey;"> You have not Uploaded any solution yet.   </h1> 
                                     
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
           
               response.sendRedirect("StudentLogin.jsp?value=0");
           
           }
       %>
        
    </body>
</html>
