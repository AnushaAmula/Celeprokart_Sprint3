<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
 <style>
  body{
  background-image:url("http://72gpf1za5iq428ekh3r7qjc1.wpengine.netdna-cdn.com/wp-content/uploads/2015/04/ecommerce.jpg");
  background-repeat:no-repeat;
  background-size:cover;
  }
 </style>
  <body>
  <div class="container">
  <div class="row">
  <div class="col-md-offset-4 col-md-4">
<FORM ENCTYPE="multipart/form-data" ACTION="uploadFile.jsp" METHOD=POST>
<div class="form-group" >
  <label for="text">Name</label>
  <input type="text" class="form-control" id="text" name="ProductName"/>
  </div>
  <div class="form-group" >
  <label for="text">Category</label>
  <select name="Category" id="selectboxid_category" class="form-control" required>
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
  <select name="SellOrDonate" id="selectboxid_sellDonate" class="form-control" required>
					<option value="Sell">Sell</option>
					<option value="Donate">Donate</option>
				</select>
  </div>
  <div class="form-group" >
  <label for="text">Set price</label>
  <input type="text" name="Price" class="form-control" ng-model="Price" required/>
  </div><br>
  <div class="form-group" >
  <label for="text">Charity</label>
  <select name="Charity" id="selectboxid_Charity" class="form-control" ng-model="Charity" required>
					<option value="Charity1">Charity1</option>
					<option value="Charity2">Charity2</option>
				</select>
  </div><br>
  <div class="form-group" >
  <label for="text">Image</label>
  <INPUT NAME="file" TYPE="file"><br/><br/>
<input type="submit" value="Add Product">
</div>
</FORM>
</div>
</div>
</div>
</body>
</html>