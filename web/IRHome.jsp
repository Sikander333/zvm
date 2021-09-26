 <%-- 
    Document   : index
    Created on : 17 Jan, 2020, 3:30:29 PM
    Author     : hp
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.MethodDeclarations"%>
<%@page import="Bean.IRTableBean"%>
<%@page import="Bean.ProblemsUpByCABean"%>
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
           @media screen and (max-width:1600px){
            div.margin_top{
                margin-top:15px;
            }
            
             div.outermost_card_padding{
                     padding:10px;
                    
                 }
            
                  div.margin_left{
                     margin-left:0px;
                     width:40%;
                 }
                 div.font_size_upper{
                     font-size: 35px;
                 }
                 div.font_size_lower{
                     font-size: 25px;
                 }
                 div.img_width{
                     width:625px;
                 }
            }
            @media screen and (min-width:1601px){
                 div.outermost_card_padding{
                     padding:20px;
                    
                 }
                 div.margin_left{
                     
                     width:20%;
                 }
                  div.font_size_upper{
                     font-size: 50px;
                 }
                 div.font_size_lower{
                      font-size:30px;
                 }
                 div.img_width{
                     width:650px;
                 }
            }


        </style>  
      
        
<jsp:include page="title.jsp" />
        
        
        
        
        
        
        
        
        
 
        
        
        
      
       
       
        
                
      
         
 </head>
    <body >
       <%
           response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
           System.out.println("::::::::::::::::::::::::::::::::::IRAadharid and Password at IRHome.jsp"+session.getAttribute("aadharidFromIRLoginController")+"  "+session.getAttribute("passwordFromIRLoginController"));
           if(session.getAttribute("aadharidFromIRLoginController")!=null && session.getAttribute("passwordFromIRLoginController")!=null){
            
           
       %>
            
          <jsp:include page="IRNavbar.jsp" />
          
          <%
          String IRAadharid = session.getAttribute("aadharidFromIRLoginController").toString();
          session.setAttribute("IRAadharidFromIRHome",IRAadharid);
          session.setAttribute("passwordFromIRHome",session.getAttribute("passwordFromIRLoginController"));
          %>
          
          
          
           <div class="container-fluid"  style = "margin-top : 100px;"  >       
            
           
            
            <div class="row"  >
                
             
                
                
                <div class="col-lg-4" style="height:889px;background-color:#112d32;" >
           <%                  
                                MethodDeclarations md = new MethodOperation();
                                IRTableBean irtb = md.selectIRTable(IRAadharid);
                                if(irtb!=null){
           %>         
                    
                    <div class="card img_width" style="background-image:url('image_ddp/<%=irtb.getFile()%>');background-size:cover;background-repeat:no-repeat;height:500px;border:none;" >
                        <div class="card-body">
                            
                        </div>
                        <div class="card-footer" style="background-color:rgba(23,67,88,0.5);">
                            <div style="color:white;" > 
                    
                            <h1 style="padding-top:20px;"><%=irtb.getUsername()%></h1>
                            <h1 style="font-size:20px;"><%=irtb.getDesignation()%></h1>
                            <h1 style="font-size:20px;"><%=irtb.getCollege()%></h1>
                            
                     </div> 
                        </div>
                    </div>
                    <div class="card" style="background-color: #112d32;color:white;padding:20px;">
                        <h2 align="center">Institute Representative</h2>
                    </div>
                    
                    
                    
                    
                    
                    
                    
                           <div style="color:white;font-size:30px;">
                            
                            <p><i class="fa fa-home fa-fw "></i> <%=irtb.getAddress()%>&nbsp;&#44;&nbsp;<%=irtb.getCity()%>&nbsp;&#44;&nbsp;<%=irtb.getState()%></p>
                            <p><i class="fa fa-envelope fa-fw"></i> <%=irtb.getEmailadd()%></p>
                            <p><i class="fa fa-phone fa-fw"></i> +91&nbsp;<%=irtb.getContactno()%></p>
                           

                        </div>
                    
                                 <div class=" row" style="width: 100%;color:white;margin-left:4px;cursor:pointer;margin-top: 20px;">
                                                  <a class="btn btn-info" href="ScoreBoardForIR.jsp"  style="text-decoration:none;width:100%;"><span class="fa fa-th fa-3x" > Scoreboard</span></a>
                                                  </div>
                    
                    
                 <%         
                                }                   
                 %>
                    
                </div>
                
                 <div class="col-lg-8 margin_top"  style="height:889px;background-color: #88bdbc; overflow-y:scroll;" >
                        
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-bottom:15px;">
                     
                         <div class="card shadow-lg" style="background-color:#40565a;color:white;padding:40px;">
                                             
                                               <h2 align="center"><i>New Problems</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
                     
                                         <%

                        

                        List li = md.selectUnSolvedCAProblems(IRAadharid);
                        if (li != null) {

                            ListIterator lit = li.listIterator();
                            while (lit.hasNext()) {
                                ProblemsUpByCABean pubcab = (ProblemsUpByCABean) lit.next();
       
                                
                              
                                

                    %>
 
                         
                                                       
                                                      
                                      <div class="card margin_left " style="background-color:#112d32;color:white;" align="center">
                                                        <div class="card-body font_size_upper"  >
                                                            <%=pubcab.getP_id()%>
                                                        </div>
                                                        <div   style="padding-bottom:20px;" class="font_size_lower" >Problem Id</div>
                                                    </div>   
                                        
                                        
                                              
                                                        
                                                        
                       <div class="card shadow-lg outermost_card_padding" style="margin-bottom:70px;background-color: #112d32">
                           <div class="card" style="background-color:#f3f8f8;padding-top:20px;padding-left:20px;padding-right:20px;font-size:20px;min-height:450px;">
                           
                       
                           <div class="card-body">
                                          
                                                 <h1 align="center">Problem Description</h1>
                               <%= pubcab.getP_des()%>
                               
                               
                              <hr>
                                   <div class="row" style="margin-left:10px;"><h4>Status</h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;<h3><span class="badge badge-secondary"><%=pubcab.getStatus()%></span></h3></div>
                               <div class="row" style="margin-left:10px;"><h4>Uploaded&nbsp;:&nbsp;<%=pubcab.getPdate()%></h4></div>
                                   
                              
                              
                           </div>
                        
                               <div class="card-footer" >
                                             
                                            <div class="row" >
                                               <div class="col-6"><a class="btn btn-info btn-block " href="viewActualNewCAProblems.jsp?id=<%= pubcab.getP_id()%>" style="text-decoration:none; border: none;">View</a></div> 
                                               <div class="col-6"><a class="btn btn-success btn-block" href="insertIntoIRProblemsController?id=<%= pubcab.getP_id()%>" style="text-decoration:none;border:none;">Forward   <i class="fa fa-forward"></i></a></div> 
                                              
                                            </div>
                                    </div>
                             </div>     

                                               

                                   


                             
                           
                              
                        </div>


                    <%
                            }
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
