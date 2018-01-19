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
<div id="myCarousel" class="carousel slide " data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
</ol>
</div>
</div>
<div class="carousel-inner">
<div class="item-active">
<img class="img-rounded" class="img-responsive center-block" src="<spring:url value="assets\\watch1.jpg"></spring:url>" style="width:100%"/>"
</div></div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block" src="<spring:url value="assets\\watch2.jpg"></spring:url>" style="width:100%">
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block" src="<spring:url value="assets\\watch3.jpg"></spring:url>" style="width:100%">
</div>
<a class="left carousel-control" href="#mycarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>

</a>
<a class="right carousel-control" href="#mycarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>

</a>

</body>
</html>
