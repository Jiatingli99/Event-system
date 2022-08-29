<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>add-activities</title>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">

	<jsp:include page="/admin/header.jsp"></jsp:include>

	<br><br>
	<form class="form-horizontal" action="<%=request.getContextPath()%>/admin/goods_add" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">Name</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="name"  required="required">
			</div>
		</div>
		<div class="form-group" style="display:none">
			<label for="input_name" class="col-sm-1 control-label">price</label>
			<div class="col-sm-6">
				<input type="text" value="1" class="form-control" id="input_name" name="price" >
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">Introduction</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" name="intro" >
			</div>
		</div>
		<div class="form-group" style="display:none" >
			<label for="input_name" class="col-sm-1 control-label">Stock</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="input_name" value="1" name="stock" >
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">Cover Image</label>
			<div class="col-sm-6">
				<input type="file" name="cover"  id="input_file" required="required">recommend size: 500 * 500
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">Details about the pictures 1</label>
			<div class="col-sm-6">
				<input type="file" name="image1"  id="input_file" required="required">recommend size: 500 * 500
			</div>
		</div>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">Details about the pictures 2</label>
			<div class="col-sm-6">
				<input type="file" name="image2"  id="input_file" required="required">recommend size: 500 * 500
			</div>
		</div>
		<div class="form-group">
			<label for="select_topic" class="col-sm-1 control-label">Activity Type</label>
			<div class="col-sm-6">
				<select class="form-control" id="select_topic" name="typeid">

					<c:forEach items="${typeList }" var="t">
						<option value="${t.id }">${t.name }</option>
					</c:forEach>


				</select>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">Submit </button>
			</div>
		</div>
	</form>
</div>
</body>
</html>