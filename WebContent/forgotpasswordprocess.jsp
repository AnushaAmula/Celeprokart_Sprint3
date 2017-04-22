<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="bean.ForgotPasswordDAO"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password Process</title>
</head>
<body>
<%  
boolean status=ForgotPasswordDAO.forgotPassword(obj);  
if(status){  
out.println("Email is sent. Please check your password in the email");  
session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("Sorry, email or password error");
%>  
<jsp:include page="index.jsp"></jsp:include>  
<%  
}  
%>
</body>
</html>