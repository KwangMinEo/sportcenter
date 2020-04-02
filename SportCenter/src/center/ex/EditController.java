package center.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tis.guest.GuestDTO;
import net.tis.guest.GuestSQL;


@WebServlet("/gedit.tis")
public class EditController extends HttpServlet {
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
			
		//EditController.java & guestEdit.jsp����
		int Gsabun = Integer.parseInt(request.getParameter("sabun"));
		String Gname = request.getParameter("name");
		String Gtitle = request.getParameter("title");
		int Gpay = Integer.parseInt(request.getParameter("pay"));
		String Gemail = request.getParameter("email");
		
		System.out.println("\nEditController.java ��¥��������");
		System.out.println(" �����Ѿ�»�� : " + Gsabun);
		System.out.println(" �����Ѿ���̸� : " + Gname);
		System.out.println(" �����Ѿ������ : " + Gtitle);
		System.out.println(" �����Ѿ�±޿� : " + Gpay);
		System.out.println(" �����Ѿ�¸��� : " + Gemail);
		
		GuestDTO dto = new GuestDTO();
		GuestSQL sql = new GuestSQL();
		
		dto.setSabun(Gsabun);
		dto.setName(Gname);
		dto.setTitle(Gtitle);
		dto.setPay(Gpay);
		dto.setEmail(Gemail);
		// �űԵ������ó�� int OK=sql.guestInsert(dto);
		sql.guestEdit(dto); //��¥����ó�� 
		response.sendRedirect("glist.tis");
	}//end
}//class END












