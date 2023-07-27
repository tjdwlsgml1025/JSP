<%@page import="edu.global.ex.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>student.jsp입니다</h1>

<jsp:useBean id="student2" class="edu.global.ex.Student"/> <!-- jsp를 이용해서 객체생성하는 법 -->

<jsp:setProperty name="student2" property="name" value="홍길순"/><!-- //setter함수를 이렇게 -->
<jsp:setProperty name="student2" property="age" value="9"/>
<jsp:setProperty name="student2" property="grade" value="5"/>

이름:<jsp:getProperty name="student2" property="name" />
나이:<jsp:getProperty name="student2" property="age" />
학년:<jsp:getProperty name="student2" property="grade" />

<hr>

<% //일반 객체 생성 방법
	Student student = new Student("홍길동",10,6);
%>
이름:<%=student.getName() %> <br>
나이:<%=student.getAge() %> <br>
학년:<%=student.getGrade() %> <br>


</body>
</html>