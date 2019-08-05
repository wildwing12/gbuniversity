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
<script type="text/javascript">
	function pwcheck(){
		var passwd=$("#passwd").val();
		var passwdch=$("#passwdch").val();
		if(passwd!=passwdch){
			$("#pwcheck").html("비밀번호가 맞지 않습니다.");
			$("#passwdch").focus();
			return;			
		}else{
			$("#pwcheck").html("");
			$("#proname").focus();
			return;
		}
	}
	function nullcheck(){
		if($("#proid").val()==""){
			alert("교번을 입력하시오.");
			$("#proid").focus();
			return;
		}
		if($("#passwd").val()==""){
			alert("비밀번호를 입력하시오.");
			$("#passwd").focus();
			return;
		}
		if($("#passwdch").val()==""){
			alert("비밀번호 일치 여부를 확인하세요.");
			$("#passwdch").focus();
			return;
		}
		if($("#proname").val()==""){
			alert("이름을 입력하세요.");
			$("#proname").focus();
			return;
		}
		if($("#age").val()==""){
			alert("나이를  입력하시오.");
			$("#age").focus();
			return;
		}
		if($("#hp").val()==""){
			alert("휴대전화 번호를 입력하세요.");
			$("#hp").focus();
			return;
		}
		if($("#major").val()==""){
			alert("전공을 입력하세요.");
			$("#major").focus();
			return;
		}
		if($("#proaddress").val()==""){
			alert("주소를 입력하세요.");
			$("#proaddress").focus();
			return;
		}
		if($("#email").val()==""){
			alert("이메일을 입력하세요.");
			$("#email").focus();
			return;
		}
		document.join_form.action="${path}/GBController2/proUpdate.do";
		document.join_form.submit();
		alert("정보가 수정되었습니다.");
	}
	
</script>
</head>
<body style="background-color: #f2f2f2;">
<%@ include file="../include/promenu.jsp" %>
<h2 class="text-center" >정보 수정</h2>
<form id="join_form" name="join_form" method="post">
<div class="table-responsive">
<table class="table" style="width: 50%; margin:0 auto;">
<tr>
<td>교번</td>
<td><input id="proid" name="proid" value="${dto.proid}" readonly="readonly"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" id="passwd" name="passwd" value="${dto.passwd}"></td>
</tr>
<tr>
<td>비밀번호 확인</td>
<td><input type="password" id="passwdch" name="passwdch" onkeyup="pwcheck()" ></td>
</tr>
<tr>
<td colspan="2" ><div id="pwcheck"></div></td>
</tr>
<tr>
<td>이름</td>
<td><input id="proname" name="proname" value="${dto.proname}"></td>
</tr>
<tr>
<td>나이</td>
<td><input id="age" name="age" value="${dto.age}"></td>
</tr>
<tr>
<td>휴대전화번호</td>
<td><input id="hp" name="hp" value="${dto.hp}"></td>
</tr>
<tr>
<td>전공학과</td>
<td><input id="major" name="major" value="${dto.major}"></td>
</tr>
<tr>
<td>주소1</td>
<td><input id="proaddress" name="proaddress" value="${dto.proaddress}"></td>
</tr>
<tr>
<td>주소2</td>
<td><input id="proaddress2" name="proaddress2" value="${dto.proid}"></td>
</tr>
<tr>
<td>이메일</td>
<td><input id="email" name="email" value="${dto.email}"></td>
</tr>
<tr class="text-center">
<td colspan="2"><input type="button" value="등록요청" onclick="nullcheck()" class="btn btn-primary"></td>
<tr>
</table>
</div>
</form>
<%@ include file="../include/footer.jsp" %>
</body>
</html>