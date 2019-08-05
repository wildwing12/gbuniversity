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
$(function(){
	$("#btnSave").click(function(){
		document.form1.submit();
	});
});
</script>
<style>
    	footer{
    		position: absolute;
    		left: 0;
    		bottom: 0;
    		width:100%;
    	} 
</style>
</head>
<body>
<c:if test="${sessionScope.proid!=null }">
<%@ include file="../include/promenu.jsp" %>
</c:if>
<h2 class="text-center">글쓰기</h2>
<form name="form1" method="post" action="${path}/NoticeController/write.do" 
enctype="multipart/form-data">
<div class="table-responsive">
<table  style="margin:0 auto; width:60%;" class="table table-bordered" >
	<tr>
		<td class="table-dark">이름</td>
		<td><input name="writer" id="writer" value="${sessionScope.proname}" readonly></td>
	</tr>
	<tr>
		<td class="table-dark">제목</td>
		<td><input name="subject" id="subject" size="60"></td>
	</tr>
	<tr>
		<td class="table-dark">본문</td>
		<td><textarea rows="5" cols="60" name="content" id="content"></textarea></td>
	</tr>
	<tr>
		<td class="table-dark">첨부파일</td>
		<td><input type="file" name="file1"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="button" id="btnSave" value="확인" class="btn btn-primary btn-sm">
		</td>
	</tr>
</table>
</div>
</form>
<%@ include file="../include/footer.jsp" %>
</body>
</html>