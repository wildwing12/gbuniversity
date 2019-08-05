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
<c:if test="${param.message=='login' }">
<script type="text/javascript">
	alert("환영합니다.");
</script>
</c:if>
<style>
    	footer{
    		position: relative;
    		left: 0;
    		bottom: 0;
    		width:100%;
    	} 
</style>
</head>
<body style="background-color: #f2f2f2;">
<%@ include file="../include/promenu.jsp" %>
<h2 class="text-center">공지 사항</h2><br><br>
<div class="table-responsive">
  <table class="table" style="width: 70%; margin:0 auto;">
   <tr class="bg-danger text-white">
   		<th style="text-align:center; width:10%;">번호</th>
		<th style="text-align:center; width:30%;">제목</th>
		<th style="text-align:center; width:10%;">작성자</th>
		<th style="text-align:center; width:10%;">파일</th>
		<th style="text-align:center; width:10%;">조회수</th>
		<th style="text-align:center; width:30%;">날짜</th>
   </tr>
   <c:forEach var="list" items="${list }">
   <tr>
   		<td style="text-align:center;">${list.num}</td>
		<td style="text-align:center;"><a href="${path}/NoticeController/view.do?num=${list.num}">${list.subject}</a></th>
		<td style="text-align:center;">${list.writer}</td>
		<td style="text-align:center;"></td>
		<td style="text-align:center;">${list.readcount}</td>
		<td style="text-align:center;">
			<fmt:formatDate value="${list.reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
		</td>
   </tr>
   </c:forEach>
   <tr>
 		<td colspan="6" class="text-center"><a href="${path}/notice/noticemain.jsp">더보기</a></td>
   </tr>
  </table>
</div>
<h2 class="text-center">학사 일정</h2>
<div class="table-responsive">
<table class="table" style="width: 70%; margin:0 auto;" class="text-center">
	<tr class="bg-info text-white ">
		<td style="text-align:center;">번호</td>
		<td style="text-align:center;">날짜</td>
		<td style="text-align:center;">학사일정</td>
	</tr>
	<c:forEach var="row" begin="1" end="3" items="${list2}">
	<tr>
		<td style="text-align:center;">${row.schnum}</td>
		<td style="text-align:center;">${row.eday}</td>
		<td style="text-align:center;">${row.event}</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="3" class="text-center"><a href="${path}/GBController/scheduleCheck.do">더보기</a></td>
	</tr>
</table>
</div>
<br><br>
<%@ include file="../include/footer.jsp" %>
</body>
</html>