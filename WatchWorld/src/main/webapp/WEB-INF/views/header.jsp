<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<title>Watch World</title>
<meta name="viewport" content="width=device-width", initial-scale=1>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
</head>
<body>
<nav id="navbar-black" class="navbar navbar-inverse navbar-static-top" role="navigation">
<div class="container">
<ul class="nav navbar-nav">
<button type="navbar-toogle collapsed" data-toogled="collapse" data-target="#navDemo">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
 </ul>
</div>
<div class="collapse navbar-collapse" id="navDemo">
<ul class ="nav navbar-nav">
<li><a href="index">Home</a>
<li><a href="contact"><i class="fa fa-address-book" area-hidden="true"></i></a></li>
<li><a href="ProductList">Product List</a></li>
<li><a href="${pageContext.request.contextPath}/admin/adding">Admin</a></li>
<li class="dropdown"><a class="dropdown-toogle" data-toogle="dropdown"
href="#">Admin List<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="${pageContext.request.contextPath}/admin/productList">Product</a></li>
<li><a href="${pageContext.request.contextPath}/admin/supplierList">Supplier</a></li>
<li><a href="${pageContext.request.contextPath}/admin/categoryList">Category</a></li>
<li><a href="goToRegister">Register</a></li>
</ul></li>

<li><a href="goToRegister">Register</a></li>
<li><a href="goToLogin">Sign In</a></li>


<li class="dropdown"><a class="dropdown-toogle" data-toogle="dropdown"
href="#">Category Choice<span class="caret"></span></a>
<ul class="dropdown-menu">
<c:forEach var = "catVal"  items = "${catList}">
<li><a href="${pageContext.request.contextPath}/prodCustList?cid=${catVal.cid}">@{catVal.cname}</a></li>
</c:forEach>
</ul>

<c:if test="${pageContext.request.userPrincipal.name==null}">
<li><a href="${pageContext.request.contextPath}/goToRegister">Register</a></li>
<li><a href="${pageContext.request.contextPath}/goToLogin">Login</a></li>
</c:if>

<c:if test="${pageContext.request.userPrincipal.name!=null}">
<li><a >Welcome:${pageContext.request.userPrincipal.name}></a></li>
<li><a href="${pageContext.request.contextPath}/goToLogout">Logout</a></li>
</c:if>


</li></ul>
</div>
</nav>
</body>
</html>