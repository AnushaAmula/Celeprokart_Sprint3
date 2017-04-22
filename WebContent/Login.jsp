<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Login Page</title>
</head>
<body>
<%  
String profile_msg=(String)request.getParameter("username");  
if(profile_msg!=null){  
out.print(profile_msg);  
} 
String login_msg=(String)request.getParameter("pass");  
if(login_msg!=null){  
out.print(login_msg);  
} 
 %>  
 <script>
 function validateForm() 
 {
	    var x = document.forms["loginForm"]["email"].value;
	    if (x == "") {
	        alert("Email must be filled out");
	        return false;
	    }
	    var x = document.forms["loginForm"]["pass"].value;
	    if (x == "") {
	        alert("Password must be filled out");
	        return false;
	    }
	}
 
 </script>
 <br/>  
<div id="fullscreen_bg" class="fullscreen_bg"></div>
 <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
       <img src="http://www.clker.com/cliparts/j/a/Z/z/q/w/purple-crown-hi.png"style="width:300px;height:100px;">
        <h1 class="text-center login-title">Celeprokart</h1>
            <h2 class="text-center login-title"><i>DreamIt,BuyIt!!</i></h2>
				<form name="loginForm" action="loginprocess.jsp" onsubmit = "return validateForm()" method="post">
				<h1 class="form-signin-heading text-muted" align="center">LogIn</h1>
			<input type="text" class="form-control" name="email" placeholder="Emailid" required autofocus><br></br>
                <input type="password" class="form-control" name="pass" placeholder="Password" required autofocus><br></br>
                <input class="btn btn-lg btn-primary btn-block" type="submit" value="login"/> <br/><br/>	
		
                <a href="forgotPassword.jsp" class="need-help"><font color="White">Forgotpassword? </font></a><span class="clearfix"></span>
                 <font color="Aqua">Don't have an account?</font> <a href="SignUp.jsp"><font color="White">Sign up here</font></a>
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
</style>
</html>