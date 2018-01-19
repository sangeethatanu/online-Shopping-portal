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
<table class="table table-hover" id="apl" class="display" border="2" width="80" align="center">
<tr>
<th>Product Name</th>
<th>Product Quantity</th>
<th>Product Price</th>
<th>Product Image</th>
<th>Sub Total</th>
<th>Action</th>
</tr>
<c:if test="${empty cart Info }">
<tr>
<td colspan="10" align="center">No record exist!</td>
</tr>
</c:if>
<c:forEach var="p" varStatus="st" items="${cartInfo }">
<tr>
<td><c:out value="${p.pname }"></c:out></td>
<td><c:out value="${p.qty }"></c:out></td>
<td><c:out value="${p.price }"></c:out></td>
<td><img src="${pageContext.request.contextPath}/resources/${p.imgName }" height="50px" width="50px"></td>
<td><c:out value="${p.qty*p.price }"></c:out></td>
<td class="span2">
<c:set var="contextRoot" value"${pageContext.request.contextPath}"></c:set>
<a class="btn btn-danger" role="button" href="<c:url value="/deletePCart/${p.cartId }"/>">Delete</a>
</td>
</tr>
</c:forEach><tr>
<td>
<c:set var="gtot" value="${gtot+p.price*p.qty}"></c:set>
<span class="col-lg-9" align="right"><label>Grand Total</label><c:out value="${gtot}"/></span>
</td></tr>
<tfoot><tr>
<td>
<a class="btn btn-warning btn-lg" href="${pageContext.request.contextPath}/index">Continue Shopping</a></td>
<td>
<a class="btn btn-warning btn-lg" href="${pageContext.request.contextPath}/checkout">Checkout</a></td>
</tr></tfoot>
</div>
</table>
</body>
</html>

