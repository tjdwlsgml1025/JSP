<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String str = request.getParameter("age");
	int age = Integer.valueOf(str); //나이 스트링으로 받았으니까 정수로 변환
	
	if(age>=20){ //넘어온 값에 대해 분배를 시킴
		response.sendRedirect("pass.jsp?age="+age); //이jsp파일의 내용을 수행함
		//클이언트로 하여금 다시 요청한 페이지로 접속하게끔 함
		//redirect를 쓰게 되면 request객체는 다시 생성되어 쓰지 못함
		//대신 forward는 이 리퀘스트 객체를 그대로 쓸 수 있다
	}else{
		response.sendRedirect("ng.jsp?age="+age);
	}

%>

</body>
</html>
