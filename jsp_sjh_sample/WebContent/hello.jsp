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
//	int i=0;
//	System.out.println("아 죽겠당!!"+i); //자바문법이니 콘솔창에뜸
//	out.print(i + "<br>"); //서버에 뜸
%>

<%
   int i = 0;
   while(true){
      i++;
      out.println("2 * " + i + " = " + (2 * i)  + "<br />");
%>
   =========<br />
<%
      if(i >= 9) break;
   }
%>

<!-- 자바스크립트문법은 스크립트 내부에 넣어야해 -->
<script type="text/javascript">
document.write("1234") 
</script>


</body>
</html>