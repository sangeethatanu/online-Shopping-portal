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
<h2>Wecome to login page!!</h2>
<form action="${pageContext.request.contextPath }/login" class="form-signin" method="post">
<h3><label>Email:</label></h3>
<input type="text" name="username" class="login-box" required>

<h3><label>Password:</label></h3>
<input type="text" name="username" class="login-box" required>

<button type="submit" class="btn btn-lg  btn-info">Login</button>
<button type="reset" class="btn btn-lg  btn-info">CANCEL</button>

</form>
</div>
</body>
</html>