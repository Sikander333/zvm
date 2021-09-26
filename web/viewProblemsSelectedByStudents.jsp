



<%@page import="Bean.StudentProblemsBean"%>
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
            @media screen and (max-width:1600px){
  
div.card_width{
  width:90%;  
    
}    }
       
       @media screen and (min-width:1601px){
div.card_width{
  width:60%;  
    
} 
       }
  </style>
        
        
        
        
        
        
    </head>
    <body>
        
        <%
           response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
           if(session.getAttribute("IRAadharidFromProblemsSelectedByStudentFT")!=null && session.getAttribute("passwordFromProblemsSelectedByStudentFT")!=null){
            
           
       %>
        
        <jsp:include page="IRNavbar.jsp" /> 
        
        
        
        
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
                
                
                <div class="col-lg-12"  style="height:899px;background-color: #88bdbc; overflow-y:scroll;padding:0px;">
                        
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:30px;margin-bottom:30px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>Problem Attachments</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
         <%
       if(request.getParameter("id")!=null){   //To check whether the id coming from update button is null
    int id=Integer.parseInt(request.getParameter("id")); // we can call load function of hibernate here and can also use criteria .
                                                        // we can also call function in session just like save and delete
                                                        // we can call two functions get and load but we can not call load function because we do not want to 
                                                       // fetch details from database ,it will return proxy object only
    String IRAadharid = session.getAttribute("IRAadharidFromProblemsSelectedByStudentFT").toString();
    StudentProblemsBean stpb=mo.selectStudentProblems(id ,IRAadharid);
    if(stpb!=null){   //To check thet the row coming in student proxy object from database is not null
        String str=stpb.getF_Name();
        String file_names[]=str.split(" ");
         for(int i=0 ; i<file_names.length;i++){
            %>

          
   <div align="center">         
 <div class="card shadow-lg card_width" style="margin-bottom:40px;height:500px;">
    <div class="card-body">
    
         <iframe  src="image_ddp/<%=file_names[i]%>" scrolling="no" frameborder="0" style="width:100%;height:100%;min-height:100%;min-width:100%;"></iframe>
          
    
        
       </div> 
         <div class="card-footer"><h2><%=file_names[i]%></h2> </div>
    </div>  
   </div>
       
  
    
                    
               <%
            
            }
         
        }
    }else{
        out.println("Select any record cause ID is null");
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





















        
        
       
      
        
               
        
  