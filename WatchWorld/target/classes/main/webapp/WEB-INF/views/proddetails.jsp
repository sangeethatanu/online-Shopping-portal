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
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
<div class="row">
<div class="col-sm-4 item=photo">
<img style="width:100%; margin-top:30px;" src="${pageContext.request.contextPath }/resourecs/${p.imgName}"/>

<div class="col-sm-5" style="border:0px solid gray">
<h3>${prod.pname }</h3> 
<h4>${prod.description }</h4> 
<h4>${prod.price }</h4> 
<h5>${prod.supplierName }</h5> 
<div class="section" style="padding-bottom:20px;">
<form action="${pageContext.request.contextPath }/addToCart" method="post">
<input  type="hidden" value="${prod.pid }" name="pid"/>
<input  type="hidden" value="${prod.price }" name="pPrice"/>
<input  type="hidden" value="${prod.name }" name="pName"/>
<input  type="hidden" value="${prod.imgName}" name="imgName"/>


<input class="form-control" type="number" name="pQty" required/>
<input type="submit" class="btn btn-lg  btn-warning" value="Add To Cart">
<h6><span class=" glyphicon-heart-empty" style="curser:pointer;"></span>Wish List</h6>

</form>
</div>
</div>

<hr>
<div class="col-sm-9">
<h3>Product Details</h3>
<ul class="menu-items">
<li>All </li>
<li>    </li>
<li>     </li>
</ul>
</div>
<br><br>
<h6>we are Authorized by</h6>
</div>

</div>
</body>
</html>