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
<c:if test="${sessionScope.planlist.plan!='교수평가 기간'}">
<script type="text/javascript">
	location.href="${path}/GBController/main.do";
	alert('교수평가 기간 기간이 아닙니다.');
</script>
</c:if>
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
<br>
<h2 class="text-center">강의 평가</h2>
<br>
<div class="table-responsive">
<table class="table" style="width: 70%; margin:0 auto;">
<tr class="bg-danger text-white">
<th>학기</th>
<th>과목코드</th>
<th>과목명</th>
<th>교수명</th>
<th>학점</th>
<th>&nbsp;</th>
</tr>
<c:if test="${count==0}">
<tr>
<th colspan="5" class="text-center">내역이 존재 하지 않습니다.</th>
</tr>
</c:if>
<c:if test="${count>0}">
<c:forEach var="row" items="${list}">
<tr>
<td>${row.term}</td>
<td>${row.subcode}</td>
<td>${row.subname}</td>
<td>${row.proname}</td>
<td>${row.subnum}</td>
<td><input type="hidden" name="cnum" value="${row.cnum}">
<a href="${path}/CartController/writeEval.do?cnum=${row.cnum}&term=${row.term}" class="btn btn-primary">평가</a></td>
</tr>
</c:forEach>
</c:if>
</table>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>