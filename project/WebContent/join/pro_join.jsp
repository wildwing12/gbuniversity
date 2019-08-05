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
	function proidcheck(){
		var proid=$("#proid").val();
		$.ajax({
			type:"post",
			url:"${path}/GBController2/proidcheck.do",
			data: {"proid":proid},
			success :function(result){
				if(result==1){
					alert("안됨 감자드삼");
					$("#proid").focus();
					return;
				}else if(proid==""){
					alert("KIN");
					$("#proid").focus();
					return;
				}else if(result==0){
					alert("good");
					$("#passwd").focus();
					return;
				}else if(result==2){
					alert("디비오류얌");
					$("#proid").focus();
					return;
				}
			}
		});
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
		document.join_form.action="${path}/GBController/pro_join.do";
		document.join_form.submit();
		alert("회원가입되셨습니다.");
	}
	
</script>
</head>
<body style="background-color: #f2f2f2;">
<h2 class="text-center">회원 가입</h2>
<form id="join_form" name="join_form" method="post">
<div class="table-responsive">
  <table class="table" style="width: 70%; margin:0 auto;">
<tr>
<td>교번</td>
<td><input id="proid" name="proid">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="아이디 중복 체크" onclick="proidcheck()" class="btn btn-primary btn-sm"></td>
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" id="passwd" name="passwd"></td>
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
<td><input id="proname" name="proname"></td>
</tr>
<tr>
<td>나이</td>
<td><input id="age" name="age"></td>
</tr>
<tr>
<td>휴대전화번호</td>
<td><input id="hp" name="hp"></td>
</tr>
<tr>
<td>전공학과</td>
<td><input id="major" name="major"></td>
</tr>
<tr>
<td>주소1</td>
<td><input id="proaddress" name="proaddress"></td>
</tr>
<tr>
<td>주소2</td>
<td><input id="proaddress2" name="proaddress2"></td>
</tr>
<tr>
<td>이메일</td>
<td><input id="email" name="email"></td>
</tr>
<tr>
<td colspan="2" class="text-center"><input type="button" value="등록요청" onclick="nullcheck()" class="btn btn-primary"></td>
<tr>
</table>
</div>
</form>
</body>
</html>