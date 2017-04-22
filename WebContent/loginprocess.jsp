<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);
boolean status_celeb = LoginDao.validateCeleb(obj);
boolean status_cust = LoginDao.validateCust(obj);
if(status){  
session.setAttribute("session","TRUE"); 
%>
<jsp:include page="adminHomeProcess.jsp"></jsp:include>
<%
}  
else if(status_celeb){
	session.setAttribute("session","TRUE"); 

%>
<jsp:include page="celebrityhomepage.jsp"></jsp:include>
<%
}
else if(status_cust){
	session.setAttribute("session","TRUE");
%>
<jsp:include page="customerHomePage.jsp"></jsp:include>
<%
}
else  
{  
out.print("Sorry, email or password error");
%>  
<jsp:include page="index.jsp"></jsp:include>  
<%  
}  
%>