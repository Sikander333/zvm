<%-- 
    Document   : index
    Created on : 17 Jan, 2020, 3:30:29 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>





        <meta charset="UTF-8">
        <meta http-equiv="X-UA-compatible" content = "IE-edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">



     
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">  
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>       

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

        <link href="https://fonts.googleapis.com/css?family=AlexBrush" rel="stylesheet">  


        <jsp:include page="title.jsp" />






        <style>
            body {

                background-color: #88bdbc;             
            }
            .center{                       
                position: absolute;
                left: 50%;  

                transform: translatex(40%);        
            }
            .fs1{
                text-align:center;
                color:white;

                font-size:5vw;
            }




            h3{
                text-align: center;
                color:black;
                font-style:italic;
            }

            @media screen and (max-width:1600px){
                div.front_content{
                    margin-top : 300px;
                }
                p.zvm{
                    font-size:65px;
                }


            }
            @media screen and (min-width:1601px){
                div.front_content{
                    margin-top : 150px;
                }

            }
        </style>      














    </head>
    <body>

        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

        %>


       <jsp:include page="indexNavbar.jsp" /> 





        <div class="container-fluid" >
            <div class="container front_content"   >


                <p class="fs1 zvm" >Zila Vikas Manch</p>
                <p> <h3>A bridge between collector and students with their new ideas</h3> </p>



                <div  class="embed-responsive embed-responsive-16by9 " >

                    <iframe class="embed-responsive-item center " src="images/Emblem.png"></iframe>
                </div>









            </div>
        </div>
















    </body>
</html>
