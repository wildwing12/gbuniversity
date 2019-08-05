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
<title>Insert title here</title>
<%@ include file="include/header.jsp" %>
<script src="include/jquery-3.3.1.min.js"></script>
<link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/sign-in/">
<link href="css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
    <c:if test="${param.result==0 }">
    	<script type="text/javascript">
    		alert("일치하는 정보가 없습니다.");
    	</script>
    </c:if>
    <c:if test="${param.result==2 }">
    	<script type="text/javascript">
    		alert("오류가 발생했습니다.");
    	</script>
    </c:if>
    
  </head>
  <body class="text-center">
    <form class="form-signin" name="forgotpw" method="post" data-ajax="false">
  <img class="mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
  <h1 class="h3 mb-3 font-weight-normal">GB 비밀번호 찾기(학생)</h1>
  <label for="inputEmail" class="sr-only">아이디</label>
  <input type="text" id="stdid" name="stdid" class="form-control" placeholder="아이디를 입력하세요" required autofocus>
  <label for="inputPassword" class="sr-only">휴대전화번호</label>
  <input  id="hp" name="hp" class="form-control" placeholder="휴대전화번호를 입력하세요." required>
  <div class="checkbox mb-3">
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="button" onclick="forgot_passwd()">찾기</button>
  <div id="result"></div>
  <p class="mt-5 mb-3 text-muted">&copy; 2017-2019</p>
</form>
<script type="text/javascript">
function forgot_passwd() {
	document.forgotpw.action="${path}/GBController/forgotPw.do";
	document.forgotpw.submit();
}
</script>

</body>
</html>