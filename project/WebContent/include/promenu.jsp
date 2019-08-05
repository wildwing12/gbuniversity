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
  <a class="navbar-brand" href="${path}/GBController2/main.do">GB대학</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${path}/GBController2/main.do">처음으로</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/notice/noticemain.jsp">공지 사항</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/ScheduleController/scheduleList.do">학사일정</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/Subject/sublist.do">과목등록</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/CartController/check_eval.do">강의평가 조회</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/ScoreController/input_score.do">성적입력</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${path}/GBController2/pro_info.do">개인정보수정</a>
      </li>
    </ul>
      <div> 
     	 <span class="text-white">${sessionScope.proname}님 환영합니다.</span>
		 <a  class="btn btn-success" href="#" onclick="logout()">로그아웃</a>
      </div>
  </div>
</nav>  
<script type="text/javascript">
		function logout(){
			if(confirm("로그아웃 하시겠습니까?")){
				location.href="${path}/GBController2/proLogout.do";
				alert("로그아웃 되었습니다.");
			}
		}
	</script>  
<%-- <nav>
	<a href="${path}/professor/main.jsp">처음으로</a>
	<a href="${path}/notice/noticemain.jsp">공지 사항</a>
	<a href="${path}/ScheduleController/scheduleList.do">학사일정</a>
	<a href="${path}/Subject/sublist.do">과목등록</a><!--수강신청 영향  -->
	<a href="${path}/CartController/check_eval.do">강의평가 조회</a>
	<a href="${path}/ScoreController/input_score.do">성적입력</a>
	<a href="${path}/GBController2/pro_info.do">개인정보수정</a>
	<span>${sessionScope.proname}님 환영합니다.</span>
	<a href="#" onclick="logout()">로그아웃</a>
	
</nav> --%>