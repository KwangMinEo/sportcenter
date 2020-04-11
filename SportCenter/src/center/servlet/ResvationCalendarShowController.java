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

@WebServlet("/calendarshow.center")
public class ResvationCalendarShowController extends HttpServlet {
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
		String center = request.getParameter("idx");
		
		String Rid, Rname, Rrn, Rstart, Rend="";
		int Rcon, Syear, Smonth, Sday, Eyear, Emonth, Eday=0;
		
		try {
			CenterDTO1 dto = new CenterDTO1();
			CenterSQL1 sql = new CenterSQL1();
			ArrayList<CenterDTO1> CAL = sql.ShowCal(center);
//			ArrayList<CenterDTO1> CALstart = sql.getStartdata();
//			ArrayList<CenterDTO1> CALend =sql.getEnddata();

		request.setAttribute("CAL",CAL );
//		request.setAttribute("CALstart", CALstart);
//		request.setAttribute("CALend", CALend);
		System.out.println("문제 없이 성공");
		}catch(Exception e) {System.out.println("뭔가 잘못됨"+e);}
		request.setAttribute("cen", center);
		RequestDispatcher dis = request.getRequestDispatcher("CenterReservationCalendar.jsp");
		dis.forward(request, response);
		}
	}

