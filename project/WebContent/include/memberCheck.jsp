<<%-- %@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String userid = (String)session.getAttribute("id");
if(userid==null) {
	String message="로그인 후 이용해 주세요.";
	message = URLEncoder.encode(message, "utf-8");
	response.sendRedirect("memberForm.jsp?message="+message);
}
%>
</body>
</html> --%>