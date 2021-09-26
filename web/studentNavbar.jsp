<%-- 
    Document   : indexNavbar
    Created on : 2 Jun, 2020, 12:06:12 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <Style>
            .dropdown-css{
                border: none;
             
            }
            li:hover{
                background-color: #88bdbc;
               }
              
        </Style>
        <link href='https://fonts.googleapis.com/css?family=Alex Brush' rel='stylesheet'>     
    </head>
    <body style="background-color: #88bdbc;">
         <!-- Start Navigation -->
      
           
  <nav class="navbar navbar-expand-xl navbar-dark pl-5 fixed-top" style = "background-color : #112d32 ">
    <a href="index.jsp" class="navbar-brand"><h2 style="font-family: 'Alex Brush';font-size: 43px;">District Development Portal</h2></a>
    <span class="navbar-text"><h2>Think For Development</h2></span>
    
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#myMenu"  >
      <span class="navbar-toggler-icon"></span>
    </button>
       
    <div class="collapse navbar-collapse" id="myMenu">
      <ul class="navbar-nav pl-5 custom-nav">
        <li class="nav-item "><a href="studentHome.jsp?value=0" class="nav-link "><h3 style="color:white;padding-right:20px;"> <span><i class="fa fa-home"></i> Home</span></h3></a></li>
        <li class="nav-item"><a href="UploadedStudentSolution.jsp" class="nav-link"><h3 style="color:white;padding-right:20px;" ><span><i class="fa fa-upload"></i> Uploaded Solution</span></h3></a></li>
       
        
        <li class="nav-item dropdown">
            
            <a href="#" class="nav-link "  data-toggle="dropdown" ><h3 style="color:white;padding-right:20px;" ><span>Problems <i class="fa fa-caret-down"></i></span></h3></a>
     
               
            <div class=" dropdown-menu dropdown-css shadow-lg">
                
      
        <a class="dropdown-item " href="selectedProblemStatus.jsp"><h3>Status</h3></a>
        <a class="dropdown-item " href="IRAllProblems.jsp"><h3> All Problems</h3></a>
                    
      </div>
           
         
        </li>
        
       
         <li class="nav-item dropdown">
            
            <a href="#" class="nav-link "  data-toggle="dropdown" ><h3 style="color:white;padding-right:20px;" ><span><span><i class="fa fa-users"></i> Members</span> <i class="fa fa-caret-down"></i></span></h3></a>
     
               
            <div class=" dropdown-menu dropdown-css shadow-lg">
                
      
        <a class="dropdown-item " href="showCAForStudents.jsp"><h3>Collector Assistant</h3></a>
        <a class="dropdown-item " href="showAllIRForStudents.jsp"><h3>Institute Representative</h3></a>
         <a class="dropdown-item " href="AllStudentsForStudents.jsp"><h3>Students</h3></a>               
      </div>
           
         
        </li>
        
          <li class="nav-item">
            <a href="LogoutController" class="nav-link"><h3 style="color:white;padding-right:20px;" ><span><i class="fa fa-sign-out-alt"></i> Log out</span></h3></a></li>
         
        
       
       
        
      </ul>
    </div>
  </nav> <!-- End Navigation -->
 
  
        
  
   
    </body>
</html>
