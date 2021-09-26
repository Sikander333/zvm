

<%@page import="Bean.CATableBean"%>
<%@page import="DAO.MethodDeclarations"%>
<%@page import="Bean.ProblemsUpByCABean"%>

<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.MethodOperation"%>
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
           
            @media screen and (max-width:1600px){
            div.margin_top{
                margin-top:20px;
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
    <body    >
        <%
           
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("aadharidFromCALoginController")!=null && session.getAttribute("passwordFromCALoginController")!=null){
                session.setAttribute("aadharidFromcollectorHome",session.getAttribute("aadharidFromCALoginController"));
                session.setAttribute("passwordFromcollectorHome",session.getAttribute("passwordFromCALoginController"));
        %>
                 
          <jsp:include page="collectorNavbar.jsp" /> 
          
          
          
          
          
           <div class="container-fluid"  style = "margin-top : 95px;"  >       
            
           
            
            <div class="row"  >
                
             
                
                
                <div class="col-lg-4" style="height:889px;background-color:#112d32;" >
                    <%
                        MethodDeclarations md = new MethodOperation();
                         CATableBean catb = md.selectCAInformation();
                    if(catb!=null){
                    %>
                    <div class="card img_width" style="background-image:url('image_ddp/<%=catb.getFile()%>');background-size:100% 100%;background-repeat:no-repeat;height:500px;border:none;" >
                        <div class="card-body">
                            
                        </div>
                        <div class="card-footer" style="background-color:rgba(23,67,88,0.5);">
                            <div style="color:white;" > 
                    
                            <h1 style="padding-top:20px;"><%=catb.getUsername()%></h1>
                            <h1 style="font-size:20px;">Collector Assistant</h1>
                            <h1 style="font-size:20px;"><%=catb.getDistrict()%>l</h1>
                            
                     </div> 
                        </div>
                    </div>
                                         <div style="color:white;font-size:30px;margin-top:20px;">
                            
                            <p><i class="fa fa-home fa-fw "></i> <%=catb.getAddress()%>&nbsp;&#44;&nbsp;<%=catb.getCity()%>&nbsp;&#44;&nbsp;<%=catb.getState()%></p>
                            <p><i class="fa fa-envelope fa-fw"></i> <%=catb.getEmailadd()%></p>
                            <p><i class="fa fa-phone fa-fw"></i> +91&nbsp;<%=catb.getContactno()%></p>
                           
                        </div>
                         <div class=" row" style="width:100%;color:white;margin-left:4px;cursor:pointer;margin-top: 50px;">
                                                  <a class="btn btn-info" href="ScoreBoardForCA.jsp"  style="text-decoration:none;width:100%;"><span class="fa fa-th fa-3x" > Scoreboard</span></a>
                                                  </div>
                 
                    <%
                    }
                    %>
                </div>
                
                 <div class="col-lg-8 margin_top"  style="height:889px;background-color: #88bdbc; overflow-y:scroll;" >
                        
                     
                     <div class="card shadow-lg" style="padding:20px;margin-bottom:20px;">
                 
                         
                         <div class="card-title" style="padding:20px;">
                             <h1 style="color:darkgray;">Upload Problems</h1>
                            </div>
                         
                         <div class="card-body" style="background-color:#f3f8f8;">
                             
                                 
                                 <form action="insertIntoCAProblemController" method="post" enctype="multipart/form-data">
                                        <div class="row" >


                                            <div class="col-lg-4" >
                                               
                                                <label for="subject"><h2>Problem Description</h2> </label>
                                           
                                                </div>
                                            <div class="col-lg-8" id="textarea_div">
                                                <textarea id="subject" name="P_des" placeholder="Enter Problems" style="height:200px"></textarea>
                                            </div>
                                        </div>



                                        <div class="row">

                                            <br><br>
                                           <div class="col-lg-12" style="padding-top:20px;">
                                            <div class="upload-btn-wrapper">
                                                <input type="file" name="myfile" multiple required id="file_img"   />           
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
                     
                     
                     
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-bottom:15px;">
                     
                                          <div class="card shadow-lg" style="background-color:#112d32;color:white;padding:10px;">
                                              
                                               <h2 ><i>Uploaded Problems</i></h2>
                                             
                                                 
                                              </div>
                                                  
                                          <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;">
                                              <div  style="background-color:#f3f8f8;padding:20px;" >
                                                  
                                                
                                                  
                                              <table  width="100%">
                                            <tr >
                                                
                                                <th width="20%" >Problems Id </th>
                                                <th width="50%">Problem Description</th>
                                                <th width="25%">Status</th>
                                                <th width="5%">Documents</th>
                                                
                                            </tr>
                                        </table>
                                             </div>
                                                 
                                              </div>
                     
                                  </div>
                     
                     
                     
                     
                     
                     
                     
                     
                                         <%

                        

                        List li = md.selectAllCAProblems();
                        if (li != null) {

                            ListIterator lit = li.listIterator();
                            while (lit.hasNext()) {
                                ProblemsUpByCABean pubcab = (ProblemsUpByCABean) lit.next();
                                

                    %>         
 
                       
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                       <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            <tr >

                                                <td width="10%"><%=pubcab.getP_id()%></td>
                                                <td width="60%" style=""><%= pubcab.getP_des()%></td>
                                                <td width="25%"><h2><span class="badge badge-secondary"><%= pubcab.getStatus()%></span></h2></td>
                                                <td width="5%"><a class="btn btn-info" href="ViewCAProblems.jsp?id=<%= pubcab.getP_id()%>" style="text-decoration:none;">View</a></td>
                                                <!--
                                                <td width="10%" ><div style="cursor:not-allowed;display:none;"><a class="btn btn-success  " href="updateCAProblem.jsp?id=<%= pubcab.getP_id()%>" style="text-decoration:none;pointer-events:none;"  >Update</a></div></td>
                                                <td width="10%"  ><div style="cursor:not-allowed;display:none;"><a  class="btn btn-danger" href="deleteCAProblem.jsp?id=<%= pubcab.getP_id()%>" style="text-decoration:none;pointer-events:none;">Delete </a></div></td>
                                                -->
                                            </tr>

                                        </table>


                                   


                             
                            </div>
                   
                        </div>

                                                
                                                
                                                
                                                
                                                
                                                
                      <div class="card shadow-lg card_small" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            

                                                <tr ><td align="center" colspan="3"><h2><b>Problem Id : <%=pubcab.getP_id()%></h2></b></td></tr>
                                                <tr><td colspan="3" align="center"><hr><b>Problme Description</b></td></tr>
                                                <tr ><td colspan="3"><%= pubcab.getP_des()%><hr></td></tr>
                                                <tr ><td>Status</td><td>&nbsp;</td><td><h2><span class="badge badge-secondary"><%= pubcab.getStatus()%></span></h2></td></tr>
                                                <tr ><td colspan="3"><a class="btn btn-info " href="ViewCAProblems.jsp?id=<%= pubcab.getP_id()%>" style="text-decoration:none;width:100%;margin-top:10px;">View</a></td></tr>
                                               
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
                                <h1 align="center" style="color:lightgrey;">  No Problem has been uploaded Yet !!    </h1>     
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
           
               response.sendRedirect("CALogin.jsp?value=0");
           
           }
       %>                
                    
                    
        
    </body>
</html>
