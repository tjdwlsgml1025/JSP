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
      Cookie[] cookies = request.getCookies(); //쿠키꺼내와(아이디,비번)
   
      for(int i=0; i<cookies.length; i++) {
         String id = cookies[i].getValue();
      
         if(id.equals("abcde")) //쿠키뒤져서 이 아이디가 있으면 밑에 출력
        	 out.println(id + "님 안녕하세요." + "<br />");
      }
   %>
   
   <a href="logout.jsp">로그아웃</a>

</body>
</html>