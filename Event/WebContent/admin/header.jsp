<%--
  Created by IntelliJ IDEA.
  User: 19767
  Date: 2018/11/30
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">Background </a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li ><a href="<%=request.getContextPath()%>/admin/order_list">Registration management</a></li>
                <li ><a href="<%=request.getContextPath()%>/admin/user_list">Visitor Management</a></li>
                <li ><a href="<%=request.getContextPath()%>/admin/goods_list">Event Management</a></li>
                <li ><a href="<%=request.getContextPath()%>/admin/type_list">Activity Type Management</a></li>
                <li><a href="<%=request.getContextPath()%>/user_logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>