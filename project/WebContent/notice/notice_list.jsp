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
<div class="table-responsive">
<table class="table" style="width: 70%; margin:0 auto;">
	<tr class="bg-danger text-white">
   		<th style="text-align:center; width:10%;">번호</th>
		<th style="text-align:center; width:30%;">제목</th>
		<th style="text-align:center; width:10%;">작성자</th>
		<th style="text-align:center; width:10%;">파일</th>
		<th style="text-align:center; width:10%;">조회수</th>
		<th style="text-align:center; width:30%;">날짜</th>
   </tr>
	<c:forEach var="list" items="${list}">
	<tr>
		<td style="color:#999; text-align:center;">${list.num}</td>
		<td>
			<a href="${path}/NoticeController/view.do?num=${list.num}">${list.subject}</a>
		</td>
		<td>${list.writer}</td>
		<td align="center">
			<c:if test="${list.filesize > 0}">
				<a href="${path}/NoticeController/download.do?num=${list.num}">
				<img src="../images/file.gif"></a>
			</c:if> 
		</td>
		<td style="text-align:center;">${list.readcount}</td>
		<td style="color:#999; text-align:center;">
			<fmt:formatDate value="${list.reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
		</td>
	</tr>	
	</c:forEach>
	<tr align="center" style="padding:5px;">
		<td colspan="6" style="font-size:16px; padding:10px;">
		<c:if test="${page.curPage>1}">
			<a href="#" onclick="list('1')">[처음]&nbsp;&nbsp;</a>
		</c:if>
		<c:if test="${page.curBlock>1}">
			<a href="#" onclick="list('${page.prevPage}')" 
				style="font-size:20px; font-weight:600;">≪&nbsp;&nbsp;</a>
		</c:if>
		<c:forEach var="number" begin="${page.blockStart}" end="${page.blockEnd}">
			<c:choose>
				<c:when test="${number==page.curPage}">
					<span style="color:#ff471a; font-weight:700;">${number}&nbsp;&nbsp;</span>
				</c:when>
				<c:otherwise>
					<a href="#" onclick="list('${number}')">${number}&nbsp;&nbsp;</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${page.curBlock < page.totBlock}">
			<a href="#" onclick="list('${page.nextPage}')" 
				style="font-size:20px; font-weight:600;">≫&nbsp;&nbsp;</a>
		</c:if>
		<c:if test="${page.curPage < page.totPage}">
			<a href="#" onclick="list('${page.totPage}')">[끝]</a>
		</c:if>
		</td>
	</tr>
</table>
</div>
</body>
</html>