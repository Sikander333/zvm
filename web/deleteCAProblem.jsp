

<%@page import="DAO.MethodOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <%   
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
            if(session.getAttribute("aadharidFromcollectorHome")!=null && session.getAttribute("passwordFromcollectorHome")!=null){
            
            %>
        
        
        
      <%
      if(request.getParameter("id")!=null){
            int id=Integer.parseInt(request.getParameter("id"));
       
       MethodOperation mo = new MethodOperation();
       
       boolean b=mo.deleteCAProblem(id);
      
       
      if(b){
       response.sendRedirect("collectorHome.jsp");
       }else{
       out.println("There is something wrong contact to admin");
       }            
      
            }
      
      
      
      %>
        
     
      
      <%
         
         
         }else{
           
               response.sendRedirect("CALogin.jsp?value=0");
           
           }
%>
        
    </body>
</html>
