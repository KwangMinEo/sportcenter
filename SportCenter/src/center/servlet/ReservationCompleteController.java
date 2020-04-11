package center.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import center.main.CenterSQL1;


@WebServlet("/reservationcomplete.sport")
public class ReservationCompleteController extends HttpServlet {
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
		
		String r3, r4="";
		String center = request.getParameter("center");
		String Rname = request.getParameter("name");
		String Rdate = request.getParameter("datefilter");
		String Rstart=Rdate.substring(0, 8);
		String Rend =Rdate.substring(9, 17);
		String Rcontent = request.getParameter("Rcontent");
		String Rmoney = request.getParameter("pr");
		String[] Rtime = request.getParameterValues("time");
		if(Rtime.length>1) {
			String[] r1 = Rtime[0].split("~");
			String[] r2 = Rtime[Rtime.length-1].split("~");
			r3 = r1[0];
			r4 = r2[1];
		}else {
			String[] r1 = Rtime[0].split("~");
			r3 = r1[0];
			r4 = r1[1];
		}
		System.out.println(r3+", "+r4);
		System.out.println(Rname);
		System.out.println("시작: "+Rstart+r3);
		System.out.println("종료: "+Rend+r4);
		System.out.println("center: "+center);
		System.out.println("content: "+Rcontent);
		System.out.println("price: "+Rmoney);
		
		try {
		CenterSQL1 sql1 = new CenterSQL1();
		sql1.reservate(center, Rname, Rstart+r3, Rend+r4, Rcontent, Rmoney);
		}catch(Exception e) {System.out.println("예약페이지 에러 "+e);}
		
		System.out.println("예약에 성공했습니다.");
		RequestDispatcher dis = request.getRequestDispatcher("CenterMain.jsp");
		dis.forward(request, response);
	}

}
