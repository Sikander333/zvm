
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
    </head>
    <body style="background-color:#88bdbc;">
        
         <%
           
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("aadharidFromNewIRRequest")!=null && session.getAttribute("passwordFromNewIRRequest")!=null){
           
        %>
        
        <jsp:include page="collectorNavbar.jsp" /> 
        
        
        
        <div align="center">
            <div class="card shadow-lg" style = "margin-top : 350px;width:60%;height:70%;padding:20px;border:none;" align="left">	
                
               
                                <form method="post" action="assignIRStatusController">
                                     <input type="hidden" name="page" value="assignIRStatus">  
                                     <center><h1 style = "font-family : 'Monotype Corsiva' ; color : #E6120E">Assign Status</h1></center>
                                     
                                     
                                     
                                     
                                     
<%
String aadharid = request.getParameter("id").toString();
%>



<div class="form-group" style="margin-bottom: 40px;">
<label>Aadhar ID</label>
<input type="text" name="aadharid" value = "<%= aadharid %>" class="form-control">
</div>

<div class="form-group" style="margin-bottom: 40px;"  >
    
    
    
    
<label>Status</label>
<select name = status class="form-control">
 <option value = "Accepted">Accept</option>
 <option value = "Rejected">Reject</option>
  </select>
<div style="margin-top:40px;" >
    
    
    
    
<input type="submit" value="Submit" class = "btn btn-primary form-control"  />
</div>
</div>
</form>






</div>
        
    </div>    
        

<%
           }else{
           
               response.sendRedirect("CALogin.jsp?value=0");
           
           }
       %>   


    </body>
</html>
