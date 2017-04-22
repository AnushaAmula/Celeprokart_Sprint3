<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Add Charity</title>
</head>
<body>
<%  
String name_msg=(String)request.getParameter("name");  
if(name_msg!=null){  
out.print(name_msg);  
} 
String emailID_msg=(String)request.getParameter("emailID");  
if(emailID_msg!=null){  
out.print(emailID_msg);  
}  
String address_msg=(String)request.getParameter("address");  
if(address_msg!=null){  
out.print(address_msg);  
} 
String zipcode_msg=(String)request.getParameter("zipcode");  
if(zipcode_msg!=null){  
out.print(zipcode_msg);  
} 
String phoneNo_msg=(String)request.getParameter("phoneNo");  
if(phoneNo_msg!=null){  
out.print(phoneNo_msg);  
} 
%>
<script>
 function validateForm() 
 {
	    var x = document.forms["charityForm"]["name"].value;
	    if (x == "") {
	        alert("Name must be filled out");
	        return false;
	    }
	    var x = document.forms["charityForm"]["emailID"].value;
	    if (x == "") {
	        alert("Email ID must be filled out");
	        return false;
	    }
	    var x = document.forms["charityForm"]["address"].value;
	    if (x == "") {
	        alert("Address must be filled out");
	        return false;
	    }
	    var x = document.forms["charityForm"]["zipcode"].value;
	    if (x == "") {
	        alert("Zipcode must be filled out");
	        return false;
	    }
	    var x = document.forms["charityForm"]["phoneNo"].value;
	    if (x == "") {
	        alert("phoneNo must be filled out");
	        return false;
	    }
	}
 
 </script>
 <div id="fullscreen_bg" class="fullscreen_bg"></div>
 <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
       <img src="http://www.clker.com/cliparts/j/a/Z/z/q/w/purple-crown-hi.png"style="width:300px;height:100px;">
        <h1 class="text-center login-title">Celeprokart</h1>
            <h2 class="text-center login-title"><i>DreamIt,BuyIt!!</i></h2>
<form name="charityForm" action="charityProcess.jsp" method="post" onsubmit = "return validateForm()">
<h1 class="form-signin-heading text-muted" align="center">Add Charity to Celeprokart</h1>
<input type="text" class="form-control" name="name"  placeholder="name" required autofocus/><br/><br/>  
<input type="text" name="emailID" placeholder="EMail ID" required autofocus/><br/><br/>  
<textarea name="address" placeholder="Address" required autofocus></textarea><br/><br/>
<input type="text" name="zipcode" placeholder="ZipCode" required autofocus/><br/><br/>
<input type="text" name="phoneNo" placeholder="Phone Number" required autofocus/><br/><br/>
<input type="submit" class="btn btn-lg btn-primary btn-block" value="Add Charity"/>
</form>
</div>
</div>
</div>
</body>
<style type="text/css">

 body {
    padding-top: 40px;
    padding-bottom: 0px;
    background-color: #eee;
  }
  h1 {
    color: gold;
}
h2{
color: green;
font-family:courier ;
}
  .fullscreen_bg {
  background-image: url('http://72gpf1za5iq428ekh3r7qjc1.wpengine.netdna-cdn.com/wp-content/uploads/2015/04/ecommerce.jpg');
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-size: cover;
    background-position: 80% 80%;
    
  }
  .form-Login {
    max-width: 1000px;
    padding: 15px;
    margin: 0 auto;
  }
  .form-Login .form-Login-heading, .form-Login {
    margin-bottom: 10px;
  }
  .form-Login .form-control {
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }
  .form-Login .form-control:focus {
    z-index: 2;
  }
  .form-signin input[type="text"] {
    margin-bottom: -1px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0;
    border-top-style: solid;
    border-right-style: solid;
    border-bottom-style: none;
    border-left-style: solid;
    border-color: #000;
  }
  .form-Login input[type="password"] {
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-top-style: none;
    border-right-style: solid;
    border-bottom-style: solid;
    border-left-style: solid;
    border-color: #000;
  }
  .form-Login-heading {
    color: #ffff;
    text-align: center;
    text-shadow: 0 2px 2px rgba(0,0,0,0.5);
  }
   .navbar {
      margin-bottom: 50px;
      border-radius: 0;
      
    }
    
    /* Remove the jumbotron's default bottom margin */ 
   .carousel img{
   width:100%;
   height:300px;
   } 
    
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color:red;
      padding: 25px;
    }
  
</style>
</html>