<%@page import="edu.global.ex.Circle"%>
<%@page import="java.util.Enumeration"%>
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
   session.setAttribute("id", "abcde"); //쿠키에는 스트링밖에 들어갈 수 없어
   session.setAttribute("tel", 12345);
   
   session.setAttribute("circle", new Circle(10));
   
 /*   out.println("************************ <br />");
   
   String sName;
   String sValue;
   
   Enumeration enumeration = session.getAttributeNames();
   
   while(enumeration.hasMoreElements()){
      sName = enumeration.nextElement().toString();
      sValue = session.getAttribute(sName).toString();
      out.println("sName : " + sName + "<br />");
      out.println("sValue : " + sValue + "<br />");
   }
 
   
   out.println("************************ <br />");
   
   String sessionID = session.getId();
   out.println("sessionID : " + sessionID + "<br />");
   int sessionInter =  session.getMaxInactiveInterval();
   out.println("sessionInter : " + sessionInter + "<br />");
   
   out.println("************************ <br />");
   
   session.removeAttribute("mySessionName");
   Enumeration enumeration1 = session.getAttributeNames();
   while(enumeration1.hasMoreElements()){
      sName = enumeration1.nextElement().toString();
      sValue = session.getAttribute(sName).toString();
      out.println("sName : " + sName + "<br />");
      out.println("sValue : " + sValue + "<br />");
   }
   
   out.println("************************ <br />");
   
   session.invalidate();//세션초기화
   if(request.isRequestedSessionIdValid()) {
      out.println("session valid");
   } else {
      out.println("session invalid");
   }
    */
   
%>

   <a href="sessionGet.jsp">섹션 확인</a>

</body>
</html>