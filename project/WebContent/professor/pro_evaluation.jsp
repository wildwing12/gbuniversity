<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
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
<%@ include file="../include/promenu.jsp" %>
<br><br>
<h2 class="text-center">강의평가 조회</h2>
<br>
<div class="table-responsive">
<table class="table" style="width: 80%; margin:0 auto;">
	<tr class="bg-success text-white">
		<th>과목코드</th>
		<th>과목명</th>
		<th>학점</th>
		<th>총점</th>
		<th>&nbsp;</th>
	</tr>
	<c:forEach var="list" items="${list}">
	<tr>
		<th>${list.subcode}</th>
		<th>${list.subname}</th>
		<th>${list.subnum}</th>
		<th>${list.eval_sum}</th>
		<th><input type="hidden" value="${list.cnum}"><a href="${path}/CartController/view.do?cnum=${list.cnum}" class="btn btn-primary btn-sm">조회</a></th>
	</tr>
	</c:forEach>
</table>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>