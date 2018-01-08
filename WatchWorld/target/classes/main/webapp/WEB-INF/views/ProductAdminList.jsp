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
<h2>Watch World!</h2>

<div class="container">
<h2>Product List for Admin</h2>
<table class="table table-hover" id="apl" class="display" border="2" width="80" align="center">
<tr>
<th>SI.No</th>
<th>PID</th>
<th>Product Name</th>
<th>Description</th>
<th>Stock</th>
<th>Price</th>
<th>Image</th>
<th class="span2">Action</th>
</tr>

<c:if test="$ empty prodList}">
<tr>
    <td colspan="10" align="center">The list is empty.</td></tr>
</c:if>


 <c:forEach var = "p" varstatus="st" items = "${prodList}">
            <tr>
            <td><c:out value = "${p.count}"/></td>
               <td><c:out value = "${p.pid}"/></td>
               <td><c:out value = "${p.pname}"/></td>
               <td><c:out value = "${p.supplier.suppliername}"/></td>
               <td><c:out value = "${p.category.cname}"/></td>
               <td class="span3"><c:out value = "${p.description}"/></td>
               <td><c:out value = "${p.price}"/></td>
               <td><c:out value = "${p.stock}"/></td>
               <td><img src="${pageContext.request.contextPath }/resources/${p.imgName}" height="50px" width="50px"></td>
               <td class="span4">
               <c:set src=contextRoot value = "${pageContext.request.contextPath }"/>
                  <a class="btn btn-info" role="button" href="${contextRoot}/updateProd?pid=<c:out value="${p.pid}"></c:out>"/>Edit</a>      
               <a class="btn btn-danger" role="button" href="<c:url value="/deleteProd/${p.pid }"/>">Delete</a>
              
               </td>
            </tr>
         </c:forEach>







</table>


