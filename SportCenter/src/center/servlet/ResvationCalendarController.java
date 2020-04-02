package center.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import center.main.CenterDTO1;
import center.main.CenterSQL1;
import javafx.print.Printer;

@WebServlet("/calendar.center")
public class ResvationCalendarController/*(복사용)*/ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
	}
	protected void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		try {
			CenterDTO1 dto = new CenterDTO1();
			CenterSQL1 sql = new CenterSQL1();
			
			
		}catch(Exception e) {System.out.println("달력데이터 표시 에러 "+e);}
		
		
		
	}

}
