<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 이거필수임 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
      Cookie[] cookies = request.getCookies();
      
      if(cookies != null) {
         for(int i=0; i<cookies.length; i++) {
            if(cookies[i].getValue().equals("abcde")){  //쿠키명abcde찾아서 쿠키삭제함(로그아웃해야니까)
               cookies[i].setMaxAge(0); //쿠키없애
               response.addCookie(cookies[i]);
            }
         }
      }
      
      response.sendRedirect("login.html"); //다시 로그인 페이지로 돌아가
      //response.sendRedirect("cookietest.jsp");
   %>


</body>
</html>