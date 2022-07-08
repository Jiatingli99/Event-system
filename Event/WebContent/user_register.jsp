<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<title>User register</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/simpleCart.min.js"></script>
</head>
<body>

	<!--header-->
	<jsp:include page="/header.jsp">
		<jsp:param name="flag" value="10"></jsp:param>
	</jsp:include>
	<!--//header-->


	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-danger">${msg }</div>
				</c:if>
				<form action="<%=request.getContextPath()%>/user_rigister" method="post">
					<div class="register-top-grid">
						<h3>New</h3>
						<div class="input">
							<span>user name <label style="color:red;">*</label></span>
							<input type="text" name="username" placeholder="input your username" required="required">
						</div>
						<div class="input">
							<span> E-mail <label style="color:red;">*</label></span>
							<input type="text" name="email" placeholder="input your E-mail" required="required">
						</div>
						<div class="input">
							<span>Password <label style="color:red;">*</label></span>
							<input type="password" name="password" placeholder="input your password" required="required">
						</div>
						<div class="input">
							<span>Contact<label></label></span>
							<input type="text" name="name" placeholder="input your Contact">
						</div>
						<div class="input">
							<span>Phone<label></label></span>
							<input type="text" name="phone" placeholder="input your Phone">
						</div>
						<div class="input">
							<span> Family Address<label></label></span>
							<input type="text" name="address" placeholder="input your Family Address;">
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center">
					   <input type="submit" value="submit">
					   <div class="clearfix"> </div>
					</div>
				</form>
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	




	<!--footer-->
	<!--//footer-->

	
</body>
</html>