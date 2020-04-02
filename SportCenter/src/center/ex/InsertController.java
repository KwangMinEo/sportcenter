package center.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.DefaultFormatterFactory;

import net.tis.guest.GuestDTO;
import net.tis.guest.GuestSQL;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.MultipartParser;


@WebServlet("/ginsert.tis")
public class InsertController extends HttpServlet {
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
		
		out.println("<img src='images/a1.png' width=200 height=100 >");
		out.println("<img src='images/a1.png' width=200 height=100 >");
		out.println("<img src='images/a1.png' width=200 height=100 > <p>");
	
		//���Ͼ��ε�ٿ�ε� 532������ ���� MultiPartRequest ����Ʈ
		//���Ͼ��ε�ٿ�ε� 533������ 38����
		//guest���̺��� ���� ���Ͼ��ε�����ϱ� MultipertReqeust�ʿ����
		//10��ǽ� ���ο�������Ʈ �����ؼ� �ǽ�
		ServletContext application = this.getServletContext();
		DefaultFileRenamePolicy dfp = new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(request, "���", 1024, "UTF-8", dfp);
		
		//InsertController.java �ܵ������ϸ� �����߻� guestWrite.jsp�����ؼ� ���
		int Gsabun = Integer.parseInt(request.getParameter("sabun"));
		String Gname = request.getParameter("name");
		String Gtitle = request.getParameter("title");
		int Gpay = Integer.parseInt(request.getParameter("pay"));
		String Gemail = request.getParameter("email");
		
		out.println("InsertController.java�ڹټ�������");
		out.println(" �űԳѾ�»�� : " + Gsabun);
		out.println(" �űԳѾ���̸� : " + Gname);
		out.println(" �űԳѾ������ : " + Gtitle);
		out.println(" �űԳѾ�±޿� : " + Gpay);
		out.println(" �űԳѾ�¸��� : " + Gemail +"<br>");
		
		GuestDTO dto = new GuestDTO();
		GuestSQL sql = new GuestSQL();
		//��1��������=DBó��������=�����Ͻ�����=CRUDó����
		//dto�� setXXX(�Ű�����) => sql.guestInsert(dto)
		dto.setSabun(Gsabun);
		dto.setName(Gname);
		dto.setTitle(Gtitle);
		dto.setPay(Gpay);
		dto.setEmail(Gemail);
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












