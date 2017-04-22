<%@page import="bean.SignUpCelebrityDao"%>
<jsp:useBean id="obj" class="bean.SignUpCelebrityBean"/>  
 <jsp:setProperty property="*" name="obj"/>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
<%  
boolean status = SignUpCelebrityDao.addCelebrity(obj);  
if(status){  
out.println("You r successfully Registered");  
session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("Sorry, unable to Register");
} 
%>  
<jsp:include page="index.jsp"></jsp:include> 
</body>
</html>