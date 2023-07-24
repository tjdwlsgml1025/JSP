package edu.global.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.global.ex.shape.Grade;

@WebServlet("/gradeServelet")
public class GradeServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public GradeServelet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("HelloWorld");

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<head>");
        writer.println("</head>");
        writer.println("<body>");
        writer.println("<h1>점수를 입력해주세요.</h1>");
        writer.println("<form action=\"gradeServelet\" method=\"post\">");
        writer.println("국어: <input type=\"text\" name=\"kor\" value=\"80\"><br>");
        writer.println("수학: <input type=\"text\" name=\"eng\" value=\"90\"><br>");
        writer.println("영어: <input type=\"text\" name=\"math\" value=\"90\"><br>");
        writer.println("<input type=\"submit\" value=\"전송\">");
        writer.println("</form>");
        writer.println("</body>");
        writer.println("</html>");
        writer.close();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("포스트방식입니다");

        // 리퀘스트에 있는 것들 호출하기
        double kor = Double.parseDouble(request.getParameter("kor"));
        double eng = Double.parseDouble(request.getParameter("eng"));
        double math = Double.parseDouble(request.getParameter("math"));

        // 새로 객체 생성해서 파라미터들 넣기
        Grade grade = new Grade((int) kor, (int) eng, (int) math);

        grade.showPerimeter();

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter writer = response.getWriter();

        writer.println("<html>");
        writer.println("<head>");
        writer.println("</head>");
        writer.println("<body>");
        writer.println("<h1> 총점은: " + grade.getTotal() + "</h1>");
        writer.println("<h1> 평균은: " + grade.getAvg() + "</h1>");
        writer.println("<h1> 등급은: " + grade.getGrade() + "</h1>");
        writer.println("</body>");
        writer.println("</html>");

        writer.close();
    }
}
