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
<hr>
<div class="modal fade bs-example-modal-sm" tabindex="1" role="diaLog"
aria-labelledby="myModal" aria-hidden="true" id="onload">

<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">X</button>
</div>
<div class="modal-body"><span>Added Sucessfully!!!!</span></div>

<div class="modal-footer">
<a href="${pageContext.request.contextPath}/admin/adding"
role="button" class="btn btn-primary">Back</a>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function)
	
	$('#onload').moda;('show');));

</script>
</body>
</html>







