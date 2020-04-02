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


@WebServlet("/gDelete.tis")
public class DeleteController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
	}//end

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
	}//end

	public void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�������� response.getWriter().append("Served at: ").append(request.getContextPath());
		//�������� ~.append(request.getContextPath());
		//<%@ page ~ contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
		
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter(); 
		
		GuestDTO dto = new GuestDTO();
		GuestSQL sql = new GuestSQL();
		

		
		String data = (String)request.getParameter("idx");
		sql.guestDelete(data);
		request.setAttribute("OK", data);
		//59���������� 
		RequestDispatcher dis=request.getRequestDispatcher("guestDelete.jsp");
		dis.forward(request, response);
		
		
	}//end
	
}//class END












