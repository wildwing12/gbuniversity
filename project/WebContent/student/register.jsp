<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GB수강신청</title>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/Session_check.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" >
<c:if test="${sessionScope.planlist.plan!='수강신청기간'}">
<script type="text/javascript">
	location.href="${path}/GBController/main.do";
	alert('수강신청 기간이 아닙니다.');
</script>
</c:if>
<c:if test="${param.message=='fail' }">
<script type="text/javascript">
	alert("이미 신청하셨습니다.");
</script>
</c:if>
<c:if test="${param.message=='success' }">
<script type="text/javascript">
	alert("신청되었습니다.");
</script>
</c:if>
</head>
<body style="background-color: #f2f2f2;">
<%@ include file="../include/stdmenu.jsp" %>
<br>
<h2 class="text-center">수강 신청</h2>
<br>
<div class="table-responsive">
<table class="table" style="width: 70%; margin:0 auto;">
<tr class="bg-primary text-white">
<td>과목코드</td>
<td>학기</td>
<td>전공</td>
<td>과목명</td>
<td>학점</td>
<td>과목분류</td>
<td>지도교수</td>
<td>&nbsp;</td>
</tr>
<c:forEach var="row" items="${list}">
<form method="post" name="register" action="${path}/GBController/insertRegister.do">
<tr>
<td><input type="hidden" name="subcode" value="${row.subcode }" >${row.subcode }</td>
<td><input type="hidden" name="term" value="${row.term}" >${row.term }</td>
<td><input type="hidden" name="major" value="${row.major }" >${row.major }</td>
<td><input type="hidden" name="subname" value="${row.subname }" >${row.subname }</td>
<td><input type="hidden" name="subnum" value="${row.subnum }" >${row.subnum }</td>
<td><input type="hidden" name="categories" value="${row.categories }" >${row.categories }</td>
<td><input type="hidden" name="proname" value="${row.proname }" >${row.proname }</td>
<td>
	<input type="submit" id="${row.subcode}"  value="신청" class="btn btn-primary">
</td>
</tr>
</form>
</c:forEach>
</table>
</div>
<br>
<h2 class="text-center">수강 신청 목록</h2>
<br>
<div class="table-responsive">
<table class="table" style="width: 70%; margin:0 auto;">
<tr class="bg-primary text-white">
<td>과목코드</td>
<td>학기</td>
<td>전공</td>
<td>과목명</td>
<td>학점</td>
<td>과목분류</td>
<td>지도교수</td>
<td>&nbsp;</td>
</tr>
<c:forEach var="row2" items="${list2}">

<tr>
<td><input type="hidden" name="subcode" value="${row2.subcode }" >${row2.subcode }</td>
<td><input type="hidden" name="term" value="${row2.term }" >${row2.term }</td>
<td><input type="hidden" name="major" value="${row2.major }" >${row2.major }</td>
<td><input type="hidden" name="subname" value="${row2.subname }" >${row2.subname }</td>
<td><%-- <input type="hidden" name="subnum" value="${row2.subnum }" > --%>${row2.subnum }</td>
<td><input type="hidden" name="categories" value="${row2.categories }" >${row2.categories }</td>
<td><input type="hidden" name="proname" value="${row2.proname }" >${row2.proname }
	<input type="hidden" name="cnum" value="${row2.cnum }" >
	</td>
<td><a href="#" class="btn btn-danger" onclick="if(confirm('삭제하시겠습니까?')){
	location.href='${path}/GBController/delete_sub.do?cnum=${row2.cnum}';
	alert('삭제되었습니다.');
}" >삭제</a></td>
</tr>
</c:forEach> 
</table>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="../include/footer.jsp" %>
</body>
</html>