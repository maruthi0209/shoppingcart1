<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link xmlns:sec="http://www.springframework.org/security/tags">
<style type="text/css">
*, body, html {
    outline:none;
}
</style>
<title>View All products</title>
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
<h2>Edit Supplier</h2>
   <form:form modelAttribute="category" method="post" action="updateCategory">
       <table class="table table-bordered" >

		   <tr><td><form:label path="id">Category Id:</form:label></td>
               <td><form:input path="id" value="${category.id}"/></td>
            </tr>             
               <tr><td><form:label path="name">Category Name :</form:label></td>
               <td><form:input path="name" value="${category.name}"/></td>
           </tr>           
           <tr><td><form:label path="description">Category Description:</form:label></td>
               <td><form:input path="description" value="${category.description}"/></td>
           </tr>
              
        <td><input type="submit" value="Submit" class="btn-success"/></td>
       </table>
   </form:form> 
   </div>
   	<footer class="container-fluid text-center">
		<p>©Bibliopole-All Rights Reserved</p>
		<P>2016</P>
	</footer>
   
</body>
</html>