
<%@page import="Bean.IRProblemsBean"%>
<%@page import="Bean.StudentProblemsBean"%>
<%@page import="DAO.MethodDeclarations"%>
<%@page import="java.util.ListIterator"%>
<%@page import="DAO.MethodOperation"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
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
        
        
        
<link rel=stylesheet type = text/css href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   



 

 <link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
<script type="text/javascript"  src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
  <script type="text/javascript"  src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
  
 
        
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
/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
  
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 50px;
  width: 50px;
  background-color: #eee;
 
  background-color: #88bdbc;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #112d32;;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 14px;
  top: 3px;
  width: 20px;
  height: 30px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}

@media screen and (max-width:1600px){
    div.card_width{
        width:90%;
    }
     div.margin_top{
                margin-top:50px;
            }
     div.card_large{
                display:none;
            }
 }

@media screen and (min-width:1601px){
          div.card_width{
        width:70%;
    }
    div.margin_top{
                margin-top:20px;
            }
            
    div.card_small{
                display:none;
            } 
 }



</style>
    
       
        
        
        
    </head>
    <body>
        
         <%
           response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
           if(session.getAttribute("IRAadharidFromReconsiderStudentProblemsController")!=null && session.getAttribute("passwordFromReconsiderStudentProblemsController")!=null){
            
           
       %>
        
        <jsp:include page="IRNavbar.jsp" /> 
        <%
        
        String aadharid= session.getAttribute("AadharidFromReconsiderStudentProblemsController").toString();
        session.setAttribute("AadharidFromSuggestIRProblems",aadharid);
        String IRAadharid = session.getAttribute("IRAadharidFromReconsiderStudentProblemsController").toString();
        session.setAttribute("IRAadharidFromSuggestIRProblems",IRAadharid);
        session.setAttribute("passwordFromSuggestIRProblems",session.getAttribute("passwordFromReconsiderStudentProblemsController"));
        %>
        
        
        
        <div class="container-fluid"  style = "margin-top : 100px;overflow-y:scroll;" >       
        
            <div class="row"  >
                
                
                
                             <div align="center">
                    
                              <div  class="card_width margin_top " style="height:889px;background-color: #88bdbc;"  >
                        
                     
                     
                       <form action="suggestedByIRController" method="post" >
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-bottom:15px;">
                     
                                          <div class="card shadow-lg" style="background-color:#112d32;color:white;padding:20px;">
                                              
                                               <h1><i>Select Exact 3 Unselected problem </i></h1>
                                              <h3><i>Suggest the problems to Student</i></h3>
                                              <input style="width:30%;font-size:30px;"  type="submit" class="btn btn-success" value="Suggest" > 
                                              </div>
                                                  
                                          <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;">
                                              <div  style="background-color:#f3f8f8;padding:20px;" >
                                                  
                                                
                                                  
                                              <table  width="100%">
                                            <tr >
                                                
                                                <th width="20%" >Problems Id </th>
                                                <th width="60%">Problem Description</th>
                                                <th width="10%">Status</th>
                                                <th width="10%">Documents</th>
                                                
                                            </tr>
                                        </table>
                                             </div>
                                                 
                                              </div>
                     
                                  </div>
                     
                                         <%

                        MethodOperation mo = new MethodOperation();
                          
                        List li = mo.selectAllIRProblems(IRAadharid);
                        if (li != null) {

                            ListIterator lit = li.listIterator();
                            while (lit.hasNext()) {
                                IRProblemsBean irpb = (IRProblemsBean) lit.next();
                                

                    %>         
 

                       <div class="card shadow-lg card_large" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                            <tr >

                                     
                                                <td width="10%">
                                                    
                                                   
                                                    <label class="container">
                                                        <input type="checkbox"  name="checkbox" value="<%=irpb.getP_id()%>">
                                                         <span class="checkmark"></span>
                                                    </label>
                                                 
                                        </td>
                                        
                                                <td width="5%"><%=irpb.getP_id()%></td>
                                                <td width="65%" style="padding-right:70px;" ><%= irpb.getP_des()%></td>
                                                <td width="10%" style="margin-left:0px;" ><h2><span class="badge badge-secondary"><%= irpb.getStatus2()%></span></h2><td>
                                                <td width="10%" style="padding-left:30px;"  ><a class="btn btn-info" href="viewUnsolvedIRProblemsOfsuggestIRProblemsPage.jsp?id=<%= irpb.getP_id()%>" style="text-decoration:none;" >View</a></td>
                                             
                         
                                            

                                            </tr>

                                        </table>


                                   


                             
                            </div>
                   
                        </div>

                                       <div class="card shadow-lg card_small" style="padding-left:20px;padding-right:20px;margin-bottom:15px;">
                   
                           
                                              <div  style="background-color:#f3f8f8;padding:20px;font-size:20px;" >

                               
                                    

                                        <table width="100%">

                                          

                                     
                                               
                                        
                                                <tr><td align="center" colspan="3"><h2>Problem Id : <%=irpb.getP_id()%></h2></td></tr>
                                                <tr><td align="center" colspan="3"><hr><b>Problem Description<b></td></tr>
                                                <tr><td align="left" colspan="3" ><%= irpb.getP_des()%><hr></td></tr>
                                                <tr><td>Status</td><td>&nbsp;</td><td><h2><span class="badge badge-secondary"><%= irpb.getStatus2()%></span></h2><td></tr>
                                                 <tr> <td >Select</td><td>&nbsp;</td><td>
                                                    
                                                   
                                                    <label class="container">
                                                        <input type="checkbox"  name="checkbox" value="<%=irpb.getP_id()%>">
                                                         <span class="checkmark"></span>
                                                    </label>
                                                 
                                        </td></tr>
                                                <tr><td colspan="3" ><a class="btn btn-info" href="viewUnsolvedIRProblemsOfsuggestIRProblemsPage.jsp?id=<%= irpb.getP_id()%>" style="text-decoration:none;width:100%;margin-top:50px;" >View</a></td></tr>
                                             
                         
                                            

                                           

                                        </table>


                                   


                             
                            </div>
                   
                        </div>
                    <%
                            }
                        }
                    %>    
                     
                     
                     
                     
                     
                     
                                              
                                             
                                                   
                                                  
                                             
                         
</form>
                     </div>
                    
                    
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
