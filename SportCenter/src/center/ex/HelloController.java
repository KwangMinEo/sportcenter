package center.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns= {"/hello", "/hello1"})
@WebServlet(urlPatterns= {"/naver", "/daum"})
public class HelloController  extends  HttpServlet{
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
  	 request.setCharacterEncoding("utf-8");
  	 response.setContentType("text/html; charset=utf-8"); 
  	 PrintWriter out = response.getWriter();
  	 
  	 out.println("<html>");
  	 out.println("<head><title>�λ�</title></head>");
  	 out.println("<body>");
  	 out.println("<h1>HelloController.java���� doGet�޼ҵ�</h1>");
  	 out.println("<font color=blue><h1>�ȳ��ϼ��� ");
  	 out.println("ȫ�浿 </font></h1>");
  	 out.println("</body>");
  	 out.println("</html>");
   }//end
}//class END
