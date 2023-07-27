<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String korStr = request.getParameter("kor"); //처음엔 무조건 스ㅡ링으로 받기
	String engStr = request.getParameter("eng");
	String matStr = request.getParameter("mat");
		
	// 문자열로 받은 점수를 숫자로 변환
	int kor = Integer.parseInt(korStr);
	int eng = Integer.parseInt(engStr);
	int mat = Integer.parseInt(matStr);
	
	double total = (kor + eng + mat);
	double avg = total / 3.0;
	
	char grade; // 등급 변수 선언
	
	if (avg >= 90) {
		grade = '수';
	} else if (avg >= 80) {
		grade = '우';
	} else {
		grade = '미';
	}
%>
총점:<%= total %> 
평균:<%= avg %> 
등급:<%= grade %> 
</body>
</html>
