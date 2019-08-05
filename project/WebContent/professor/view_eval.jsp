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
<div class="table-responsive">
<table class="table" style="width: 80%; margin:0 auto;">
<tr>
<td colspan="4" class="text-center bg-danger text-white">강의 내용 평가</td>
</tr>
<tr>
<td colspan="2">강의 계획서에 따라 강의를 진행했다.</td>
<td colspan="2" class="text-right">
<c:choose>
	<c:when test="${dto.eval_score1==1 }">
		<input type="radio" name="eval_score1" value="1" checked="checked" disabled>1
		<input type="radio" name="eval_score1" value="2" disabled>2
		<input type="radio" name="eval_score1" value="3" disabled>3
		<input type="radio" name="eval_score1" value="4" disabled>4
		<input type="radio" name="eval_score1" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score1==2 }">
		<input type="radio" name="eval_score1" value="1" disabled>1
		<input type="radio" name="eval_score1" value="2" checked="checked" disabled="disabled">2
		<input type="radio" name="eval_score1" value="3" disabled>3
		<input type="radio" name="eval_score1" value="4" disabled>4
		<input type="radio" name="eval_score1" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score1==3 }">
		<input type="radio" name="eval_score1" value="1" disabled>1
		<input type="radio" name="eval_score1" value="2" disabled>2
		<input type="radio" name="eval_score1" value="3" checked="checked" disabled="disabled">3
		<input type="radio" name="eval_score1" value="4" disabled>4
		<input type="radio" name="eval_score1" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score1==4 }">
		<input type="radio" name="eval_score1" value="1" disabled>1
		<input type="radio" name="eval_score1" value="2" disabled>2
		<input type="radio" name="eval_score1" value="3" disabled>3
		<input type="radio" name="eval_score1" value="4" checked="checked" disabled="disabled">4
		<input type="radio" name="eval_score1" value="5" disabled>5
	</c:when>
	
	<c:when test="${dto.eval_score1==5 }">
		<input type="radio" name="eval_score1" value="1" disabled>1
		<input type="radio" name="eval_score1" value="2" disabled>2
		<input type="radio" name="eval_score1" value="3" disabled>3
		<input type="radio" name="eval_score1" value="4" disabled>4
		<input type="radio" name="eval_score1" value="5" checked="checked" disabled="disabled">5
	</c:when>
</c:choose>
</td>
</tr>
<tr>
<td colspan="2">강의 자료가 적절했다.</td>
<td colspan="2" class="text-right">
<c:choose>
	<c:when test="${dto.eval_score2==1 }">
		<input type="radio" name="eval_score2" value="1" checked="checked" disabled="disabled">1
		<input type="radio" name="eval_score2" value="2" disabled>2
		<input type="radio" name="eval_score2" value="3" disabled>3
		<input type="radio" name="eval_score2" value="4" disabled>4
		<input type="radio" name="eval_score2" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score2==2 }">
		<input type="radio" name="eval_score2" value="1" disabled>1
		<input type="radio" name="eval_score2" value="2" checked="checked" disabled="disabled">2
		<input type="radio" name="eval_score2" value="3" disabled>3
		<input type="radio" name="eval_score2" value="4" disabled>4
		<input type="radio" name="eval_score2" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score2==3 }">
		<input type="radio" name="eval_score2" value="1" disabled>1
		<input type="radio" name="eval_score2" value="2" disabled>2
		<input type="radio" name="eval_score2" value="3" checked="checked" disabled="disabled">3
		<input type="radio" name="eval_score2" value="4" disabled>4
		<input type="radio" name="eval_score2" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score2==4 }">
		<input type="radio" name="eval_score2" value="1" disabled>1
		<input type="radio" name="eval_score2" value="2" disabled>2
		<input type="radio" name="eval_score2" value="3" disabled>3
		<input type="radio" name="eval_score2" value="4" checked="checked" disabled="disabled">4
		<input type="radio" name="eval_score2" value="5" disabled>5
	</c:when>
	
	<c:when test="${dto.eval_score2==5 }">
		<input type="radio" name="eval_score2" value="1" disabled>1
		<input type="radio" name="eval_score2" value="2" disabled>2
		<input type="radio" name="eval_score2" value="3" disabled>3
		<input type="radio" name="eval_score2" value="4" disabled>4
		<input type="radio" name="eval_score2" value="5" checked="checked" disabled="disabled">5
	</c:when>
