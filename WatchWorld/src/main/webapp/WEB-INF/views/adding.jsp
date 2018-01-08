<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="en">
<head>
<title>WatchWorld</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/nav.css"/>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<div class="container">
<div class="page-container">
<div class="container">
<div class="row">
<div class="col-mod-6">
<div class="panel with-nav-tabs panel-primary">
<div class="panel heading">
<ul class="nav nav-tabs">
<li class="active"><a href="#tab1" data-toggle="tab">Category</a>
<li><a href="#tab2" data-toggle="tab">Supplier</a>
<li><a href="#tab3" data-toggle="tab">Product</a>
</ul>
</div>
<div class="panel-body">
<div class="tab-content">

<div class="tab-panel fade in active" id="tab1">
<form method="post" action="<c:url value="/saveSupp"/>" class="form-signin">
<span id="reauth-email" class="reauth-email">
<h4 class="input-title">Supplier Id</h4><br>
<input class="form-control" type="number" name="sid" required/>
<h4 class="input-title">Supplier Name</h4><br>
<input class="form-control" type="text" name="sname" required/>
</span>
<button class="btn btn-lg btn-primary" type="submit">Save</button>
<button class="btn btn-lg btn-warning" type="reset">Cancel</button>
</form>
</div>


<div class="tab-panel fade" id="tab2">
<form method="post" action="<c:url value="/saveCat"/>" class="form-signin">
<span id="reauth-email" class="reauth-email">
<h4 class="input-title">Category Id</h4><br>
<input class="form-control" type="number" name="cid" required/>
<h4 class="input-title">Category Name</h4><br>
<input class="form-control" type="text" name="cname" required/>
</span>

<button class="btn btn-lg btn-primary" type="submit">Save</button>
<button class="btn btn-lg btn-warning" type="reset">Cancel</button>
</form>
</div>


<div class="tab-panel fade" id="tab3">
<form method="post" action="<c:url value="/saveProduct"/>" class="form-signin"  enctype="multipart/form-data">
<span id="reauth-email" class="reauth-email"/>

<h4 class="input-title">Product Name</h4><br>
<input class="form-control" type="text" name="pName" required/><br>

<h4 class="input-title">Product Description</h4><br>
<input class="form-control" type="text" name="pDescription" required/><br>

<h4 class="input-title">Product Price</h4><br>
<input class="form-control" type="number" name="pPrice" required/><br>

<h4 class="input-title">Product Stock</h4><br>
<input class="form-control" type="number" name="pStock" required/><br>

<div class="form-group">
<table>
<tr>
<td>Select Supplier</td>
<td>
<select class="form-control" name="pSupplier" required>
<option value="">---Select Supplier--</option>
<c:forEach items="${satList}" var="sat">
<option value="${sat.sid }">sat.supplierName</option>
</c:forEach>
</select><tr>
</table></div>

<div class="form-group">
<table>
<tr>
<td>Select Category</td>
<td>
<select class="form-control" name="pCategory" required>
<option value="">---Select Cat--</option>
<c:forEach items="${catList}" var="cat">
<option value="${cat.cid }">cat.cname</option>
</c:forEach>
</select><tr>
</table></div>

<div class="fileinput fileinput-new" data-provides="fileinput">
<td>Product Image</td>
<td><input class="form-control" type="file" name="file" accept="image/*"></td><!-- browser & upload -->
</div>

<br><br>
<button class="btn btn-lg btn-primary" type="submit">Save</button>
<button class="btn btn-lg btn-warning" type="reset">Cancel</button>

</form>
</div>
</div>
</div>
</div></div>
</div>
</div>
</div>
</div>


</body>
</html>