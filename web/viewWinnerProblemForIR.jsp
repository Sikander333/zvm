



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
  </style>
  <style>
      @media screen and (max-width:1600px){
      i.a,i.b,i.c,i.d,i.e,i.f,i.g,i.h {
font-size:100px;
color:#ffcc00;
position:fixed;

}

i.j ,i.k ,i.l,i.m,i.n,i.o{
font-size:50px;
color:#ffcc00;
position:fixed;
    
} 
div.card_width{
    width:90%;
}

       }
       @media screen and (min-width:1601px){
              i.a,i.b,i.c,i.d,i.e,i.f,i.g,i.h {
font-size:200px;
color:#ffcc00;
position:fixed;

}

i.j ,i.k ,i.l,i.m,i.n,i.o{
font-size:100px;
color:#ffcc00;
position:fixed;
    
} 
div.card_width{
    width:60%;
}
           
       }

 
      
  </style>           
        
        
        
        
        
    </head>
    <body>
        
            <%
           response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
           if(session.getAttribute("IRAadharidFromScoreBoardForIR")!=null && session.getAttribute("passwordFromScoreBoardForIR")!=null){
            
           
       %>
        
        <jsp:include page="studentNavbar.jsp" /> 
        
        
        
        
        <div class="container-fluid"  style = "margin-top : 95px;"  >       
        
            <div class="row"  >
                
                
                
                
                <div class="col-lg-12"  style="height:899px;background-color: #88bdbc; overflow-y:scroll;padding:0px;">
                  
                    
                     <i class="fas fa-crown a" ></i> 
               <i class="fas fa-crown b " style="transform: rotate(20deg);"></i>         
               <i class="fas fa-crown c" style="transform: rotate(90deg);"></i>         
               <i class="fas fa-crown d" style="transform: rotate(120deg);"></i>  
               <i class="fas fa-crown e" style="transform:rotate(180deg);"></i>
               <i class="fas fa-crown f" style="transform: rotate(210deg);"></i>        
               <i class="fas fa-crown g" style="transform: rotate(270deg);"></i> 
               <i class="fas fa-crown h" style="transform: rotate(300deg);"></i>   
               <i class="fas fa-star j" ></i>
               <i class="fas fa-star k" ></i>
               <i class="fas fa-star l" ></i>
               <i class="fas fa-star m" ></i>
               <i class="fas fa-star n" ></i>
               <i class="fas fa-star o" ></i>
                     
                    
                     
                     
                     <div class="uploaded_problems_sticky" style="z-index:1;margin-top:30px;margin-bottom:30px;width:100%;" >
                     
                         <div class="card shadow-lg" style="background-color:rgba(23,67,88,0.5);color:white;padding:40px;"  >
                                             
                                               <h2 align="center"><i>Problem Attachments</i></h2>
                                             
                                                            
                                              </div>
                                                  
                                       
                     
                                  </div>
         <%
       if(request.getParameter("id")!=null){   //To check whether the id coming from update button is null
    String str= request.getParameter("document").toString();
    if(str!=null){   //To check thet the row coming in student proxy object from database is not null
       
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
        
        
        
        
        
        
        
      
 <script>
      $(document).ready(function(){
    animateDiv('.a');
    animateDiv('.b');
    animateDiv('.c');
    animateDiv('.d');
    animateDiv('.e');
    animateDiv('.f');
    animateDiv('.g');
    animateDiv('.h');
    animateDiv('.j');
    animateDiv('.k');
    animateDiv('.l');
    animateDiv('.m');
    animateDiv('.n');
    animateDiv('.o');
});

function makeNewPosition(){
    
    // Get viewport dimensions (remove the dimension of the div)
    var h = $(window).height() - 50;
    var w = $(window).width() - 300;
    
    var nh = Math.floor(Math.random() * h);
    var nw = Math.floor(Math.random() * w);
    
    return [nh,nw];    
    
}

function animateDiv(myclass){
    var newq = makeNewPosition();
    $(myclass).animate({ top: newq[0], left: newq[1] }, 1500,   function(){
      animateDiv(myclass);        
    });
    
};
</script>  







<%
           }else{
           
               response.sendRedirect("IRLogin.jsp?value=0");
           
           }
       %>




    </body>
</html>





















        
        
       
      
        
               
        
  