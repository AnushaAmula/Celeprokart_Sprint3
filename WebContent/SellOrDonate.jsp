<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.Collection,
                 java.util.ArrayList"%>
 <%@page import="bean.AdminHomePageDAO"%>
<%@page import="bean.AddCharityBean"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://www.gstatic.com/firebasejs/3.7.6/firebase.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Sell Or Donate</title>
<script src="js/actions.js"></script>
</head>
<%

ArrayList<AddCharityBean> listOfCharities=AdminHomePageDAO.listCharity();  
request.setAttribute("charities", listOfCharities);

%>

<body>
<div id="fullscreen_bg" class="fullscreen_bg"></div>
<div class="container">
<div class="row">
<div class="col-md-offset-4 col-md-4">
<FORM action="SellOrDonateServlet" METHOD=POST>
<div class="form-group" >
  <label for="text">Name</label>
  <input type="text" class="form-control" name="product_name"/>
</div>
<div class="form-group" >
<label for="text">Category</label>
<select name="category" class="form-control" required>
					<option value="Sports">Sports</option>
					<option value="Electronic Gadgets">Electronic Gadgets</option>
					<option value="Clothes">Clothes</option>
					<option value="Accessories">Accessories</option>
					<option value="Musical Instruments">Musical Instruments</option>
					<option value="Handmade">Handmade</option>
</select>
  </div>
  <div class="form-group" >
  <label for="text">Sell Or Donate</label>
  <select name="sellordonate" class="form-control" required>
					<option value="Sell">Sell</option>
					<option value="Donate">Donate</option>
				</select>
  </div>
  <div class="form-group" >
  <label for="text">Set price</label>
  <input type="text" name="price" class="form-control" required/>
  </div><br>
  
  <div class="form-group" >
  <label for="text">Celebrity Caption</label>
  <input type="text" name="celebrity" class="form-control" required/>
  </div><br>
  
  <div class="form-group" >
  <label for="text">Charity</label>
  <select name="charity" class="form-control" required>
	<c:forEach var="charity" items="${charities}">
    <option>  <c:out value="${charity.name}"/></option>
    </c:forEach>
</select>
  </div><br>
  
  <div class="form-group" >
 	 <input type="hidden" class="imgURL" name="imgURL">
  <label for="text">Image</label>
  <input type="file" name="img" class="imgData"><br/><br/>
<button class="uploadButton" value="Upload Image" >Add Product</button>
</div>  
   
  <input type="submit" class="submit_action" value="Add Product"/>
  </FORM>
  
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