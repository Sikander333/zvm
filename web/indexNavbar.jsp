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
    </head>
    <body>
         <!-- Start Navigation -->
      
           
  <nav class="navbar navbar-expand-xl navbar-dark pl-5 fixed-top" style = "background-color : #112d32 ">
    <a href="index.jsp" class="navbar-brand"><h2 style="font-family: 'Alex Brush';font-size: 50px;">District Development Portal</h2></a>
   
    <span class="navbar-text"><h2>Think For Development</h2></span>
    
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#myMenu"  >
      <span class="navbar-toggler-icon"></span>
    </button>
     
    <div class="collapse navbar-collapse" id="myMenu">
      <ul class="navbar-nav pl-5 custom-nav">
          <li class="nav-item "><a href="index.jsp" class="nav-link "><h3 style="color:white;padding-right:40px;"> <span><i class="fa fa-home"></i> Home</span></h3></a></li>
        <li class="nav-item"><a href="about.jsp" class="nav-link"><h3 style="color:white;padding-right:40px;" ><span><i class="fa fa-info-circle"></i> About</span></h3></a></li>
        <li class="nav-item">
            <a href="contact.jsp" class="nav-link"><h3 style="color:white;padding-right:40px;" ><span><i class="fa fa-address-book"></i> Contact</span></h3></a></li>
       
        <li class="nav-item dropdown">
            
            <a href="#" class="nav-link "  data-toggle="dropdown" ><h3 style="color:white;padding-right:40px;" ><span><i class="fa fa-user"></i> Registration</span></h3></a>
     
               
            <div class=" dropdown-menu dropdown-css shadow-lg">
                
      
        <a class="dropdown-item " href="IRsignup.jsp?value=0"><h3>As an IR</h3></a>
        <a class="dropdown-item " href="Studentsignup.jsp?value=0"><h3>As a Student</h3></a>
                        
      </div>
           
         
        </li>
       
        <li class="nav-item dropdown" >
            <a href="#" class="nav-link" data-toggle="dropdown"  ><h3 style="color:white;padding-right:40px;" ><span><i class="fa fa-sign-in-alt"></i> Login</span></h3></a>
        
             <div class=" dropdown-menu dropdown-css shadow-lg">
                
        <a class="dropdown-item " href="CALogin.jsp?value=0" ><h3>As a Collector</h3></a>
        <a class="dropdown-item " href="IRLogin.jsp?value=0"><h3>As an IR</h3></a>
        <a class="dropdown-item " href="StudentLogin.jsp?value=0"><h3>As a Student</h3></a>
                        
      </div>
            
            
            
        </li>
        
      </ul>
    </div>
  </nav> <!-- End Navigation -->
 
  
        
  
   
    </body>
</html>
