<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookie = new Cookie("name","kim"); //키-값형태로 쿠키값 저장
	cookie.setMaxAge(60*60); //쿠키 지속시간 설정
	
	response.addCookie(cookie); //쿠키를 클라이언트에 보내기(리퀘스트객체에저장)

%>

	<a href="cookieGet.jsp">cookie get</a>

</body>
</html>