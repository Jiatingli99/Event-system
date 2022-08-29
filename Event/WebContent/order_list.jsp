<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<title>My event</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/layer/layer.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/cart.js"></script>
</head>
<body>
	
	





	<!--header-->
	<jsp:include page="header.jsp">
		<jsp:param name="flag" value="5"></jsp:param>
	</jsp:include>
	<!--//header-->

	
	<!--cart-items-->
	<div class="cart-items">
		<div class="container">
		
		
		
			<h2>My event</h2>
			
				<table class="table table-bordered table-hover">

				<tr>
					<th width="10%">ID</th>
 					<th width="20%">Event Detail</th>
					<th width="30%">Information of registration</th>
					<th width="10%">Check Enrollment Status</th>
					<th width="10%">Registration time</th>
				</tr>

					<c:forEach items="${orderList }" var="order">

						<tr>
							<td><p>${order.id }</p></td>
 							<td>
								<c:forEach items="${order.itemList }" var="item">
									<p>${item.goodsName }(${item.price }) x ${item.amount }</p>
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
									<c:if test="${order.status==3 }"><span style="color:green;"> Have to travel</span></c:if>
									<c:if test="${order.status==4 }"><span style="color:black;">Has been involved in</span></c:if>


								</p>
							</td>
							 
							<td><p>${order.datetime }</p></td>
						</tr>

					</c:forEach>



				</table>
			
			
			
			
		</div>
	</div>
	<!--//cart-items-->	
	
	




	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--//footer-->


</body>
</html>