package center.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/game.tis")
public class GameController extends HttpServlet {
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
		PrintWriter out = response.getWriter(); //out��ü������ ȭ�����
		out.println("<img src='images/a2.png' width=200 height=100 >");
		out.println("<img src='images/a2.png' width=200 height=100 >");
		out.println("<img src='images/a2.png' width=200 height=100 > <p>");
		
		out.println("<h2>");
		out.println("<a href='index.jsp'> [index.jsp] </a>");
		out.println("<a href='guestWrite.jsp'> [�űԵ��] </a>");
		out.println("<a href='aaa.jsp'> [aaa] </a>");
		out.println("</h2>");
	}//end
	
}//class END












