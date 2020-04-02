package center.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tis.guest.GuestDTO;
import net.tis.guest.GuestSQL;


@WebServlet("/gpreedit.tis")
public class EditPreController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
	}//end

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
	}//end

	public void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter(); 
	
		//EditPreController.java��Ʈ�ѹ���
		String data = request.getParameter("idx");
		GuestSQL sql = new GuestSQL( );
		GuestDTO dto = sql.guestDetail(data);
		
		request.setAttribute("dto", dto);
		RequestDispatcher dis=request.getRequestDispatcher("guestEdit.jsp"); 
		dis.forward(request, response);
	}//end
	
}//class END













