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
	String str = request.getParameter("age");
	int age = Integer.valueOf(str);
%>
<h1><%=age %>미성년자입니다. 주류 판매 불가능</h1>

</body>
</html>