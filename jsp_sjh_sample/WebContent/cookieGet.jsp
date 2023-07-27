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
	Cookie[] cookies = request.getCookies(); //배열로 꺼내와(아까저장한 쿠키 여기서리퀘스트로 호출돼)
	   for(int i=0; i<cookies.length; i++) {
		     // String str = cookies[i].getName();
		      //if(str.equals("cookieN")) {
		         out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br />");
		         out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br />");
		         out.println("=====================<br />");
		      //}
		   }
%>

	<a href="cookieDel.jsp">cookie 삭제</a> <!-- 쿠키지우는링크 -->

</body>
</html>