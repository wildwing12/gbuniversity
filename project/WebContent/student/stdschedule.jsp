<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/Session_check.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" >
<style>
    	footer{
    		position: absolute;
    		left: 0;
    		bottom: 0;
    		width:100%;
    	} 
</style>
</head>
<body style="background-color: #f2f2f2;">
<%@ include file="../include/stdmenu.jsp" %>
<h2 class="text-center">학사 일정</h2>
<div class="table-responsive">
<table class="table" style="width: 70%; margin:0 auto;" class="text-center">
	<tr class="bg-info text-white ">
		<th style="text-align:center;">번호</th>
		<th style="text-align:center;">날짜</th>
		<th style="text-align:center;">학사일정</th>
	</tr>
<c:if test="${count==0 }">
<tr style="text-align:center;"><td colspan="6">일정이 존재하지 않습니다.</td></tr>
</c:if>
 <c:if test="${count>0 }">
<c:forEach var="row" items="${list}"> 
<tr>
	<td style="text-align:center;">${row.schnum}</td>
	<td style="text-align:center;">${row.eday}</td>
	<td style="text-align:center;">${row.event}</td>
</tr>
</c:forEach>
 </c:if> 
</table>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>