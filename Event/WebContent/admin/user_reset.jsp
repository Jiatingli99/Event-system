<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Reset Password</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">

	<jsp:include page="/admin/header.jsp"></jsp:include>

	<br><br>

	<form class="form-horizontal" action="<%=request.getContextPath()%>/admin/user_reset" method="post">
		<input type="hidden" name="id" value="${param.id }">
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">User name</label>
			<div class="col-sm-5">${param.username }</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">Email</label>
			<div class="col-sm-5">${param.email }</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">Password</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="password" value="" required="required">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">Commit</button>
			</div>
		</div>
	</form>

	<span style="color:red;"></span>

</div>
</body>
</html>