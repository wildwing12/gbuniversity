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
</head>
<body style="background-color: #f2f2f2;">
<%@ include file="../include/stdmenu.jsp" %>
<br>
<h2 class="text-center">성적 확인</h2>
<br>
<h4 class="text-center">현재 학기 성적</h4>
<br>
<div class="table-responsive">
  <table class="table" style="width: 70%; margin:0 auto;">
	<tr class="bg-info text-white">
	<td>과목코드</td>
	<td>과목명</td>
	<td>교수명</td>
	<td>분류</td>
	<td>점수</td>
	</tr>
	<c:if test="${count!=0 }">
	<tr>
		<td colspan="7">강의 평가를 완료해야 성적을 확인 할 수 있습니다.</td>
	</tr>
	</c:if>
	<c:if test="${count==0 }">
	<c:forEach var="row" items="${list}">
	<tr>
	<td>${row.subcode}</td>
	<td>${row.subname}</td>
	<td>${row.proname}</td>
 	<td>${row.categories}</td>
	<c:choose>
	<c:when test="${row.score==0}">
	<td>F</td>
	</c:when>
	<c:when test="${row.score==1.0}">
	<td>D</td>
	</c:when>
	<c:when test="${row.score==1.5}">
	<td>D+</td>
	</c:when>
	<c:when test="${row.score==2.0}">
	<td>C</td>
	</c:when>
	<c:when test="${row.score==2.5}">
	<td>C+</td>
	</c:when>
	<c:when test="${row.score==3.0}">
	<td>B</td>
	</c:when>
	<c:when test="${row.score==3.5}">
	<td>B+</td>
	</c:when>
	<c:when test="${row.score==4.0}">
	<td>A</td>
	</c:when>
	<c:when test="${row.score==4.5}">
	<td>A+</td>
	</c:when>
	</c:choose>
	</tr>
	</c:forEach>
	</c:if>
</table>
</div>
<br>
<h4 class="text-center">전체학기성적</h4>
<br>
<c:set var="liberal" value="0"/>
<c:set var="selection" value="0"/>
<c:set var="Essentials" value="0"/>
<c:set var="total" value="0"/>
<c:set var="term_grade" value="0"/>
<div class="table-responsive">
  <table class="table" style="width: 70%; margin:0 auto;">
<tr class="bg-warning text-white">
<td>학기</td>
<td>교양</td>
<td>전선</td>
<td>전필</td>
<td>총합</td>
<td>평점</td>
</tr>
<c:forEach var="row3" items="${list3}">
<tr >
<td>${row3.term}</td>
<td>${row3.sumliberal}</td>
<td>${row3.sumselection}</td>
<td>${row3.sumEssentials}</td>
<td>${row3.total}</td>
<td>${row3.term_grade}</td>
<c:set var="liberal" value="${liberal+row3.sumliberal}"/>
<c:set var="selection" value="${selection+row3.sumselection }"/>
<c:set var="Essentials" value="${Essentials+row3.sumEssentials }"/>
<c:set var="total" value="${total+row3.total }"/>
<c:set var="term_grade" value="${term_grade+row3.term_grade }"/>
</tr>
</c:forEach>
<tr>
<td class="table-dark text-white">합계</td>
<td>${liberal}</td>
<td>${selection}</td>
<td>${Essentials}</td>
<td>${total}</td>
<td><c:out value="${term_grade/count2 }"/></td>
</tr>
</table>
</div>
<br>
<%@ include file="../include/footer.jsp" %>
</body>
</html>