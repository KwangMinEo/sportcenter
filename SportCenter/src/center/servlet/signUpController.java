package center.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.DefaultFormatterFactory;

import center.main.CenterDTO2;
import center.main.CenterSQL2;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.MultipartParser;


@WebServlet("/signUp.tis")
public class signUpController extends HttpServlet {
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
	
//		파일업로드
//		ServletContext application = this.getServletContext();
//		DefaultFileRenamePolicy dfp = new DefaultFileRenamePolicy();
//		MultipartRequest mr = new MultipartRequest(request, "���", 1024, "UTF-8", dfp);
//		

		String Gid = request.getParameter("id");
		String Gpwd = request.getParameter("pwd");
		String Gname = request.getParameter("name");
		String Gphone = request.getParameter("phone");
		Date Gbdate = request.getParameter("bdate");
		int Ggender = Integer.parseInt(request.getParameter("gender"));
		String Gemail = request.getParameter("email");
		String Gloc = request.getParameter("loc");
		
		
		CenterDTO2 dto = new CenterDTO2();
		CenterSQL2 sql = new CenterSQL2();
		//��1��������=DBó��������=�����Ͻ�����=CRUDó����
		//dto�� setXXX(�Ű�����) => sql.guestInsert(dto)
		dto.setId(Gid);
		dto.setPwd(Gpwd);
		dto.setName(Gname);
		dto.setPhone(Gphone);
		dto.setBdate(Gbdate);
		dto.setGender(Ggender);
		dto.setEmail(Gemail);
		dto.setLoc(Gloc);
		int OK=sql.guestInsert(dto);
		if(OK>0) { 
			System.out.println("InsertController���� ���强��");
			response.sendRedirect("glist.tis");
		}
		out.println("<h2>");
		out.println("<a href='index.jsp'> [index.jsp] </a>");
		out.println("<a href='guestWrite.jsp'> [�űԵ��] </a>");
		out.println("<a href='glist.tis'> [guestList] </a>");
		out.println("</h2>");
	}//end
	
}//class END












