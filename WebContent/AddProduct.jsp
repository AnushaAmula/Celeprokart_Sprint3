<html ng-app="app">
<HEAD>
	<meta charset="utf-8">
	<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.js"></script>
	<script type="text/javascript">
	app=angular.module('app',[]);
	app.controller('MyCtrl',function($scope,$http){
		$scope.addData = function(){
		$http.get("addProductDB.jsp?Category" + $scope.Category + "&SellOrDonate" + $scope.SellOrDonate + "&Price" + $scope.Price + "&Charity" + $scope.Charity + "&ProductName"+ $scope.ProductName)
		.success(function(response){
			
			$scope.message="success";
			
			})
		.error(function(){
		});
	}
	});
</script>
</HEAD>
<body ng-controller="MyCtrl">
<form>
<h1>SELL/DONATE</h1>
Name:*<input type="text" name="ProductName" ng-model="ProductName" required/><br/><br/>
Category:*<select name="Category" id="selectboxid_category" ng-model="Category" required>
					<option value="Celebrity">Sports</option>
					<option value="Customer">Electronic Gadgets</option>
					<option value="Customer">Clothes</option>
					<option value="Customer">Accessories</option>
					<option value="Customer">Musical Instruments</option>
					<option value="Customer">Handmade</option>
				</select><br/><br/>
Sell/Donate:*<select name="SellOrDonate" id="selectboxid_sellDonate" ng-model="SellOrDonate" required>
					<option value="Celebrity">Sell</option>
					<option value="Customer">Donate</option>
				</select><br/><br/>
Price:*<input type="text" name="Price" ng-model="Price" required/>USD<br/><br/>
Charity:*<select name="Charity" id="selectboxid_Charity" ng-model="Charity" required>
					<option value="Celebrity">Charity1</option>
					<option value="Customer">Charity2</option>
				</select><br/><br/>
Image:*<input type="text" name="Image" ng-model="Image" required/><br/><br/>

<input type="submit" value="Add Product" ng-click="addData()"/>

{{message}}
</form>
</body>
</html>