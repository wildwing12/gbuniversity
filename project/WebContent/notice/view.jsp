<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" >
<script type="text/javascript">
$(function(){
	//comment_list();
	/* $("#btnSave").click(function(){
		comment_add();
	}); */
	$("#btnList").click(function(){
		location.href="${path}/notice/noticemain.jsp";
	});
	/* $("#btnReply").click(function(){
		document.form1.action="${path}/board_servlet/reply.do";
		document.form1.submit();
	}); */
	$("#btnEdit").click(function(){
		document.form1.action="${path}/NoticeController/update.do";
		document.form1.submit();
	});
	
});
/* function comment_add(){
	var param="board_num=${dto.num}&writer="+$("#writer").val()
	+"&content="+$("#content").val();
	$.ajax({
		type: "post",
		url: "${path}/board_servlet/comment_add.do",
		data: param,
		success: function(){
			$("#writer").val("");
			$("#content").val("");
			comment_list();
		}
	});
}

function comment_list(){
	$.ajax({
		type: "post",
		url: "${path}/board_servlet/commentList.do",
		data: "num=${dto.num}",
		success: function(result){
			$("#commentList").html(result);
		}
	});
} */
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
<br>
<h2 class="text-center">상세화면</h2>
<br>
<div class="table-responsive">
<form name="form1" method="post">
<table  style="margin:0 auto; width:70%;" class="table table-bordered" >
	<tr>
		<td class="table-dark">날짜</td>
		<td><fmt:formatDate value="${dto.reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		<td class="table-dark">조회수</td>
		<td>${dto.readcount}</td>
	</tr>
	<tr>
		<td class="table-dark">이름</td>
		<td colspan="3">${dto.writer}</td>
	</tr>
	<tr>
		<td class="table-dark">제목</td>
		<td colspan="3">${dto.subject}</td>
	</tr>
	<tr>
		<td class="table-dark">본문</td>
		<td colspan="3" class="text-left">${dto.content}</td>
	</tr>
	<tr>
		<td class="table-dark">첨부파일</td>
		<td colspan="3">
			<c:choose>
			<c:when test="${dto.filesize != 0}">
				${dto.filename}( ${dto.filesize} bytes )
	<a href="${path}/NoticeController/download.do?num=${dto.num}">
	[다운로드]</a>
			</c:when>
			<c:otherwise></c:otherwise>
			</c:choose>
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center">
			<input type="hidden" name="num" value="${dto.num}">
			<c:if test="${sessionScope.proname==dto.writer}">
			<input type="button" value="수정/삭제" id="btnEdit" class="btn btn-success btn-sm">
			</c:if>
			<!-- <input type="button" value="답변" id="btnReply"> -->
			<input type="button" class="btn btn-primary btn-sm" value="목록" id="btnList">
		</td>
	</tr>
</table>
</form>
</div>
<!-- 댓글 쓰기 폼 -->
<!-- <table width="700px">
 <tr>
  <td><input id="writer" placeholder="이름"></td>
  <td rowspan="2">
    <button id="btnSave" type="button">확인</button>
  </td>
 </tr>
 <tr>
   <td><textarea rows="5" cols="80" 
   placeholder="내용을 입력하세요" id="content"></textarea></td>
 </tr>
</table> -->

<!-- 댓글 목록을 출력할 영역 -->
<!--  <div id="commentList"></div> -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>

	