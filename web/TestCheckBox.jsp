<%-- 
    Document   : TestCheckBox
    Created on : 30 Jun, 2020, 12:14:26 PM
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
        <form action="TestCheckBox" method="post">
             <div class="form-check">    
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input" name="checkbox" value="1"> Potato
                                                    </label>
                                                </div>    
            <div class="form-check">    
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input" name="checkbox" value="2"> Tomato
                                                    </label>
                                                </div>    
            <div class="form-check">    
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input" name="checkbox" value="3"> Corriander
                                                    </label>
                                                </div>                                            
                                                    
             <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </body>
</html>
