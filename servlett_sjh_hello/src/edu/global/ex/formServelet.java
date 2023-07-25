package edu.global.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.ex.shape.Grade;

@WebServlet("/formEx")
public class formServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public formServelet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("HelloWorld");

        response.setContentType("text/html; charset=UTF-8");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("포스트방식입니다");

        
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        //체크박스는 복수선택이니까 배열로받아)
        String[] hobbys = request.getParameterValues("hobby");
        //라디오박스 받아내기
        String major = request.getParameter("major");
        //프로토콜받기
        String protocol = request.getParameter("protocol");
        
        //공유데이터 받아오기(web.xml에 있는거)
        String paramId =getServletContext().getInitParameter("id");
        String paramPw =getServletContext().getInitParameter("pw");
        
      

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter writer = response.getWriter();

        writer.println("<html>");
        writer.println("<head>");
        writer.println("</head>");
        writer.println("<body>");
        writer.println("<h1> 아이디:" +id +"</h1>");
        writer.println("<h1> 패스워드:" +pw +"</h1>");
        writer.println("<h1> 취미:" +Arrays.toString(hobbys) +"</h1>"); //배열 한번에 뿌리는 법
        writer.println("<h1> 전공:" +major +"</h1>");
        writer.println("<h1> 프로토콜:" +protocol +"</h1>");
        
        
        writer.println("<h1> 파라미터공유아이디:" +paramId +"</h1>");
        writer.println("<h1> 파라미터공유패스워드:" +paramPw +"</h1>");
        writer.println("</body>");
        writer.println("</html>");

        writer.close();
    }
}
