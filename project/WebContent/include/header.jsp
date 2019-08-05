<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
1)JSTL(jsp standard tag library, JSP표준 태그 라이브러리 
2)JSTL을 사용하는 이유 model1은 JSP페이지 중심, Model2는 java 코드(서블릿, 모델 중심)중심
jsp웹 페이지에서 java코드를 안쓸수는 없지만 이를 최소하기 위해 JSTL,EL기법을 씀
jsp 내부의 복잡한 자바코드를 대체하기 위한 태그
3)tagllib prefix="태그 접두어"uri="태그라이브러리 식별자" 
4)core tag(핵심태그, 제일 주로 사용하는 태그들)=>태그 접두어 접근
예)prefix="c";
-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- set var="변수명" value="값" -->
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>