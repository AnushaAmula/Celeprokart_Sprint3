<%@page import="bean.AdminHomePageDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="bean.ProductBean"%>
<%@page import="bean.ProductDAO"%>
<%@ page import="java.util.Collection,
                 java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>CELEPROKART</title>
</head>
<body>
  <%  
ArrayList<ProductBean> listOfProducts=AdminHomePageDAO.listProducts(); 
request.setAttribute("products", listOfProducts);

  %>
  <div id="fullscreen_bg" class="fullscreen_bg"></div>
  <div class="container-fluid text-center">
  <div class="row">
  <div class="col-md-12" style= "height:auto">
  <div id="my-slider" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
  <li data-target="#my-slider" data-slide-to="0" class="active"></li>
  <li data-target="#my-slider" data-slide-to="1"></li>
  <li data-target="#my-slider" data-slide-to="2"></li>
   <li data-target="#my-slider" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
  <div class="item active">
  <img src="http://www.spacenframes.com/images/slide/3.jpg" alt="feddy" class="image-responsive" height="300px" >
  </div>
  <div class="item">
  <img src="http://thumbs.modthesims2.com/img/3/7/6/4/0/4/5/MTS_NatSoteris-1473993-Swatch.jpg" alt="naddy" class="image-responsive" height="500px">
  </div>
  <div class="item">
  <img src="https://ecenter.ee.doe.gov/EM/SSPM/PublishingImages/EGL-EG.png?Mobile=1&Source=%2FEM%2FSSPM%2F_layouts%2Fmobile%2Fview.aspx%3FList%3Deb6b70b3-2c68-4ea8-99e6-e5885bd5d726%26View%3D4dc8b320-4960-4327-aa61-b6e8dcd30f72%26ViewMode%3DDetail%26CurrentPage%3D1" alt="naddy" class="image-responsive" height="500px">
  </div>
   <div class="item">
  <img src="http://www.spacenframes.com/images/slide/4.jpg" alt="naddy" class="image-responsive" height="500px"/>
  </div>
  </div>
  <a class="left carousel-control" href="#my-slider" role="button" data-slide="prev">
  <span class="glyphicon glyphicon-chevron-left" arial-hidden="true"></span>
  <span class="sr-only">previous</span>
  </a>
  <a class="right carousel-control" href="#my-slider" role="button" data-slide="next">
  <span class="glyphicon glyphicon-chevron-right" arial-hidden="true"></span>
  <span class="sr-only">next</span>
  </a>
  </div>
  </div>
</div>
</div>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav ">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="SellOrDonate.jsp"> Sell/Donate </a></li>
      </ul>
      <ul class="nav navbar-nav ">
        <li class="active">

    <select name="product" class="glyphicon glyphicon-user" required>
	<c:forEach var="product" items="${products}">
 	<option> <c:out value="${product.celebrity}"/></option>
    </c:forEach>
    </select>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Logout.jsp"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
<c:forEach var="product" items="${products}">
<div class="container">    
  <div class="row">
    <div class="col-md-4">
      <div class="panel panel-primary">
        <div class="panel-heading"><c:out value="${product.product_name}"/></div>
        <div class="panel-body"><img src="<c:out value="${product.image}"/>" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer"><c:out value="${product.price}"/></div>
      </div>
    </div>
   </div>
   </div> 
   </c:forEach>
<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>


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