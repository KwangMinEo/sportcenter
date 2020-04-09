package center.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import center.ex.GuestDTO;
import center.ex.GuestSQL;
import center.main.CenterDTO2;
import center.main.CenterSQL2;

@WebServlet("/List.center")
public class centerList extends HttpServlet {
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
	
		 String pnum;
		 int pageNUM, pagecount;
		 int start, end; 
		 int startpage, endpage;  
		 int temp;
		 String sqry="";
		 String skey="", sval="";
		 String returnpage=""; 
		 int Rnumber ; 
		 
		 pnum = request.getParameter("pageNum");
		 if(pnum==null || pnum=="") { pnum="1"; }
		 pageNUM=Integer.parseInt(pnum); 


		CenterSQL2 sql = new CenterSQL2( );
		CenterDTO2 dto = new CenterDTO2( );
		int Gtotal = sql.centerAlltotal(); 
		
		int Atotal =0;
		
		start = (pageNUM-1)*10 + 1 ; 
		end = pageNUM*10 ;
		

		if(Gtotal%10==0) { pagecount = Gtotal/10  ; }
		else { pagecount = (Gtotal/10) +1 ; }
		

		temp = (pageNUM-1)%10;  //3
		startpage = pageNUM-temp ;  
		endpage = startpage+9;
		if(endpage>pagecount) { endpage=pagecount; }

		System.out.println(start);
		System.out.println(end);
		
		skey= request.getParameter("keyfield");
		sval= request.getParameter("keyword");
		 if(sval==null || sval=="") {
			Atotal = sql.centerAlltotal();
			ArrayList<CenterDTO2> LG = sql.centerSelect(start, end);
			request.setAttribute("LG", LG);
			System.out.println(skey + "skey 널값입니다");
			System.out.println(sval + "sval 널값입니다");
		 }else {
			Atotal = sql.centerAlltotalSearch(skey, sval); 
			ArrayList<CenterDTO2> LG = sql.centerSelect(start, end, skey, sval);
			request.setAttribute("LG", LG);
			System.out.println(skey + "skey 값입니다");
			System.out.println(sval + "sval 값입니다");
			 }
		
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("pageNUM", pageNUM);
		request.setAttribute("Atotal", Atotal);
		request.setAttribute("Gtotal", Gtotal);
		
		RequestDispatcher dis = request.getRequestDispatcher("CenterList1.jsp");
		dis.forward(request, response);
	}

}
