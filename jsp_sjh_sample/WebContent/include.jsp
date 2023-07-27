<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 이거필수임 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> 인클루드를 합니다</h1> 
<jsp:include page="include01.jsp"/> <!-- 현재페이지에 포함시키는 것 -->
<h1> 인클루드가 되었습니다</h1>


<%
//내장객체
//out,request,response,session...등은 뉴객체생성안해도사용가능
out.print("서버이름"+request.getServerName());
out.print("포트번호"+request.getServerPort());
out.print("겟방식포스트방식"+request.getMethod()+"<br>");

out.print("컨택스트 패스"+request.getContextPath()+"<br>"); //프로젝트경로
out.print("URL패스 "+request.getRequestURL()+"<br>"); //url절대주소
out.print("URI패스"+request.getRequestURI()+"<br>"); //식별주소(톰캣이 구분할 때 쓰는)

%>


<%-- <h1>인클루드를 시킵니다.</h1>
<%@ include file ="include01.jsp" %>
<h1>인클루드가 되었습닏.</h1> --%>

</body>
</html>