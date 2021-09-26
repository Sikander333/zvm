
<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.MethodDeclarations"%>
<%@page import="DAO.MethodOperation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 

<!DOCTYPE html>
<html lang="en-US">
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
   <link href='https://fonts.googleapis.com/css?family=Alex Brush' rel='stylesheet'>
        
        <jsp:include page="title.jsp" /> 
        <style>
             .upload-btn-wrapper {
                position: relative;
                overflow: hidden;
                display: inline-block;
            }
               
            .upload-btn-wrapper input[type=file]{
                font-size: 100px;
                position: absolute;
                left: 0;
                top: 0;
                opacity: 0;                                                                                               
            }
            img{
                height:400px;
                width:400px;
                margin:10px;
            }
        </style>
    </head>
    <body style="background-color:#88bdbc;">
        
        <jsp:include page="indexNavbar.jsp" />   
        
        <%
     String str="";
    str =  request.getParameter("value").toString();
   if(str.equals("3"))
   {
   %>
   <script>
     
    alert("User with this Aadhar Id already Exist , Use another Aadhar Id");
   window.location.assign("Studentsignup.jsp?value=0");
  
   </script>
   
   <%
       
   }else if(str.equals("0"))
   {
   
   }
   
   %>
   
  
        
       <div align="center">
    <div class = "card" style = "margin-top : 170px;width:70%;" align="left">
    
        <div class="card-body">
       
	  <h1 class = text-center style = "font-family : 'Monotype Corsiva' ; color : #112d32">SignUp</h1>			
				
                                <form method="post" action="StudentSignupController?page=StudentSignup" enctype="multipart/form-data" >
<input type="hidden" name="page" value="StudentRegister">





<div class="form-group col-xs-4" >
<label >Aadhar Number <span style = "color : red" >*</span></label>
<input type="text" name="aadharid" class="form-control" id="aadharid" onblur="AadharValidate();" required>

<label>UserName<span style = "color : red">*</span></label>
<input type="text" name="username" class="form-control" required>
    


<div class="row" style="padding-top:30px;">
    <div class="col">
        <label>Email ID <span style = "color : red">*</span></label>
<input type = email name="emailadd" class="form-control" required>
        </div>
 <div class="col">
<label>Contact Number <span style = "color : red">*</span></label>
<input type="text" name="contactno" class="form-control" required>
</div>
</div>









<div style="padding-top:30px;" >
<label>College <span style = "color : red">*</span></label>
<input type="text" name="contactno" class="form-control" required>
</div>

<div style="padding-top:30px;">
<label>Address <span style = "color : red">*</span></label>

<textarea name="address" class="form-control"></textarea>
</div>

<div class="row" style="padding-top:30px;">
    <div class="col">
       <label>City <span style = "color : red">*</span></label>
<input type="text" name="city" class="form-control" required>
        </div>
 <div class="col">
<label>State <span style = "color : red">*</span></label>
<input type="text" name="city" class="form-control" required>
</div>
</div>
<div style="padding-top:30px;">
    <hr>
<h4 >Fill the name of other two members :</h4>
<label>UserName<span style = "color : red">*</span></label>
<input type="text" name="username" class="form-control" required>
    

<label>UserName<span style = "color : red">*</span></label>
<input type="text" name="username" class="form-control" required>
    
<br>
<h4>Note : only three members are allowed in a team including head</h4>
</div>
<hr>





 <div     style="padding-top:30px;">
      <label for="selRefId">Reference :</label>
      <select class="form-control" id="selRefId" name="RefrenceId">
          
          <%
          MethodDeclarations md = new MethodOperation();
          ResultSet rs = md.selectAllIRTableWhereStatusIsAccepted();
           if (rs != null) {

                           
                            while (rs.next()) {  
                            %>
          
                            <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
        
          
          <%
                            }
           
           }
          
          %>
          
          
       
      </select>
   
    </div>










<div class="row" style="padding-top:30px;">
    <div class="col">
       <label>Password<span style = "color : red">*</span></label>
<input type="text" name="password" id="password" class="form-control" required>
        </div>
 <div class="col">
<label>Confirm Password<span style = "color : red" >*</span></label>
<input type="text" name="confirmpwd" id="confirmpwd" onblur="passwordvalidate()" class="form-control" required>
</div>
</div>

<div align="center" style="margin-top:40px;">
  <img src="https://placehold.it/80x80" id="preview" class="img-thumbnail ">
</div>

<div  style="padding-top:20px;margin:10px;" align="center">
                                            <div class="upload-btn-wrapper">
                                                <input type="file" name="myfile" multiple required  class="file"  id="file_img" onchange="imageValidation()"    accept="image/*" />           
                                          <button class="btn btn-primary">Upload Photo</button>

                                            </div>
                                               </div> 



<script>
    $(document).on("click", ".browse", function() {
  var file = $(this).parents().find(".file");
  file.trigger("click");
});
$('input[type="file"]').change(function(e) {
  var fileName = e.target.files[0].name;
  $("#file").val(fileName);

  var reader = new FileReader();
  reader.onload = function(e) {
    // get loaded data and render thumbnail.
    document.getElementById("preview").src = e.target.result;
  };
  // read the image file as a data URL.
  reader.readAsDataURL(this.files[0]);
});
</script>
<script type="text/javascript">
function imageValidation() {
    var formData = new FormData();
 
    var file = document.getElementById("file_img").files[0];
 
    formData.append("Filedata", file);
    var t = file.type.split('/').pop().toLowerCase();
    if (t != "jpeg" && t != "jpg" && t != "png" && t != "bmp" && t != "gif" && t != "webp") {
        alert('Please select a valid image file');
        document.getElementById("file_img").value = '';
        return false;
    }
    if (file.size > 2000*1000*2) {
        alert('Image size must be less than 4MB ');
        document.getElementById("file_img").value = '';
        return false;
    }
    return true;
}
</script>








<br>

<input type="submit" name="save"  value="Submit" class = "btn btn-primary"  />
</div>
</form>
</div> 
        
      
        
        </div>
        
      </div>
        
        
        
        <script type="text/javascript">
    function AadharValidate() {
        var aadhar = document.getElementById("aadharid").value;
        var adharcardTwelveDigit = /^\d{12}$/;
        var adharSixteenDigit = /^\d{16}$/;
        if (aadhar != '') {
            if (aadhar.match(adharcardTwelveDigit)) {
                return true;
            }
            else if (aadhar.match(adharSixteenDigit)) {
                return true;
            }
            else {
                alert("Enter valid Aadhar Number");
                return false;
            }
        }
    }
    
    
    
   
    
    function passwordvalidate() {
        var password = document.getElementById("password").value;
        var confirmpwd = document.getElementById("confirmpwd").value;
        
        if (password==confirmpwd) {
                return true;
            }
            else
            {
               alert("Password and Confirm Password Not Match");
                return false; 
            }
        }
    
    
    
    
    
    
</script>  
        
        
        
    </body>
</html>
