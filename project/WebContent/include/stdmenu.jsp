<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   body {
 		padding-top: 5rem;
	
	.starter-template {
 			 padding: 3rem 1.5rem;
 			 text-align: center;
		}
    </style>
    <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-top">
  <a class="navbar-brand" href="${path}/GBController/main.do">GB대학</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${path}/GBController/main.do">처음으로</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/notice/noticemain.jsp">공지 사항</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/GBController/scheduleCheck.do">학사일정</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/GBController/std_register.do">수강신청</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/CartController/cartList.do">강의 평가</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/ScoreController/check_grade.do">성적확인</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/GBController/std_info.do">개인정보수정</a>
      </li>
    </ul>
      <div> 
     	 <span class="text-white">${sessionScope.name}님 환영합니다.&lt;${sessionScope.planlist.plan}&gt;</span>
		 <a  class="btn btn-success" href="#" onclick="logout()">로그아웃</a>
      </div>
  </div>
</nav>
<%--  <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<a href="${path}/student/std_main.jsp">처음으로</a>
	<a href="${path}/notice/noticemain.jsp">공지 사항</a>
	<a href="${path}/GBController/scheduleCheck.do">학사일정</a>
	<a href="${path}/GBController/std_register.do">수강신청</a>
	<a href="${path}/CartController/cartList.do">강의 평가</a>
	<a href="${path}/ScoreController/check_grade.do">성적확인</a>
	<a href="${path}/GBController/std_info.do">개인정보수정</a>
	<span>${sessionScope.name}님 환영합니다.</span>
	<a href="#" onclick="logout()">로그아웃</a>
</nav> --%>
	<script type="text/javascript">
		function logout(){
			if(confirm("로그아웃 하시겠습니까?")){
				location.href="${path}/GBController/stdLogout.do";
				alert("로그아웃 되었습니다.");
			}
		}
	</script>