

<%@page import="Bean.ProblemsUpByCABean"%>
<%@page import="java.util.ListIterator"%>
<%@page import="DAO.MethodOperation"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="mo" class="DAO.MethodOperation" scope="page"/>
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
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script> 
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
  
div.card_width{
  width:90%;  
    
}    
       }
@media screen and (min-width:1601px){
div.card_width{
  width:70%;  
    
}  
}
        </style>     
        
        
        
        
        
    </head>
    <body>
        <%   
           response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("aadharidFromcollectorHome")!=null && session.getAttribute("passwordFromcollectorHome")!=null){
            
            %>
        
        <%
        
         if(request.getParameter("id")!=null){  
            int id=Integer.parseInt(request.getParameter("id")); 
                                                      
    MethodOperation pubcao = new MethodOperation();
    ProblemsUpByCABean pubcab=pubcao.selectCAProblems(id);
    if(pubcab!=null){
        %>
        
        <jsp:include page="collectorNavbar.jsp" /> 
        
        
        
        
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
                
                
                <div class="col-lg-12"  style="height:899px;background-color: #88bdbc;overflow-y:scroll;padding:0px;">
                        
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:30px;margin-bottom:30px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>Update Problem</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
                    
                    
                             <div align="center">
                          <div class="card shadow-lg card_width" style="padding:20px;margin-bottom:20px;margin-top:100px;">
                 
                       
                        
                         <div class="card-body" style="background-color:#f3f8f8;">
                             
                                 
                                 <form action="updateCAProblemController?id=<%= pubcab.getP_id()%>" method="post" enctype="multipart/form-data">
                                        <div class="row" >


                                            <div class="col-lg-4" >
                                               
                                                <h2><label for="subject">Problem Description </label></h2>
                                           
                                                </div>
                                            <div class="col-lg-8" id="textarea_div">
                                                <textarea id="subject" name="P_des" placeholder="Enter Problems" style="height:200px"></textarea>
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
                     </div>
    
                     </div>
                
                
                
                
                
            </div>
        
        </div>
        
        
        
        
        
        
        
      


<%
            }
    }else{
        out.println("Select any record cause ID is null");
       }
         
         
         
         %>

        <%
         
         
         }else{
           
               response.sendRedirect("CALogin.jsp?value=0");
           
           }
%>



    </body>
</html>





















        
        
       
      
        
               
        
  