</c:choose>
</td>
</tr>
<tr>
<td colspan="2">시험 및 과제,성적평가 기준이 적절하고 공정했다.</td>
<td colspan="2" class="text-right">
<c:choose>
	<c:when test="${dto.eval_score3==1 }">
		<input type="radio" name="eval_score3" value="1" checked="checked" disabled="disabled">1
		<input type="radio" name="eval_score3" value="2" disabled>2
		<input type="radio" name="eval_score3" value="3" disabled>3
		<input type="radio" name="eval_score3" value="4" disabled>4
		<input type="radio" name="eval_score3" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score3==2 }">
		<input type="radio" name="eval_score3" value="1" disabled>1
		<input type="radio" name="eval_score3" value="2" checked="checked" disabled="disabled">2
		<input type="radio" name="eval_score3" value="3" disabled>3
		<input type="radio" name="eval_score3" value="4" disabled>4
		<input type="radio" name="eval_score3" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score3==3 }">
		<input type="radio" name="eval_score3" value="1" disabled>1
		<input type="radio" name="eval_score3" value="2" disabled>2
		<input type="radio" name="eval_score3" value="3" checked="checked" disabled="disabled">3
		<input type="radio" name="eval_score3" value="4" disabled>4
		<input type="radio" name="eval_score3" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score3==4 }">
		<input type="radio" name="eval_score3" value="1" disabled>1
		<input type="radio" name="eval_score3" value="2" disabled>2
		<input type="radio" name="eval_score3" value="3" disabled>3
		<input type="radio" name="eval_score3" value="4" checked="checked" disabled="disabled">4
		<input type="radio" name="eval_score3" value="5" disabled>5
	</c:when>
	
	<c:when test="${dto.eval_score3==5 }">
		<input type="radio" name="eval_score3" value="1" disabled>1
		<input type="radio" name="eval_score3" value="2" disabled>2
		<input type="radio" name="eval_score3" value="3" disabled>3
		<input type="radio" name="eval_score3" value="4" disabled>4
		<input type="radio" name="eval_score3" value="5" checked="checked" disabled="disabled">5
	</c:when>
</c:choose>
</td>
</tr>
<tr>
<td colspan="2">교수가 열의를 가지고 강의했다.</td>
<td colspan="2" class="text-right">
<c:choose>
	<c:when test="${dto.eval_score4==1 }">
		<input type="radio" name="eval_score4" value="1" checked="checked" disabled="disabled">1
		<input type="radio" name="eval_score4" value="2" disabled>2
		<input type="radio" name="eval_score4" value="3" disabled>3
		<input type="radio" name="eval_score4" value="4" disabled>4
		<input type="radio" name="eval_score4" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score4==2 }">
		<input type="radio" name="eval_score4" value="1" disabled>1
		<input type="radio" name="eval_score4" value="2" checked="checked" disabled="disabled">2
		<input type="radio" name="eval_score4" value="3" disabled>3
		<input type="radio" name="eval_score4" value="4" disabled>4
		<input type="radio" name="eval_score4" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score4==3 }">
		<input type="radio" name="eval_score4" value="1" disabled>1
		<input type="radio" name="eval_score4" value="2" disabled>2
		<input type="radio" name="eval_score4" value="3" checked="checked" disabled="disabled">3
		<input type="radio" name="eval_score4" value="4" disabled>4
		<input type="radio" name="eval_score4" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score4==4 }">
		<input type="radio" name="eval_score4" value="1" disabled>1
		<input type="radio" name="eval_score4" value="2" disabled>2
		<input type="radio" name="eval_score4" value="3" disabled>3
		<input type="radio" name="eval_score4" value="4" checked="checked" disabled="disabled">4
		<input type="radio" name="eval_score4" value="5" disabled>5
	</c:when>
	
	<c:when test="${dto.eval_score4==5 }">
		<input type="radio" name="eval_score4" value="1" disabled>1
		<input type="radio" name="eval_score4" value="2" disabled>2
		<input type="radio" name="eval_score4" value="3" disabled>3
		<input type="radio" name="eval_score4" value="4" disabled>4
		<input type="radio" name="eval_score4" value="5" checked="checked" disabled="disabled">5
	</c:when>
