package edu.global.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.ex.shape.Rectangle;

@WebServlet("/rectangleServelet") 
public class RectangleServelet extends HttpServlet { 
	private static final long serialVersionUID = 1L;


	public RectangleServelet() {
		super();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("HelloWorld");

		response.setContentType("text/html; charset=UTF-8"); // 폰트깨지니까 타입지정

		PrintWriter writer = response.getWriter(); // response객체안에있는 걸로, 빨대 꽂음

	}

	////////////////////////////////////////////////////////////////
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		  System.out.println("포스트방식입니다");

		
		  //리퀘스트에 있는 것들 호출하기
		  String width = request.getParameter("width");
		  String height = request.getParameter("height");
		 
		  //새로객체생성해서 파라미터들넣기
		  Rectangle rectangle = new Rectangle(Double.valueOf(width), Double.valueOf(height));
		  

		  System.out.println("넓이:"+rectangle.getArea());
	
		  
	    response.setContentType("text/html; charset=UTF-8");

		
		PrintWriter writer = response.getWriter(); // response객체안에있는 걸로, 빨대 꽂음

		writer.println("<html>"); // 웹브라우저에 빨대꽂았으니 거기서 출력됨
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1> 넓이는:"+rectangle.getArea()+ "</h1>");//문자열+숫자니까 문자열로 알아서 형변환됨
		writer.println("</body>");
		writer.println("</html>");

		writer.close();

	}


	private String getArea() {
		// TODO Auto-generated method stub
		return null;
	}

}
