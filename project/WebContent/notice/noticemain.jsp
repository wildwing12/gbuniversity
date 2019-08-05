<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="../include/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" >
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<style type="text/css">
td > a:hover { 
	text-decoration: none;
}
</style>
<script type="text/javascript">
$(function(){
	list('1');
	$("#btnSearch").click(function(){
		list('1');
	});
	$("#btnWrite").click(function(){
		location.href="${path}/notice/write.jsp";
	});
});
function list(page){
	var param = "searchkey="+$("#searchkey").val()+"&keyword="+$("#keyword").val();
	$.ajax({
		type: "post",
		url: "${path}/NoticeController/list.do?curPage="+page,
		data: param,
		success: function(result){
			$("#notice").html(result);
		}
	});
}
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
<body style="background-color: #f2f2f2;">
<c:if test="${sessionScope.stdid!=null }">
<%@ include file="../include/stdmenu.jsp" %>
</c:if>
<c:if test="${sessionScope.proid!=null }">
<%@ include file="../include/promenu.jsp" %>
</c:if>
<h2 class="text-center">공지사항</h2>
<div class="text-center">
<select id="searchkey">
	<option value="subject">제목</option>
	<option value="writer">작성자</option>
</select>
<input id="keyword" value="${keyword}">
<input type="button" id="btnSearch" value="조회" class="btn btn-success">
<c:if test="${sessionScope.proid!=null}">
	<button id="btnWrite" class="btn btn-primary">글쓰기</button>
</c:if>
</div>
<br>
<div id="notice" class="text-center"></div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>