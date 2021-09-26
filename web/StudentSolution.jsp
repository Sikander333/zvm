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
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script> 
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
  
div.card_width{
    margin-top:100px; 
  width:95%;  
    
}    

}
@media screen and (min-width:1601px){
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
            if(session.getAttribute("aadharidFromSelectedProblemStatus")!=null && session.getAttribute("passwordFromSelectedProblemStatus")!=null){
            
        
        %>
        
                 
          <jsp:include page="studentNavbar.jsp" /> 
          
          
          <%
           MethodDeclarations md = new MethodOperation();
                         int id = Integer.parseInt(request.getParameter("Pid")); 
           session.setAttribute("PidFromStudentSolution",id);
           String aadharid = session.getAttribute("aadharidFromSelectedProblemStatus").toString(); // aadharidFromStudentHome can also be written
           session.setAttribute("aadharidFromStudentSolution",aadharid);
            String IRAadharid = session.getAttribute("IRAadharidFromSelectedProblemStatus").toString();
            session.setAttribute("IRAadharidFromStudentSolution",IRAadharid);
          %>
          
          
          
          
          
                  <div class="container-fluid"  style = "margin-top : 100px;overflow-y:scroll;height:894px;" >       
        
            <div align="center" >
                
                <div  class="card_width">
                    
                    
                    <%
                   StudentSolutionsBean stsb = md.selectStudentSolution(aadharid ,IRAadharid);
                     
                     if(stsb==null){
                    %>
             
                                     <div class="card shadow-lg" style="padding:20px;margin-bottom:20px;margin-top: 50px;" align="left">
                 
                         
                         <div class="card-title" style="padding:20px;">
                             <h1 style="color:darkgray;">Upload Solution for Problem <%=id%></h1>
                            </div>
                         
                         <div class="card-body" style="background-color:#f3f8f8;">
                             
                                 
                                 <form action="insertIntoStudentSolutionsController" method="post" enctype="multipart/form-data">
                                        <div class="row" >


                                            <div class="col-lg-4" >
                                               
                                                <h2><label for="subject">Solution Description</label></h2>
                                           
                                                </div>
                                            <div class="col-lg-8" id="textarea_div">
                                                <textarea id="subject" name="P_des" placeholder="Enter Solution Description" style="height:200px"></textarea>
                                            </div>
                                        </div>



                                        <div class="row">

                                            <br><br>
                                           <div class="col-lg-12" style="padding-top:20px;">
                                            <div class="upload-btn-wrapper">
                                                <input type="file" name="myfile" multiple required  id="file_img"   />           
                                          <button class="btn">Select a file</button>

                                            </div>
                                               </div> 
                                        </div>                       

                                     
                                     <script type="text/javascript">

    $(document).ready(function(){

        $('#file_img').change(function(){

               var fp = $("#file_img");

               var lg = fp[0].files.length; // get length

               var items = fp[0].files;

               var fileSize = 0;

           

           if (lg > 0) {

               for (var i = 0; i < lg; i++) {

                   fileSize = fileSize+items[i].size; // get file size

               }

               if(fileSize > 2000*1000*2) {

                    alert('Total file size must be less than 4 MB');

                    $('#file_img').val('');

               }

           }

        });

    });

    </script>
                                     
                                     
                                     

                                        <div class="row">
                                                     <div class="col-lg-12" style="padding-top:20px;"  >
                                            <!--  <button type="button" class="btn btn-success"  onclick="myFunction()">Upload</button>                      -->        
                                            <input type="submit" class="btn btn-success" value="Upload">
                                            </div>
                                        </div>           



                                    </form>
                                 
                          
                             
                         </div>
                         
                     </div>
                
                            
                            
                            
                   <%

                     }else if (stsb != null) {
                    %>        
 
                            <div align="center">  
                           <div class="card shadow-lg card_width" align="center" style="background-color:white;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;margin-top:80px;" >
                           
                             
                       
                           <div class="card-body">
                               
                            
                               
                               <span ><i class="fa fa-check-circle fa-10x " style="color:lightgrey;margin-top:60px;"></i></span>
                                <h1 align="center" style="color:lightgrey;">  Solution has been uploaded successfully !!    </h1>     
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