</c:choose>
</td>
</tr>
<tr>
<td colspan="2">교수가 모든 학생들에게 동등하게 대했다.</td>
<td colspan="2" class="text-right">
<c:choose>
	<c:when test="${dto.eval_score5==1 }">
		<input type="radio" name="eval_score5" value="1" checked="checked" disabled="disabled">1
		<input type="radio" name="eval_score5" value="2" disabled>2
		<input type="radio" name="eval_score5" value="3" disabled>3
		<input type="radio" name="eval_score5" value="4" disabled>4
		<input type="radio" name="eval_score5" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score5==2 }">
		<input type="radio" name="eval_score5" value="1" disabled>1
		<input type="radio" name="eval_score5" value="2" checked="checked" disabled="disabled">2
		<input type="radio" name="eval_score5" value="3" disabled>3
		<input type="radio" name="eval_score5" value="4" disabled>4
		<input type="radio" name="eval_score5" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score5==3 }">
		<input type="radio" name="eval_score5" value="1" disabled>1
		<input type="radio" name="eval_score5" value="2" disabled>2
		<input type="radio" name="eval_score5" value="3" checked="checked" disabled="disabled">3
		<input type="radio" name="eval_score5" value="4" disabled>4
		<input type="radio" name="eval_score5" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score5==4 }">
		<input type="radio" name="eval_score5" value="1" disabled>1
		<input type="radio" name="eval_score5" value="2" disabled>2
		<input type="radio" name="eval_score5" value="3" disabled>3
		<input type="radio" name="eval_score5" value="4" checked="checked" disabled="disabled">4
		<input type="radio" name="eval_score5" value="5" disabled>5
	</c:when>
	
	<c:when test="${dto.eval_score5==5 }">
		<input type="radio" name="eval_score5" value="1" disabled>1
		<input type="radio" name="eval_score5" value="2" disabled>2
		<input type="radio" name="eval_score5" value="3" disabled>3
		<input type="radio" name="eval_score5" value="4" disabled>4
		<input type="radio" name="eval_score5" value="5" checked="checked" disabled="disabled">5
	</c:when>
</c:choose>
</td>
</tr>
<tr>
<td colspan="2">다른 학생들에게 이 강의를 추천하고 싶다.</td>
<td colspan="2" class="text-right">
<c:choose>
	<c:when test="${dto.eval_score6==1 }">
		<input type="radio" name="eval_score6" value="1" checked="checked" disabled="disabled">1
		<input type="radio" name="eval_score6" value="2" disabled>2
		<input type="radio" name="eval_score6" value="3" disabled>3
		<input type="radio" name="eval_score6" value="4" disabled>4
		<input type="radio" name="eval_score6" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score6==2 }">
		<input type="radio" name="eval_score6" value="1" disabled>1
		<input type="radio" name="eval_score6" value="2" checked="checked" disabled="disabled">2
		<input type="radio" name="eval_score6" value="3" disabled>3
		<input type="radio" name="eval_score6" value="4" disabled>4
		<input type="radio" name="eval_score6" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score6==3 }">
		<input type="radio" name="eval_score6" value="1" disabled>1
		<input type="radio" name="eval_score6" value="2" disabled>2
		<input type="radio" name="eval_score6" value="3" checked="checked" disabled="disabled">3
		<input type="radio" name="eval_score6" value="4" disabled>4
		<input type="radio" name="eval_score6" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score6==4 }">
		<input type="radio" name="eval_score6" value="1" disabled>1
		<input type="radio" name="eval_score6" value="2" disabled>2
		<input type="radio" name="eval_score6" value="3" disabled>3
		<input type="radio" name="eval_score6" value="4" checked="checked" disabled="disabled">4
		<input type="radio" name="eval_score6" value="5" disabled>5
	</c:when>
	
	<c:when test="${dto.eval_score6==5 }">
		<input type="radio" name="eval_score6" value="1" disabled>1
		<input type="radio" name="eval_score6" value="2" disabled>2
		<input type="radio" name="eval_score6" value="3" disabled>3
		<input type="radio" name="eval_score6" value="4" disabled>4
		<input type="radio" name="eval_score6" value="5" checked="checked" disabled="disabled">5
	</c:when>
