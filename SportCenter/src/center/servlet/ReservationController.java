package center.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/reservation.sport")
public class ReservationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReservationController() {
        super();
    }

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
		String cen="";
		String center = request.getParameter("idx");
		if(center.equals("football")){
			cen="축구장";
		}
		else if(center.equals("basketball")) {
			cen="농구장";
		}
		else if(center.equals("baseball")) {
			cen="야구장";
		}
		else if(center.equals("swim")) {
			cen="수영장";
		}
		System.out.println("현제 페이지는 "+cen +"입니다.");
		request.setAttribute("cen", cen);
		RequestDispatcher dis = request.getRequestDispatcher("CenterReservationTable.jsp");
		dis.forward(request, response);
	}

}
