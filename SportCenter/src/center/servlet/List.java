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

@WebServlet("/list.center")
public class List extends HttpServlet {
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
		String data=request.getParameter("idx");
		CenterSQL1 sql = new CenterSQL1();
		ArrayList<CenterDTO1> LI = sql.showlist(data);

		for(int i=0;i<LI.size();i++) {
			CenterDTO1 dto = LI.get(i);
			System.out.println(dto.getId());
			System.out.println(dto.getTitle());
			System.out.println(dto.getLrn());
			System.out.println(dto.getSday());
		}
		request.setAttribute("LI", LI);
		RequestDispatcher dis = request.getRequestDispatcher("CenterList.jsp");
		dis.forward(request, response);
	}

}
