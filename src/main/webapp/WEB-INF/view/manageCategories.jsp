<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
  <link rel="stylesheet" href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="landPage">Admin Home</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="retriveRecords">Manage Products</a></li>
				<li><a href="category">Manage Suppliers</a></li>
			</ul>
			
      		<div><ul>
      		<li class="nav navbar-nav navbar-right"><a href="<c:url value='/j_spring_security_Logout'/>">
      		<span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li></ul></div>
	</div>
	</nav>
	<h2>Manage Categories</h2>
	<div class="container">
		<div ng-app="myApp" ng-controller="customersCtrl">
			<input type="text" class="form-control" ng-model="searchBy.name" />
			<table class="table table-striped table-hover">
				<tr>
					<th>Id</th>
					<th>Category Name</th>
					<th>Category Description</th>
					<th>Action</th>
				</tr>
				<tr ng-repeat="z in names | filter:searchBy">
				 	<td>{{z.id}}</td>
					<td>{{z.name}}</td>
					<td>{{z.description}}</td>
					<td>
							<a
								href="${pageContext.servletContext.contextPath}/manage_category_edit?id={{z.id}}" class="btn btn-primary"><span>Edit</span></a>
							<a
								href="${pageContext.servletContext.contextPath}/manage_category_remove?id={{z.id}}" class="btn btn-danger"><span>Delete</span></a>
						</td>
				</tr>
			</table>
			<a href="category" class="btn btn-info">Add Category</a>


		</div>

		<script>
			var app = angular.module('myApp', []);
			app.controller('customersCtrl', function($scope, $http) {
				$http.get("listCategories").then(function(response) {
					$scope.names = response.data;
				});
			});
		</script>
	</div>
		
	
</body>
</html>