<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<title>User join</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	




	<jsp:include page="header.jsp"></jsp:include>

	<br>

	<ul role="tablist" class="nav nav-tabs">
		<li <c:if test="${status==0 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/order_list">All registration</a></li>
 	</ul>

	<br>
	
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
 		<th width="15%">Event Detail</th>
		<th width="20%">Information of registration</th>
		<th width="10%">Check Enrollment Status</th>
		<th width="10%">The registration user</th>
		<th width="10%">Registration time</th>
		<th width="10%">Operations</th>
	</tr>

		<c:forEach items="${p.list }" var="order">
			<tr>
				<td><p>${order.id }</p></td>
 				<td>
					<c:forEach items="${order.itemList }" var="item">
						<p>${item.goodsName }(${item.price }) x ${item.amount}</p>
					</c:forEach>
				</td>
				<td>
					<p>${order.name }</p>
					<p>${order.phone }</p>
					<p>${order.address }</p>
				</td>
				<td>
					<p>
						<c:if test="${order.status==2 }"><span style="color:red;">Submitted</span></c:if>
						<c:if test="${order.status==3 }"><span style="color:green;">Traveled</span></c:if>
						<c:if test="${order.status==4 }"><span style="color:black;">Involved</span></c:if>

					</p>
				</td>
				
				<td><p>${order.user.username }</p></td>
				<td><p>${order.datetime }</p></td>
				<td>
					<c:if test="${order.status==2 }">
						<a class="btn btn-success" href="<%=request.getContextPath()%>/admin/order_status?id=${order.id }&status=3">Outing</a>
					</c:if>
					<c:if test="${order.status==3 }">
						<a class="btn btn-warning" href="<%=request.getContextPath()%>/admin/order_status?id=${order.id }&status=4">Finish</a>
					</c:if>
					<a class="btn btn-danger" href="<%=request.getContextPath()%>/admin/order_delete?id=${order.id }&pageNumber=${p.pageNumber}&status=${status}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	
     
</table>

<br>
	<jsp:include page="/page.jsp">
		<jsp:param value="/admin/order_list" name="url"/>
		<jsp:param value="&status=${status}" name="param"/>
	</jsp:include>
<br>
</div>
</body>
</html>