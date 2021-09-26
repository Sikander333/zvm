<%-- 
    Document   : IR_profile
    Created on : 4 Feb, 2020, 2:13:11 PM
    Author     : hp
--%>

<%@page import="Bean.ProblemsUpByCA"%>
<%@page import="DAO.UploadByCAOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        if(request.getParameter("radio")!=null){
        int id=Integer.parseInt(request.getParameter("radio"));
        UploadByCAOperation upbcao = new UploadByCAOperation();
    ProblemsUpByCA pubca=upbcao.selectProblem(id);
    if(pubca!=null){
    
    %>
    <table>
        <tr>
            <td><%=pubca.getP_id()%></td><td><%=pubca.getP_des()%></td><td><%=pubca.getf_Name()%></td></tr>
        
        
    </table>
        <%
    
    }
        
        
        }
       %>
    </body>
</html>
