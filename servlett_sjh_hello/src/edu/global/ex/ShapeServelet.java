package edu.global.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.ex.shape.Circle;
import edu.global.ex.shape.Rectangle;

/**
 * Servlet implementation class HelloWorld
 */
@WebServlet("/circleArea") 
public class ShapeServelet extends HttpServlet { 
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShapeServelet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	// (2)두번째 - get방식호출 =tomcat이 알아서 > 서버에 있는 모든 정보를 자바에서 사용하기 쉽도록 request객체로 바꿔줌
	// >받은 정보들을 response객체로 해서String형태로제출해줌
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("HelloWorld");

		response.setContentType("text/html; charset=UTF-8"); // 폰트깨지니까 타입지정

		PrintWriter writer = response.getWriter(); // response객체안에있는 걸로, 빨대 꽂음

		writer.println("<html>"); // 웹브라우저에 빨대꽂았으니 거기서 출력됨
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>메인입니다</h1>");
		writer.println("</body>");
		writer.println("</html>");

		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	// (3)세번째 - post방식호출 =tomcat이 알아서
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub		
		  System.out.println("포스트방식입니다");

		//post에서 입력받은 반지름값은 request에 저장돼있음. 그걸 호출하는게 아래
		//인터넷 선틀 타고 받는 거기 때문에 무조건 데이터타입은 String으로 받아야함
	
		
		//형변환 :원넓이구하기(형변환,String>double로=wrapper class)
		//double area = Double.valueOf(radius)*Double.valueOf(radius)*Math.PI; 
		
		
		String radius = request.getParameter("circle");  
		Circle circle = new Circle(Double.valueOf(radius));
		

		  
		System.out.println("반지름 :" + radius ); 
		
		
	    response.setContentType("text/html; charset=UTF-8");

		
		PrintWriter writer = response.getWriter(); // response객체안에있는 걸로, 빨대 꽂음

		writer.println("<html>"); // 웹브라우저에 빨대꽂았으니 거기서 출력됨
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1> 넓이는:"+radius+ "</h1>");//문자열+숫자니까 문자열로 알아서 형변환됨
		writer.println("</body>");
		writer.println("</html>");

		writer.close();

	}

}
