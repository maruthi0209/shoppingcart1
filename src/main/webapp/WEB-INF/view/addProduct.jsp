<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
<h2>Add a Product</h2>
    <div class="container" ng-app="imgApp" ng-controller="imgCtrl">
    <c:url var="addProduct" value="addProduct"></c:url>
   <form:form modelAttribute="product" method="post" action="storePro" enctype="multipart/form-data">
       <table class="table table-bordered" >
           
           <tr><td><form:label path="proName">Product Name :</form:label></td>
               <td><form:input path="proName"/>
               <font color="red"><form:errors path="proName"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="proPrice">Product Price :</form:label></td>
               <td><form:input path="proPrice"/>
               <font color="red"><form:errors path="proPrice"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="proDesc">Description :</form:label></td>
               <td><form:input path="proDesc"/>
               <font color="red"><form:errors path="proDesc"></form:errors></font></td>
           </tr>           
           <tr><td><form:label path="proStyle">Style :</form:label></td>
               <td><form:input path="proStyle"/>
               <font color="red"><form:errors path="proStyle"></form:errors></font></td>    
 
           </tr>
           <tr><td><form:label path="warranty">Warranty :</form:label></td>
               <td><form:input path="warranty"/>
               <font color="red"><form:errors path="warranty"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="primaryMeterial">Primary Meterial :</form:label></td>
               <td><form:input path="primaryMeterial"/>
               <font color="red"><form:errors path="primaryMeterial"></form:errors></font></td>
           </tr>
           
           <tr><td><form:label path="capacity">Capacity :</form:label></td>
               <td><form:input path="capacity"/>
               <font color="red"><form:errors path="capacity"></form:errors></font></td>
           </tr>          
           <tr><td><form:label path="img">Image :</form:label></td>
               <td><form:input path="img" type="file"/>
               <font color="red"><form:errors path="img"></form:errors></font></td>
               
           </tr>
           <tr><td><form:label path="supplier">Supplier Name:</form:label></td>
               <td><select name="Supplier.id">
   				 <option value="">---Select---</option>
   				 <c:forEach var="Supplier" items="${suppliers}">
   				 <option value="${Supplier.id}">${Supplier.supname}</option>
    		</c:forEach>
    		</select></td></tr>
    		<tr><td><form:label path="category">Category Name:</form:label></td>
               <td><select name="Category.id">
   				 <option value="">---Select---</option>
   				 <c:forEach var="Category" items="${categories}">
   				 <option value="${Category.id}">${Category.name}</option>
    		</c:forEach>
    		</select></td></tr>
           <tr><td></td>
               <td><input type="submit" value="submit" class="btn"/></td>
           </tr>
           
       </table>
   </form:form> 
</body>
</html>