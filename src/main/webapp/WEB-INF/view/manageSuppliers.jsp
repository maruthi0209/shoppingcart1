<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<html>
<head>
  <link rel="stylesheet" href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="landPage">Admin Home</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="retriveRecords">Manage Products</a></li>
				<li><a href="manage_categories">Manage Categories</a></li>
			</ul>
			
      		<div><ul>
      		<li class="nav navbar-nav navbar-right">
      		<span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li></ul></div>
	</div>
	</nav>
	<h2>Manage Suppliers</h2>
	<div class="container">
		<div ng-app="myApp" ng-controller="customersCtrl">
			<input type="text" class="form-control" ng-model="searchBy.supname" />
			<table class="table table-striped table-hover">
				<tr>
					<th>Id</th>
					<th>Supplier Name</th>
					<th>Supplier Location</th>
					<th>Action</th>
				</tr>
				<tr ng-repeat="z in names | filter:searchBy">
					<td>{{z.id}}</td>
					<td>{{z.supname}}</td>
					<td>{{z.suplocation}}</td>
					<td><a
						href="${pageContext.servletContext.contextPath}/viewSupplier?id={{z.id}}" class="btn btn-info"><span>View</span></a>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<a
								href="${pageContext.servletContext.contextPath}/editSupplier?id={{z.id}}" class="btn btn-primary"><span>Edit</span></a>
							<a
								href="${pageContext.servletContext.contextPath}/deleteSupplier?id={{z.id}}" class="btn btn-danger"><span>Delete</span></a>
						</sec:authorize></td>
				</tr>
			</table>
			<a href="addSupplier" class="btn btn-info">Add Supplier</a>


		</div>

		<script>
			var app = angular.module('myApp', []);
			app.controller('customersCtrl', function($scope, $http) {
				$http.get("listSuppliers").then(function(response) {
					$scope.names = response.data;
				});
			});
		</script>
	</div>
		
	
</body>
</html>