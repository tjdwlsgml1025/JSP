<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! //jsp문법은 클래스 안만들고 자바스크립트처럼 쭉 적으면됨

//<%! = 선언: 초기화할거 모아
int i =10;
String str ="ABCD";

//함수선언 모아둠
	public int sum(int a, int b){
	return a+b;
}
%>


<% //모아둔 변수 써먹겠다
	out.println("i=" + i + "<br/>");
	out.println("str=" + str + "<br/>");
	out.println("sum=" + sum(1,5) + "<br/>");
%>


<!-- //모아둔 변수 출력, 이렇게 해도 출력됨  ( '=' > 익스프레션 ) -->
<%= i %> <br>
<%= str %><br>
<%= sum(1,5)%><br>

</body>
</html>