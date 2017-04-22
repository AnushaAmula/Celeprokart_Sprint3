<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
 <script>
 function validateForm() 
 {
	    var x = document.forms["forgotPassword"]["email"].value;
	    if (x == "") {
	        alert("Email must be filled out");
	        return false;
	    }
 }
 String profile_msg=(String)request.getParameter("email");  
 if(profile_msg!=null){  
 out.print(profile_msg);  
 } 
 </script>
<form name="forgotPassword" action="forgotpasswordprocess.jsp" onsubmit = "return validateForm()" method="post">  
Email ID:<input type="text" name="email"/><br/><br/>
<input type="submit" value="Submit"/> <br/><br/>
</form>  
<%@ include file="index.jsp" %> 
</body>
</html>