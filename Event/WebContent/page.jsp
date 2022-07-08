<%--
  
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div style='text-align:center;'>
    <a class='btn btn-info'   <c:if test="${p.pageNumber==1 }">disabled</c:if>  <c:if test="${p.pageNumber!=1 }">href="<%=request.getContextPath()%>/${param.url }?pageNumber=1${param.param }"</c:if>> Home Page</a>
    <a class='btn btn-info' <c:if test="${p.pageNumber==1 }">disabled</c:if> <c:if test="${p.pageNumber!=1 }">href="${pageContext.request.contextPath }${param.url }?pageNumber=${p.pageNumber-1}${param.param }"</c:if>>Page Up</a>
    <h3 style='display:inline;'>[${p.pageNumber }/${p.totalPage }]</h3>
    <h3 style='display:inline;'>[${p.totalCount }]</h3>
    <a class='btn btn-info' <c:if test="${p.totalPage==0 || p.pageNumber==p.totalPage }">disabled</c:if> <c:if test="${p.pageNumber!=p.totalPage }">href="<%=request.getContextPath()%>/${param.url }?pageNumber=${p.pageNumber+1}${param.param }"</c:if>>Page Down</a>
    <a class='btn btn-info' <c:if test="${p.totalPage==0 || p.pageNumber==p.totalPage }">disabled</c:if> <c:if test="${p.pageNumber!=p.totalPage }">href="<%=request.getContextPath()%>/${param.url }?pageNumber=${p.totalPage}${param.param }"</c:if>>Last</a>
    <input type='text' class='form-control' style='display:inline;width:60px;' value=''/><a class='btn btn-info' href='javascript:void(0);' onclick='location.href="<%=request.getContextPath()%>/${param.url }?pageNumber="+(this.previousSibling.value)+"${param.param }"'>GO</a>
</div>
