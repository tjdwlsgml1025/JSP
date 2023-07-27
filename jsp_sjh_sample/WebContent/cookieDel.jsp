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
Cookie[] cookies = request.getCookies();
for(int i=0; i<cookies.length; i++) {
   String str = cookies[i].getName();
   if(str.equals("name")) {
      out.println("name : " + cookies[i].getName() + "<br />");
      cookies[i].setMaxAge(0);//쿠키안에 있는거 다지우고(유효시간을 0으로 만듦)
      response.addCookie(cookies[i]); //쿠키를 다시 보낸다
   }
}
%>

	<a href="cookieGet.jsp">cookie get</a> <!-- 다시 Get으로 -->

</body>
</html>