</c:choose>
</td>
</tr>
<tr>
<td colspan="2">해당강의가 내게 유익했다.</td>
<td colspan="2" class="text-right">
<c:choose>
	<c:when test="${dto.eval_score7==1 }">
		<input type="radio" name="eval_score7" value="1" checked="checked" disabled="disabled">1
		<input type="radio" name="eval_score7" value="2" disabled>2
		<input type="radio" name="eval_score7" value="3" disabled>3
		<input type="radio" name="eval_score7" value="4" disabled>4
		<input type="radio" name="eval_score7" value="5" disabled >5
	</c:when>
	<c:when test="${dto.eval_score7==2 }">
		<input type="radio" name="eval_score7" value="1" disabled>1
		<input type="radio" name="eval_score7" value="2" checked="checked" disabled="disabled">2
		<input type="radio" name="eval_score7" value="3" disabled>3
		<input type="radio" name="eval_score7" value="4" disabled>4
		<input type="radio" name="eval_score7" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score7==3 }">
		<input type="radio" name="eval_score7" value="1" disabled >1
		<input type="radio" name="eval_score7" value="2" disabled>2
		<input type="radio" name="eval_score7" value="3" checked="checked" disabled="disabled">3
		<input type="radio" name="eval_score7" value="4" disabled>4
		<input type="radio" name="eval_score7" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score7==4 }">
		<input type="radio" name="eval_score7" value="1" disabled>1
		<input type="radio" name="eval_score7" value="2" disabled>2
		<input type="radio" name="eval_score7" value="3" disabled>3
		<input type="radio" name="eval_score7" value="4" checked="checked" disabled="disabled">4
		<input type="radio" name="eval_score7" value="5" disabled>5
	</c:when>
	
	<c:when test="${dto.eval_score7==5 }">
		<input type="radio" name="eval_score7" value="1" disabled>1
		<input type="radio" name="eval_score7" value="2" disabled>2
		<input type="radio" name="eval_score7" value="3" disabled>3
		<input type="radio" name="eval_score7" value="4" disabled>4
		<input type="radio" name="eval_score7" value="5" checked="checked" disabled="disabled">5
	</c:when>
