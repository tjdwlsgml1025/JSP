<%@ page import="edu.global.ex.Circle" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  //빈=데이터멤버에 대한 getter,setter&디폴트생성자 반드시 포함 --> 

<jsp:useBean id="circle" class="edu.global.ex.Circle" />

<jsp:setProperty name="circle" property="radius" value="5" /> 
면적:<jsp:getProperty name="circle" property="area" /> 
<!-- //get,set함수에서 앞의 get,set빼고 소문자로 바꿔서 프로퍼티에 넣음돼
 -->

<%-- 원의 넓이를 계산하여 변수 area에 저장 --%>
<% double area = circle.getArea(); %>

원넓이: <%= area %>

</body>
</html>
