<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Add a Supplier</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="landPage">Admin Home</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="retriveRecords">Manage Products</a></li>
      <li><a href="category">Manage Categories</a></li>
      <li><a href="manageSupplier">Manage Suppliers</a></li>
      </ul>
           <div><ul>
      		<li class="nav navbar-nav navbar-right"><a href="<c:url value='/j_spring_security_Logout'/>">
      		<span class="glyphicon glyphicon-log-in"></span>
						Logout</a></li></ul></div>
  </div>
</nav>
<h2>Add a Supplier</h2>
    <div class="container" ng-app="imgApp" ng-controller="imgCtrl">
    <c:url var="addsupplier" value="addSupplier"></c:url>
   <form:form modelAttribute="Supplier" method="post" action="storeSupplier" enctype="multipart/form-data">
       <table class="table table-bordered" >
               <tr><td><form:label path="supname">Supplier Name :</form:label></td>
               <td><form:input path="supname"/>
               <font color="red"><form:errors path="supname"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="suplocation">Supplier Location:</form:label></td>
               <td><form:input path="suplocation"/>
               <font color="red"><form:errors path="suplocation"></form:errors></font></td>
           </tr>
                     
         <tr><td><form:label path="category">Category Name:</form:label></td>
               <td><select name="Category.id">
   				 <option value="">---Select---</option>
   				 <c:forEach var="Category" items="${categories}">
   				 <option value="${Category.id}">${Category.name}</option>
    		</c:forEach>
    		</select></td></tr>  
          
             <td><input type="submit" value="Add Supplier" class="btn-success"/></td>
       </table>
   </form:form> 
   </div>
   	<footer class="container-fluid text-center">
		<p>�ShoppingCart-All Rights Reserved</p>
		<P>2016</P>
	</footer>
   
</body>
</html>