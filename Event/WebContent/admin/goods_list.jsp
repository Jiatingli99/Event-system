<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Event List</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">

	<jsp:include page="/admin/header.jsp"></jsp:include>

	<div class="text-right"><a class="btn btn-warning" href="<%=request.getContextPath()%>/admin/goods_add.jsp">Add-activities</a></div>

	<br>

	<ul role="tablist" class="nav nav-tabs">
		<li <c:if test="${type==0 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list">Full-motion</a></li>
		<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=1">Banners</a></li>
		<li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=2">Recommended Popular events</a></li>
		<li <c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=3">New campaign recommendations</a></li>
	</ul>





	<br>

	<table class="table table-bordered table-hover">

		<tr>
			<th width="5%">ID</th>
			<th width="10%">Picture</th>
			<th width="10%">Name</th>
			<th width="20%">Introduction</th>
			<th width="10%">Price</th>
			<th width="10%">Activity Type</th>
			<th width="25%">Operate</th>
		</tr>

		<c:forEach items="${p.list }" var="g">
			<tr>
				<td><p>${g.id }</p></td>
				<td><p><a href="<%=request.getContextPath()%>/goods_detail?id=${g.id}" target="_blank"><img src="<%=request.getContextPath()%>/${g.cover}" width="100px" height="100px"></a></p></td>
				<td><p><a href="<%=request.getContextPath()%>/goods_detail?id=${g.id}" target="_blank">${g.name}</a></p></td>
				<td><p>${g.intro}</p></td>
				<td><p>${g.price}</p></td>
				<td><p>${g.type.name}</p></td>
				<td>
					<p>
						<c:choose>
							<c:when test="${g.isScroll }">
								<a class="btn btn-info" href="<%=request.getContextPath()%>/admin/goods_recommend?id=${g.id }&method=remove&typeTarget=1&pageNumber=${p.pageNumber}&type=${type}">Remove the banner</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="<%=request.getContextPath()%>/admin/goods_recommend?id=${g.id }&method=add&typeTarget=1&pageNumber=${p.pageNumber}&type=${type}">Join the banner</a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${g.isHot }">
								<a class="btn btn-info" href="<%=request.getContextPath()%>/admin/goods_recommend?id=${g.id }&method=remove&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}">Move out of popular activities</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="<%=request.getContextPath()%>/admin/goods_recommend?id=${g.id }&method=add&typeTarget=2&pageNumber=${p.pageNumber}&type=${type}"> Join popular events</a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${g.isNew }">
								<a class="btn btn-info" href="<%=request.getContextPath()%>/admin/goods_recommend?id=${g.id }&method=remove&typeTarget=3&pageNumber=${p.pageNumber}&type=${type}">Move new activity</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="<%=request.getContextPath()%>/admin/goods_recommend?id=${g.id }&method=add&typeTarget=3&pageNumber=${p.pageNumber}&type=${type}">Add new activity</a>
							</c:otherwise>
						</c:choose>

					</p>
					<a class="btn btn-success" href="<%=request.getContextPath()%>/admin/goods_editshow?id=${g.id }& pageNumber=${p.pageNumber}&type=${type}">Modify</a>
					<a class="btn btn-danger" href="<%=request.getContextPath()%>/admin/goods_delete?id=${g.id }&pageNumber=${p.pageNumber}&type=${type}">Delete</a>
				</td>
			</tr>
		</c:forEach>


	</table>

	<br>
	<jsp:include page="/page.jsp">
		<jsp:param value="/admin/goods_list" name="url"/>
		<jsp:param value="&type=${type }" name="param"/>
	</jsp:include>
	<br>
</div>
</body>
</html>