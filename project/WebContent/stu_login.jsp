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
    <script type="text/javascript">
    	function login_check(){
    		document.login.action="${path}/GBController/std_login.do";
    		document.login.submit();
    	}
    </script>
    <c:if test="${param.message == 'error' }">
    	<script type="text/javascript">
    		alert("아이디 혹은 비밀번호를 확인하세요");
    	</script>
    </c:if>
  </head>
  <body class="text-center">
    <form class="form-signin" name="login" method="post">
  <img class="mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
  <h1 class="h3 mb-3 font-weight-normal">GB 학사 정보(학생)<br>로그인</h1>
  <label for="inputEmail" class="sr-only">학번</label>
  <input type="text" id="stdid" name="stdid" class="form-control" placeholder="학번을 입력하세요" required autofocus>
  <label for="inputPassword" class="sr-only">비밀번호</label>
  <input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호를 입력하세요" required>
  <div class="checkbox mb-3">
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="button" onclick="login_check()">로그인</button>
  <a href="join/std_join.jsp">학생등록</a><br>
  <a href="forgotId.jsp">아이디</a>/<a href="forgotPasswd.jsp" >비밀번호</a>&nbsp;<span class="text-primary">찾기</span>
  <p class="mt-5 mb-3 text-muted">&copy; 2017-2019</p>
</form>
</body>
</html>