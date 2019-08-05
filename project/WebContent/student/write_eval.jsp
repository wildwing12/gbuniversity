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
<%@ include file="../include/stdmenu.jsp" %>
</head>
<body style="background-color: #f2f2f2;">
<h2 class="text-center">강의 평가</h2>
<form method="post" name="evalSend" onsubmit="return false;">
<div class="table-responsive">
<table class="table" style="width: 70%; margin:0 auto;">
<tr class="text-center">
<td style="width:25%" class="text-center bg-primary text-white ">교수명</td>
<td style="width:25%" >${dto.proname}</td>
<td style="width:25%" class="text-center bg-primary text-white ">과목명</td>
<td style="width:25%" >${dto.subname }</td>
</tr>
<tr>
<td colspan="4" class="text-center bg-danger text-white ">강의 내용 평가</td>
</tr>
<tr>
<td colspan="2" >강의 계획서에 따라 강의를 진행했다.</td>
<td colspan="2" class="text-right">
<input type="radio" name="eval_score1" value="1">1
<input type="radio" name="eval_score1" value="2">2
<input type="radio" name="eval_score1" value="3">3
<input type="radio" name="eval_score1" value="4">4
<input type="radio" name="eval_score1" value="5">5
</td>
</tr>
<tr>
<td colspan="2">강의 자료가 적절했다.</td>
<td colspan="2" class="text-right">
<input type="radio" name="eval_score2" value="1">1
<input type="radio" name="eval_score2" value="2">2
<input type="radio" name="eval_score2" value="3">3
<input type="radio" name="eval_score2" value="4">4
<input type="radio" name="eval_score2" value="5">5
</td>
</tr>
<tr>
<td colspan="2" style="width:80">시험 및 과제,성적평가 기준이 적절하고 공정했다.</td>
<td colspan="2" class="text-right">
<input type="radio" name="eval_score3" value="1">1
<input type="radio" name="eval_score3" value="2">2
<input type="radio" name="eval_score3" value="3">3
<input type="radio" name="eval_score3" value="4">4
<input type="radio" name="eval_score3" value="5">5
</td>
</tr>
<tr>
<td colspan="2" >교수가 열의를 가지고 강의했다.</td>
<td colspan="2" class="text-right">
<input type="radio" name="eval_score4" value="1">1
<input type="radio" name="eval_score4" value="2">2
<input type="radio" name="eval_score4" value="3">3
<input type="radio" name="eval_score4" value="4">4
<input type="radio" name="eval_score4" value="5">5
</td>
</tr>
<tr>
<td colspan="2" >교수가 모든 학생들에게 동등하게 대했다.</td>
<td colspan="2" class="text-right">
<input type="radio" name="eval_score5" value="1">1
<input type="radio" name="eval_score5" value="2">2
<input type="radio" name="eval_score5" value="3">3
<input type="radio" name="eval_score5" value="4">4
<input type="radio" name="eval_score5" value="5">5
</td>
</tr>
<tr>
<td colspan="2" >다른 학생들에게 이 강의를 추천하고 싶다.</td>
<td colspan="2" class="text-right">
<input type="radio" name="eval_score6" value="1">1
<input type="radio" name="eval_score6" value="2">2
<input type="radio" name="eval_score6" value="3">3
<input type="radio" name="eval_score6" value="4">4
<input type="radio" name="eval_score6" value="5">5
</td>
</tr>
<tr>
<td colspan="2" style="width:80">해당강의가 내게 유익했다.</td>
<td colspan="2" class="text-right">
<input type="radio" name="eval_score7" value="1">1
<input type="radio" name="eval_score7" value="2">2
<input type="radio" name="eval_score7" value="3">3
<input type="radio" name="eval_score7" value="4">4
<input type="radio" name="eval_score7" value="5">5
</td>
</tr>
<tr>
<td colspan="2" >학생들의 참여를 유도했다.</td>
<td colspan="2" class="text-right">
<input type="radio" name="eval_score8" value="1">1
<input type="radio" name="eval_score8" value="2">2
<input type="radio" name="eval_score8" value="3">3
<input type="radio" name="eval_score8" value="4">4
<input type="radio" name="eval_score8" value="5">5
</td>
</tr>
<tr>
<td colspan="2" >강의 내용이 효과적으로 전달되었다.</td>
<td colspan="2" class="text-right">
<input type="radio" name="eval_score9" value="1">1
<input type="radio" name="eval_score9" value="2">2
<input type="radio" name="eval_score9" value="3">3
<input type="radio" name="eval_score9" value="4">4
<input type="radio" name="eval_score9" value="5">5
</td>
</tr>
<tr>
<td colspan="4" class="bg-danger text-white">담당 교수에게 건의 사항 및 하고 싶은말</td>
</tr>
<tr>
<td colspan="4"><textarea rows="4" cols="50" name="suggestion"style="width: 90%"></textarea>
	<input type="hidden" name="term">	
</td>
</tr>
<tr>
<td colspan="4" class="text-center"><input type="button" value="등록" onclick="insert()" class=" btn btn-primary"></td>
</tr>
</table>
</div>
<input type="hidden" name="cnum" value="${param.cnum}">
<input type="hidden" name="term" value="${param.term}">

</form>
<script type="text/javascript">
	function insert(){
		document.evalSend.action="${path}/CartController/insert_eval.do";
		document.evalSend.submit();
		alert("등록이 완료되었습니다.");
	}
</script>
<%@ include file="../include/footer.jsp" %>
</body>
</html>