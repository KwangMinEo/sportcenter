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

import net.tis.guest.GuestDTO2;
import net.tis.guest.GuestSQL2;


@WebServlet("/glist.tis")
public class ListController extends HttpServlet {
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
		PrintWriter out = response.getWriter(); //out��ü������ ȭ�����
	
		 //guestList.jsp������ ���� ����
		 String pnum;
		 int pageNUM, pagecount;
		 int start, end; 
		 int startpage, endpage;  
		 int temp;
		 String sqry="";
		 String skey="", sval="";
		 String returnpage=""; 
		 int Rnumber ;  //�������� ���ȣ ���
		 
		 pnum = request.getParameter("pageNum");
		 if(pnum==null || pnum=="") { pnum="1"; }
		 pageNUM=Integer.parseInt(pnum); //��������ȣ ���ڿ��� ����ȭ [14]
		  
		//JSTL�ǽ����� ListController.java�����ڹٹ���������
		GuestSQL sql = new GuestSQL( );
		GuestDTO dto = new GuestDTO( );
		int Gtotal = sql.guestAlltotal(); //�˻������Ͱ��� 
		int Atotal = sql.guestAlltotal(); //��ü�����Ͱ���
		
		start = (pageNUM-1)*10 + 1 ; //������������ ������ 131
		end = pageNUM*10 ; //������������ ���� 140
		
		//�������� pagecount = 32
		if(Gtotal%10==0) { pagecount = Gtotal/10  ; }
		else { pagecount = (Gtotal/10) +1 ; }
		
		//[����] [11] ~ [14����=pageNUM] ~  [20] [����]
		temp = (pageNUM-1)%10;  //3
		startpage = pageNUM-temp ;  
		endpage = startpage+9;
		if(endpage>pagecount) { endpage=pagecount; }
		
		//ó������ ArrayList<GuestDTO> LG = sql.guestSelect();
		ArrayList<GuestDTO> LG = sql.guestSelect(start, end);
		
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("pageNUM", pageNUM);
		request.setAttribute("Gtotal", Gtotal);
		
		request.setAttribute("LG", LG);
		RequestDispatcher dis=request.getRequestDispatcher("guestList.jsp");
		dis.forward(request,response);
		
	}//end
	
}//class END













