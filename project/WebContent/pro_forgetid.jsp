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
    	function forgot_id(){
    		var proname=$("#proname").val();
    		var email=$("#email").val();
    		$.ajax({
    			type:"post",
    			url:"${path}/GBController/proforgotid.do",
    			data: {"proname":proname, "email":email},
    			success :function(result){
    				if(result!=null){
					$("#result").html("결과 :<span class='text-primary'>"+result+"</span>");    					
    					
    				}
    			}
    		});
    	}
    </script>
  </head>
  <body class="text-center">
    <form class="form-signin" name="forgotid" method="post" data-ajax="false">
  <h1 class="h3 mb-3 font-weight-normal">GB 아이디 찾기(교직원)</h1>
  <label for="inputEmail" class="sr-only">이름</label>
  <input type="text" id="proname" name="proname" class="form-control" placeholder="이름을 입력하세요" required autofocus>
  <label for="inputPassword" class="sr-only">이메일</label>
  <input  id="email" name="email" class="form-control" placeholder="이메일을 입력하세요" required>
  <div class="checkbox mb-3">
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="button" onclick="forgot_id()">찾기</button>
  <div id="result"></div>
  <p class="mt-5 mb-3 text-muted">&copy; 2017-2019</p>
</form>
</body>
</html>