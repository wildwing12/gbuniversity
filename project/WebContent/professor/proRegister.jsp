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
<script type="text/javascript">
function insert(){
	document.insertSub.action="${path}/Subject/insertSub.do";
	document.insertSub.submit();
	alert("등록되었습니다.");
}
</script>
<c:if test="${param.message=='delete'}">
<script type="text/javascript">
	alert("삭제되었습니다.");
</script>
</c:if>
</head>
<body style="background-color: #f2f2f2;">
<%@ include file="../include/promenu.jsp" %>
<br><br>
<h2 class="text-center">과목등록</h2>
<br>
<div class="table-responsive">
<table class="table" style="width: 80%; margin:0 auto;">
<tr class="bg-primary text-white">
<td>학기</td>
<td>과목코드</td>
<td>과목명</td>
<td>분류</td>
<td>학점</td>
<td>교수명</td>
<td>&nbsp;</td>
</tr>
<c:forEach var="row" items="${list}">
<tr>
<td>${row.term }</td>
<td>${row.subcode}</td>
<td>${row.subname}</td>
<td>${row.categories}</td>
<td>${row.subnum}</td>
<td>${row.proname}</td>
<td><a class="btn btn-danger text-white" href="#" 
onclick="if(confirm('삭제하시겠습니까?')){
	location.href='${path}/Subject/deleteSubject.do?subcode=${row.subcode}';
}">삭제</a></td>
</tr>
</c:forEach>
</table>
</div>
<form method="post" id="insertSub" name="insertSub">
<div class="table-responsive">
<table class="table" style="width: 70%; margin:0 auto;">
<tr>
<td>학기</td>
<td>과목코드</td>
<td>과목명</td>
<td>분류</td>
<td>학점</td>
<td>교수명</td>
<td>&nbsp;</td>
</tr>
<tr>
<td><input id="term" name="term"></td>
<td><input id="subcode" name="subcode"></td>
<td><input id="subname" name="subname"></td>
<td><select id="categories" name="categories">
		<option value="교양" >교양</option>
		<option value="전선" >전선</option>
		<option value="전필" >전필</option>
	</select>
</td>
<td>
	<select id="subnum" name="subnum">
		<option value="1" >1학점</option>
		<option value="2" >2학점</option>
		<option value="3" >3학점</option>
	</select>
</td>
<td><input id="proname" name="proname" value="${sessionScope.proname}" readonly="readonly"></td>
<td><input type="button" onclick="insert()" value="등록" class="btn btn-success"></td>
</tr>
</table>
</div>
</form>
<%@ include file="../include/footer.jsp" %>
</body>
</html>