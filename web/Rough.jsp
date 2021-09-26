<%-- 
    Document   : Rough
    Created on : 12 Jul, 2020, 1:28:43 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>






$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
<%
                                                    boolean b=md.checkForEnableOrDisableOfAssignPoints(stsb.getAadharid());
                                                   if(b==false){
                                                     %> 
                                                     <a style = "font-size : 35px;padding:0px;margin-top:25px;width:250px;height:65px;" class="btn btn-dark shadow-lg" href="assignPoints.jsp?id=<%=stsb.getP_id()%>">Assign Points</a>
                                                 
                                                  <%
                                                    }else if(b==true){
                                                     
                                                     %>
                                                <div style="cursor:not-allowed;"> <a style = "font-size : 35px;padding:0px;margin-top:25px;width:250px;height:65px;pointer-events:none;" class="btn btn-dark shadow-lg" href="assignPoints.jsp?id=<%=stsb.getP_id()%>">Assign Points</a></div>
                                                 
                                                      
                                                      <%
                                                     }
                                                  %>
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$










