<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>My Center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/simpleCart.min.js"></script>
</head>
<body>

	<jsp:include page="/header.jsp">
		<jsp:param value="4" name="flag"/>
	</jsp:include>
	<c:if test="${empty user}"><%response.sendRedirect("/index");%></c:if>
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${!empty failMsg }">
					<div class="alert alert-danger">${failMsg }</div>
				</c:if>
				
					<div class="register-top-grid">
						<h3>My Center</h3>
						<form action="<%=request.getContextPath()%>/user_changeaddress" method="post">
						<!-- information of registration start -->
						<h4>Information of registration</h4>
						<div class="input">
							<span>Contact<label></label></span>
							<input type="text" name="name" value="${user.name }" placeholder="Please enter receipt"> 
						</div>
						<div class="input">
							<span> Phone</span>
							<input type="text" name="phone" value="${user.phone }" placeholder=" input your phone"> 
						</div>
						<div class="input">
							<span>Address</span>
							<input type="text" name="address" value="${user.address }" placeholder="input your address"> 
						</div>
						<div class="register-but text-center">
						   <input type="submit" value="submit">
						</div>	
						<!-- information of registration end -->
						</form>
						<hr>
						<form action="<%=request.getContextPath()%>/user_changepwd" method="post">
						<h4>safety information</h4>
						<div class="input">
							<span>old password</span>
							<input type="text" name="password" placeholder="input your old password"> 
						</div>
						<div class="input">
							<span>new password</span>
							<input type="text" name="newPassword" placeholder="input your new password"> 
						</div>
						<div class="clearfix"> </div>
						<div class="register-but text-center">
						   <input type="submit" value="submit">
						</div>	
						</form>
					</div>
				
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	


	<jsp:include page="/footer.jsp"></jsp:include>

	
</body>
</html>