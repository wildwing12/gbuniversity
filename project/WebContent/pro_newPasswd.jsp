<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<meta http-equiv="content-script-type" content="text/javascript">
<title>Insert title here</title>
<%@ include file="include/header.jsp" %>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/sign-in/">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
    </style>
    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
    <c:if test="${result==1 }">
    	<script type="text/javascript">
     	alert("확인되었습니다.");
    	</script>
    </c:if>
  </head>
  <body class="text-center" style="background-color: #f2f2f2;">
    <form class="form-signin" name="changePw" method="post" data-ajax="false">
  <h1 class="h3 mb-3 font-weight-normal" style="margin-top: 200px;">GB 비밀번호 변경(교직원)</h1>
  <div align="center">
  <label for="inputEmail" class="sr-only">새 비밀번호</label>
  <input style="width:300px;"  type="password" id="passwd" name="passwd" class="form-control " placeholder="새 비밀번호를 입력하세요." required autofocus>
  <label for="inputPassword" class="sr-only">비밀번호 확인</label>
  <input style="width:300px;" type="password" id="chpw" name="chpw" class="form-control" placeholder="한번더 비밀번호를 입력하세요" data-ajax="false" onkeyup="ck_pw()" required >
  <div class="checkbox mb-3">
  </div>
  <input type="hidden" name="proid" value="${proid}">
  <button style="width:300px;" class="btn btn-lg btn-primary btn-block" type="button" onclick="new_passwd()">변경</button>
  <div id="result"></div>
  <p class="mt-5 mb-3 text-muted">&copy; 2017-2019</p>
  </div>
</form>
<script type="text/javascript">
function ck_pw(){
	if($("#passwd").val()!=$("#chpw").val()){
		$("#result").html("비밀번호가 일치하지 않습니다.");
		return false;
	}else {
		$("#result").html("");
		return false;
	}
	
}
function new_passwd() {
	if($("#passwd").val()!=$("#chpw").val()){
		alert("비밀번호 확인을 완료해주세요.");
		return;
	}
	document.changePw.action="${path}/GBController2/pro_newPw.do";
	document.changePw.submit();
	alert("비밀번호가 변경되었습니다.");
}
</script>

</body>
</html>