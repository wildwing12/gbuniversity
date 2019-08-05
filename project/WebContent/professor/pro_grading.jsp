<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../include/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" >
<script src="../js/bootstrap.min.js"></script>
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<script>
	//window.open("input.jsp","pop","width=450,height=380,left=300,top=10");
</script>
</head>
<body style="background-color: #f2f2f2;">
<%@ include file="../include/promenu.jsp" %>
<br><br>
<h2 class="text-center">성적관리</h2>
<br>
<h3 class="text-center">성적 입력</h3>
<br>
<div class="table-responsive">
<table class="table" style="width: 80%; margin:0 auto;">
	<tr class="bg-primary text-white">
		<td>학기</td>
		<td>과목코드</td>
		<td>과목명</td>
		<td>분류</td>
		<td>학번</td>
		<td>학생이름</td>
		<td>성적</td>
		<td>&nbsp;</td>
	</tr>
	<c:choose>
		<c:when test="${count==0 }">
			<tr>
				<th  colspan="8" class="text-center h5">목록이 없습니다.</th>
			</tr>
		</c:when>
		<c:otherwise>
	<c:forEach var="row" items="${list_cart}">
	<form method="post" action="${path}/ScoreController/inputScore.do">
	<tr>
		<td>${row.term}</td>
		<td><input name="subcode" type="hidden" value="${row.subcode}">${row.subcode}</td>
		<td>${row.subname}</td>
		<td>${row.categories}</td>
		<td><input name="stdid" type="hidden" value="${row.stdid}">${row.stdid }</td>
		<td>${row.stdname }</td>
		<td>
			<select name="score" >
				<option value="0">F</option>
				<option value="1.0">D</option>
				<option value="1.5">D+</option>
				<option value="2.0">C</option>
				<option value="2.5">C+</option>
				<option value="3.0">B</option>
				<option value="3.5">B+</option>
				<option value="4.0">A</option>
				<option value="4.5" selected>A+</option>
			</select>
			<input name="cnum" type="hidden" value="${row.cnum}">
		</td>
		<td><input type="submit" value="입력" onclick="alert('입력되었습니다.')" class="btn btn-primary"></td>
	</tr>
	</form>
	</c:forEach>
	</c:otherwise>
	</c:choose>
</table>
</div>
<br>
<h3 class="text-center">성적 수정</h3>
<br>
<div class="table-responsive">
<table class="table" style="width: 80%; margin:0 auto;">
	<tr class="bg-info text-white">
		<td>학기</td>
		<td>과목코드</td>
		<td>과목명</td>
		<td>분류</td>
		<td>학번</td>
		<td>학생이름</td>
		<td>성적</td>
		<td>&nbsp;</td>
	</tr>
	<c:forEach var="row" items="${list_cart2 }">
	<tr>
		<td>${row.term}</td>
		<td>${row.subcode}</td>
		<td>${row.subname}</td>
		<td>${row.categories}</td>
		<td>${row.stdid}</td>
		<td>${row.stdname}</td>
	<form method="post" action="${path}/ScoreController/updateScore.do">
		<td>
		<c:choose>
			<c:when test="${row.score==0 }">
				<select name="score" >
				<option value="0" selected="selected">F</option>
				<option value="1.0">D</option>
				<option value="1.5">D+</option>
				<option value="2.0">C</option>
				<option value="2.5">C+</option>
				<option value="3.0">B</option>
				<option value="3.5">B+</option>
				<option value="4.0">A</option>
				<option value="4.5" >A+</option>
			</select>
			</c:when>
			<c:when test="${row.score==1.0 }">
				<select name="score" >
				<option value="0">F</option>
				<option value="1.0" selected="selected">D</option>
				<option value="1.5">D+</option>
				<option value="2.0">C</option>
				<option value="2.5">C+</option>
				<option value="3.0">B</option>
				<option value="3.5">B+</option>
				<option value="4.0">A</option>
				<option value="4.5" >A+</option>
			</select>
			</c:when>
			<c:when test="${row.score==1.5 }">
				<select name="score" >
				<option value="0">F</option>
				<option value="1.0">D</option>
				<option value="1.5" selected="selected">D+</option>
				<option value="2.0">C</option>
				<option value="2.5">C+</option>
				<option value="3.0">B</option>
				<option value="3.5">B+</option>
				<option value="4.0">A</option>
				<option value="4.5" >A+</option>
				</select>
			</c:when>
			<c:when test="${row.score==2.0 }">
				<select name="score" >
				<option value="0">F</option>
				<option value="1.0">D</option>
				<option value="1.5">D+</option>
				<option value="2.0" selected="selected">C</option>
				<option value="2.5">C+</option>
				<option value="3.0">B</option>
				<option value="3.5">B+</option>
				<option value="4.0">A</option>
				<option value="4.5" >A+</option>
			</select>
			</c:when>
			<c:when test="${row.score==2.5 }">
				<select name="score" >
				<option value="0">F</option>
				<option value="1.0">D</option>
				<option value="1.5">D+</option>
				<option value="2.0">C</option>
				<option value="2.5" selected="selected">C+</option>
				<option value="3.0">B</option>
				<option value="3.5">B+</option>
				<option value="4.0">A</option>
				<option value="4.5" >A+</option>
			</select>
			</c:when>
			<c:when test="${row.score==3.0 }">
				<select name="score" >
				<option value="0">F</option>
				<option value="1.0">D</option>
				<option value="1.5">D+</option>
				<option value="2.0">C</option>
				<option value="2.5">C+</option>
				<option value="3.0" selected="selected">B</option>
				<option value="3.5">B+</option>
				<option value="4.0">A</option>
				<option value="4.5" >A+</option>
			</select>
			</c:when>
			<c:when test="${row.score==3.5 }">
				<select name="score" >
				<option value="0">F</option>
				<option value="1.0">D</option>
				<option value="1.5">D+</option>
				<option value="2.0">C</option>
				<option value="2.5">C+</option>
				<option value="3.0">B</option>
				<option value="3.5" selected="selected">B+</option>
				<option value="4.0">A</option>
				<option value="4.5" >A+</option>
			</select>
			</c:when>
			<c:when test="${row.score==4.0 }">
				<select name="score" >
				<option value="0">F</option>
				<option value="1.0">D</option>
				<option value="1.5">D+</option>
				<option value="2.0">C</option>
				<option value="2.5">C+</option>
				<option value="3.0">B</option>
				<option value="3.5">B+</option>
				<option value="4.0" selected="selected">A</option>
				<option value="4.5" >A+</option>
			</select>
			</c:when>
			<c:when test="${row.score==4.5 }">
				<select name="score" >
				<option value="0">F</option>
				<option value="1.0">D</option>
				<option value="1.5">D+</option>
				<option value="2.0">C</option>
				<option value="2.5">C+</option>
				<option value="3.0">B</option>
				<option value="3.5">B+</option>
				<option value="4.0">A</option>
				<option value="4.5" selected="selected">A+</option>
			</select>
			</c:when>
		</c:choose>
		</td>
		<td>
			<input type="hidden" name="snum" value="${row.snum}">
			<input type="submit" value="수정" onclick="alert('수정되었습니다.')" class="btn btn-primary">
		</td>
	</form>
	
	</tr>
	</c:forEach>
</table>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>