</c:choose>
</td>
</tr>
<tr>
<td colspan="2">학생들의 참여를 유도했다.</td>
<td colspan="2" class="text-right">
<c:choose>
	<c:when test="${dto.eval_score8==1 }">
		<input type="radio" name="eval_score8" value="1" checked="checked" disabled="disabled">1
		<input type="radio" name="eval_score8" value="2" disabled>2
		<input type="radio" name="eval_score8" value="3" disabled>3
		<input type="radio" name="eval_score8" value="4" disabled>4
		<input type="radio" name="eval_score8" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score8==2 }">
		<input type="radio" name="eval_score8" value="1" disabled>1
		<input type="radio" name="eval_score8" value="2" checked="checked" disabled="disabled">2
		<input type="radio" name="eval_score8" value="3" disabled>3
		<input type="radio" name="eval_score8" value="4" disabled>4
		<input type="radio" name="eval_score8" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score8==3 }">
		<input type="radio" name="eval_score8" value="1" disabled >1
		<input type="radio" name="eval_score8" value="2" disabled>2
		<input type="radio" name="eval_score8" value="3" checked="checked" disabled="disabled">3
		<input type="radio" name="eval_score8" value="4" disabled>4
		<input type="radio" name="eval_score8" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score8==4 }">
		<input type="radio" name="eval_score8" value="1" disabled>1
		<input type="radio" name="eval_score8" value="2" disabled>2
		<input type="radio" name="eval_score8" value="3" disabled>3
		<input type="radio" name="eval_score8" value="4" checked="checked" disabled="disabled">4
		<input type="radio" name="eval_score8" value="5" disabled>5
	</c:when>
	
	<c:when test="${dto.eval_score8==5 }">
		<input type="radio" name="eval_score8" value="1" disabled>1
		<input type="radio" name="eval_score8" value="2" disabled>2
		<input type="radio" name="eval_score8" value="3" disabled>3
		<input type="radio" name="eval_score8" value="4" disabled>4
		<input type="radio" name="eval_score8" value="5" checked="checked" disabled="disabled">5
	</c:when>
</c:choose>
</td>
</tr>
<tr>
<td colspan="2">강의 내용이 효과적으로 전달되었다.</td>
<td colspan="2" class="text-right">
<c:choose>
	<c:when test="${dto.eval_score9==1 }">
		<input type="radio" name="eval_score9" value="1" checked="checked" disabled="disabled">1
		<input type="radio" name="eval_score9" value="2" disabled>2
		<input type="radio" name="eval_score9" value="3" disabled>3
		<input type="radio" name="eval_score9" value="4" disabled>4
		<input type="radio" name="eval_score9" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score9==2 }">
		<input type="radio" name="eval_score9" value="1" disabled>1
		<input type="radio" name="eval_score9" value="2" checked="checked" disabled="disabled">2
		<input type="radio" name="eval_score9" value="3" disabled>3
		<input type="radio" name="eval_score9" value="4" disabled>4
		<input type="radio" name="eval_score9" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score9==3 }">
		<input type="radio" name="eval_score9" value="1" disabled>1
		<input type="radio" name="eval_score9" value="2" disabled>2
		<input type="radio" name="eval_score9" value="3" checked="checked" disabled="disabled">3
		<input type="radio" name="eval_score9" value="4" disabled>4
		<input type="radio" name="eval_score9" value="5" disabled>5
	</c:when>
	<c:when test="${dto.eval_score9==4 }">
		<input type="radio" name="eval_score9" value="1" disabled>1
		<input type="radio" name="eval_score9" value="2" disabled>2
		<input type="radio" name="eval_score9" value="3" disabled>3
		<input type="radio" name="eval_score9" value="4" checked="checked" disabled="disabled">4
		<input type="radio" name="eval_score9" value="5" disabled>5
	</c:when>
	
	<c:when test="${dto.eval_score9==5 }">
		<input type="radio" name="eval_score9" value="1" disabled>1
		<input type="radio" name="eval_score9" value="2" disabled>2
		<input type="radio" name="eval_score9" value="3" disabled>3
		<input type="radio" name="eval_score9" value="4" disabled>4
		<input type="radio" name="eval_score9" value="5" checked="checked" disabled="disabled">5
	</c:when>
</c:choose>
</td>
</tr>
<tr>
<td colspan="4">담당 교수에게 건의 사항 및 하고 싶은말</td>
</tr>
<tr>
<td colspan="4"><textarea rows="4" cols="50" name="suggestion" disabled="disabled" style="width:90%">${dto.suggestion }</textarea></td>
</tr>
<tr class="text-center">
<td colspan="4"><input type="button" value="이전화면" onclick="before()" class="btn btn-primary"></td>
</tr>
</table>
</div>
<script type="text/javascript">
 	function before() {
		window.history.back();		
	}
</script>
<%@ include file="../include/footer.jsp" %>
</body>
</html>