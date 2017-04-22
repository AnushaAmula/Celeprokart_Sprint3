<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script src="js/index.js"></script>

<title>Login Page</title>
</head>
<body>
<div ng-controller="myController">
<div>{{country.name}}</div>
<img ng-src={{country.flag}}
	 style="height:100px; width:200px"/>

</div>
</body>
</html>