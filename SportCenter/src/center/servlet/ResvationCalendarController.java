package center.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import center.main.CenterDTO1;
import center.main.CenterSQL1;

@WebServlet("/Calendar.center")
public class ResvationCalendarController extends HttpServlet {
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
		ArrayList<CenterDTO1> dto = new ArrayList<CenterDTO1>();
		CenterSQL1 sql = new CenterSQL1();
		request.setAttribute("dto", dto);
		RequestDispatcher dis = request.getRequestDispatcher("CenterReservationCalendar.jsp");
		dis.forward(request, response);
	}
}
