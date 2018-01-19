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
<h2>category List for Admin</h2>
<table class="table table-hover" id="apl" class="display" border="2" width="80" align="center">
<tr>
<th>SI.No</th>
<th>CID</th>
<th>Category Name</th>

<th class="span2">Action</th>
</tr>

<c:if test="${ empty catList}">
<tr>
    <td colspan="10" align="center">The list is empty.</td></tr>
</c:if>


 <c:forEach var = "c" varstatus="st" items = "${cList}">
            <tr>
            <td><c:out value = "${c.count}"/></td>
               <td><c:out value = "${c.cid}"/></td>
               <td><c:out value = "${c.cname}"/></td>
               <td><c:out value = "${c.supplier.suppliername}"/></td>
               <td><c:out value = "${c.category.cname}"/></td>
                             
               <td><img src="${pageContext.request.contextPath }/resources/${p.imgName}" height="50px" width="50px"/></td>
               <td class="span3">
               <td><c:out src=contextRoot value = "${pageContext.request.contextPath }"/>
               <!-- 
    <a class="btn btn-info" role="button" href="<c:url value="${contextRoot}/admin/updateprod?cid=<c:out value="${c.cid}"/>">">Edit</a>       
               <a class="btn btn-danger" role="button" href="<c:url value="/admin/deleteProd/${c.cid }"/>">Delete</a></td>
               -->
               </td>
            </tr>
         </c:forEach>
</table>
</div>
</body>
</html>



