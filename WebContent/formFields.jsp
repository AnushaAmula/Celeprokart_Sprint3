<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Enter Product Details</title>
</head>
<body>
<div id="fullscreen_bg" class="fullscreen_bg"></div>
 <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
       <form ACTION="uploadFileDetails.jsp" METHOD=POST>
				<h1 class="form-signin-heading text-muted"  align="center">Add Product</h1>
				<input type="text" class="form-control"  name="ProductName" placeholder="ProductName" autofocus/><br/><br/> 
				<input type="text" class="form-control" name="price" placeholder="Price" autofocus/><br/><br/>   
				<select name="Category" id="selectboxid_category" class="form-control" required>
					<option value="Sports">Sports</option>
					<option value="Electronic Gadgets">Electronic Gadgets</option>
					<option value="Clothes">Clothes</option>
					<option value="Accessories">Accessories</option>
					<option value="Musical Instruments">Musical Instruments</option>
					<option value="Handmade">Hand made</option>
				</select><br><br/>
				<select name="SellOrDonate" id="selectboxid_sellDonate" class="form-control" required>
					<option value="Sell">Sell</option>
					<option value="Donate">Donate</option>
				</select><br></br>
				<select name="Charity" id="selectboxid_Charity" class="form-control" required>
					<option value="Charity1">Charity1</option>
					<option value="Charity2">Charity2</option>
				</select><br></br>		
				<input type="submit" class="btn btn-lg btn-primary btn-block" value="Continue"/> <br></br>
		</form>  
		</div>
        </div>
    </div>
</body>
<style>
  body{
  background-image:url("http://72gpf1za5iq428ekh3r7qjc1.wpengine.netdna-cdn.com/wp-content/uploads/2015/04/ecommerce.jpg");
  background-repeat:no-repeat;
  background-size:cover;
  }
  h1 {
    color: gold;
}
h2{
color: green;
font-family:courier ;
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