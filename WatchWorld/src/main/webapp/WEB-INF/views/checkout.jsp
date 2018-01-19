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
<div class="col-xs-6  jumbotron">
<div class="row">
<div class="head">
<label>customer Shipping Details</label>
</div>
<div class="outer">
<div class="well" style="width 100%">
<form action="${pageContext.request.contextPath }/invoiceprocess" method="post">
<c:set var="gtot" value="0"/>
<c:forEach var="c" items="${cart}">
<c:set var="gtot" value="${gtot+p.price*p.qty}"></c:set>

<div class="well">
<table>
<tr>
<td colspan="3">NAME</td>
<td>${user.name}</td></tr>
<tr>
<td colspan="3">Email</td>
<td>${user.email}</td></tr>
<tr>
<td colspan="3">Address</td>
<td>${user.address}</td></tr>
<tr>
<td colspan="3">Phone</td>
<td>${user.phone}</td></tr>
</table>
<div class="outer">
<h3>Payment details</h3>
<br>
<label>select Payment</label>
<select name="payment">
<option value="COD">Cash on delivery</option>
<option value="NET">Net Banking</option>

</select><br><br>
<div>
Name:<input type="text" name="name on card">
Card Number:<input type="text" name="card number">
<input type="hidden" name="total" value="${gtot}">





</div>
</div>
<input type="submit" value="PROCEED" style="width:75%" class="btn btn-danger">
</c:forEach>
</form>
</div>
</div>
</div>
</div>
</div>