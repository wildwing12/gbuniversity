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
<link href="css/bootstrap.min.css" rel="stylesheet">
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
  </head>
  <body class="text-center">
    <form class="form-signin" name="forgotid" method="post" data-ajax="false">
  <img class="mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
  <h1 class="h3 mb-3 font-weight-normal">GB 아이디 찾기(학생)</h1>
  <label for="inputEmail" class="sr-only">이름</label>
  <input type="text" id="stdname" name="stdname" class="form-control" placeholder="이름을 입력하세요" required autofocus>
  <label for="inputPassword" class="sr-only">이메일</label>
  <input  id="stdemail" name="stdemail" class="form-control" placeholder="이메일을 입력하세요" required>
  <div class="checkbox mb-3">
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="button">찾기</button>
  <c:if test="${find==0}">
  <p id="searchId" class="text-danger">정보가 일치하지 않습니다.</p>
  </c:if>
  <c:if test="${find==1}">
  <p id="searchId" class="text-primary">당신의 아이디는 ${stdid}입니다.</p>
  </c:if>
  
  <p class="mt-5 mb-3 text-muted">&copy; 2017-2019</p>
</form>
</body>
</html>