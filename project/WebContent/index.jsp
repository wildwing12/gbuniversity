<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="include/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" >
<style type="text/css">
body{
background-color: #f2f2f2;
}
table {
	margin: 0 auto;
	width: 500px;
	margin-top: 50px;
	height:200px;
}
table td{
	width:50%;	
	font-size: 20px;
	vertical-align: middle;
}
td a {
	color :white;
	width: 100%;
	height:100%;
	
	
}
td a:hover{
	text-decoration: none;
	color :#d9d9d9;
}
/* #tdstd {
	background-color: #000080;
} */
/* #tdpro {
	background-color: #b30000;
} */
</style>
</head>
<body calss="text-center bg-info">
<div style="margin-top: 100px;">
<h1 class="text-center ">GB대학 종합 학사 정보 시스템</h1>
<table class="text-center">
	<tr>
		<td id="tdstd"><a href="stu_login.jsp" class="btn btn-primary" style="display:flex; align-items:center; padding-left: 75px;">
		<h2>학생<br> 로그인</h2></a></td>
		<td id="tdpro"class="text-center"><a href="pro_login.jsp" class="btn btn-danger btn-center"style="display:flex; align-items:center;padding-left: 75px;" ">
		<h2 >교직원<br> 로그인</h2></a></td>
	</tr>
</table>
</div>
</body>
</html>