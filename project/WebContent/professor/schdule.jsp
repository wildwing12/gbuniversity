<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../include/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" >
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>

</head>
<body style="background-color: #f2f2f2;">
<%@ include file="../include/promenu.jsp" %>
<h2 class="text-center">주요 기간 설정</h2>
<form method="post" action="${path}/ScheduleController/plan.do">
<input type="hidden" name="anum" value="1">
<div class="table-responsive">
<table class="table" style="width: 50%; margin:0 auto;">
<caption class="text-center">현재는' ${planList.plan }'입니다.</caption>
<tr>
<td><input type="submit" name="plan"  value="수강신청기간" class="btn btn-primary"></td>
<td><input type="submit" name="plan" value="교수평가 기간" class="btn btn-info"></td>
<td><input type="submit" name="plan" value="학기중" class="btn btn-danger"></td>
<td><input type="submit" name="plan" value="방학" class="btn btn-success"></td>
</tr>
</table>
</div>
</form>
<br>
<h2 class="text-center">학사일정</h2>
<div class="table-responsive">
<table class="table" style="width: 80%; margin:0 auto;">
<tr class="bg-primary text-white">
<td>번호</td>
<td>날짜</td>
<td>학사일정</td>
<td>작성자</td>
<td>등록일</td>
<td>&nbsp;</td>
</tr>
<c:if test="${count==0 }">
<tr><td colspan="6">일정이 존재하지 않습니다.</td></tr>
</c:if>
 <c:if test="${count>0 }">
<c:forEach var="row" items="${list}"> 
<tr>
<td>${row.schnum}</td>
<td>${row.eday}</td>
<td>${row.event}</td>
<td>${row.writer}</td>
<td>${row.write_date}</td>
<td><input type="hidden" name="schnum" value="${row.schnum}">
<a href="#" onclick="if(confirm('삭제하시겠습니까?')==true){
location.href='${path}/ScheduleController/delete.do?schnum=${row.schnum}'}" class="btn btn-danger">삭제</a></td>
</tr>
</c:forEach>
 </c:if> 
</table>
</div>
<br>
<h2 class="text-center">학사 일정 입력</h2>
<br>
<div class="table-responsive">
<form method="post" name="scheduls" onsubmit="return false;">
<table class="table" style="width: 50%; margin:0 auto;">
<tr>
<td>날짜</td>
<td>학사일정</td>
<td>&nbsp;</td>
</tr>
<tr>
<td><input name="eday"></td>
<td><input name="event"></td>
<td><button id="inputText" onclick="input()" class="btn btn-primary">입력</button></td>
</tr>
</table>
</form>
</div>
<script type="text/javascript">
	function input(){
		document.scheduls.action="${path}/ScheduleController/inputs.do";
		document.scheduls.submit();
		alert("입력되었습니다.");
	}
</script>
<%@ include file="../include/footer.jsp" %>
</body>
</html>