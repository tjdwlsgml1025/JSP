<%@page import="java.util.Arrays"%>
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
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String major = request.getParameter("major");
	String protocol = request.getParameter("protocol");
	
	String[] hobbys = request.getParameterValues("hobby");
	//체크박스는 배열로 받기!

	

%>
이름:<%=name %> 
아이디:<%=id %> 
비번:<%=pw %> 
전공:<%=major %> 
프로토콜:<%=protocol %> 

취미:<%=Arrays.toString(hobbys) %> 


<!-- form.html에서 받아와서 이 사이트에서 뿌림
 -->
</body>
</html>