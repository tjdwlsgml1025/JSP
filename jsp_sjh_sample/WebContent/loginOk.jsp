<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 이거필수임 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%!
      String id, pw;
   %>
   <%
      id = request.getParameter("id"); //폼태그에서 받아와서
      pw = request.getParameter("pw");
      
      if(id.equals("abcde") && pw.equals("12345")) { //쿠키 이렇게 설정
         Cookie cookie = new Cookie("id", id);
         cookie.setMaxAge(60); 			//60분까지 쿠키심음(그이후 로그아웃됨)
         response.addCookie(cookie);	//쿠키를 보냄
         response.sendRedirect("welcome.jsp"); //아디비번 맞으면 여기페이지로 이동
      } else {
         response.sendRedirect("login.html"); //abcd,1234가아니면 로그인페이지로 돌아가게
      }
   %>


</body>
</html>