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
		document.form1.action="${path}/NoticeController/update_notice.do";
		document.form1.submit();
	});
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			document.form1.action="${path}/NoticeController/delete.do";
			document.form1.submit();
			alert("삭제되었습니다.");
		}
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
    		position: relative;
    		left: 0;
    		bottom: 0;
    		width:100%;
    	} 
</style>
</head>
<body>
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
<form name="form1" method="post" enctype="multipart/form-data">
<table  style="margin:0 auto; width:70%;" class="table table-bordered" >
	<tr>
		<td class="table-dark">날짜</td>
		<td><fmt:formatDate value="${dto.reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		<td class="table-dark">조회수</td>
		<td>${dto.readcount}</td>
	</tr>
	<tr>
		<td class="table-dark">이름</td>
		<td colspan="3" class="text-left"><input name="writer" value="${dto.writer}" readonly></td>
	</tr>
	<tr>
		<td class="table-dark">제목</td>
		<td colspan="3" class="text-left"><input name="subject" value="${dto.subject}"></td>
	</tr>
	<tr>
		<td class="table-dark">본문</td>
		<td colspan="3" class="text-left">
			<textarea rows="5" cols="50" name="content">${dto.content}</textarea>
		</td>
	</tr>
	<tr>
		<td class="table-dark">첨부파일</td>
		<td colspan="3">
			<c:if test="${dto.filesize != 0}">
				${dto.filename}( ${dto.filesize} bytes )
	<input type="checkbox" name="fileDel">첨부파일 삭제
			</c:if><br>
			<input type="file" name="file1" >
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center">
			<input type="hidden" name="num" value="${dto.num}">
			<input type="button" value="수정" id="btnEdit" class="btn btn-success btn-sm">
			<input type="button" value="삭제" id="btnDelete"class="btn btn-danger btn-sm">
			<!-- <input type="button" value="답변" id="btnReply"> -->
			<input type="button" class="btn btn-primary btn-sm" value="목록" id="btnList">
		</td>
	</tr>
</table>
</form>
</div>
<br><br><br>
<%@ include file="../include/footer.jsp" %>
</body>
</html>

	