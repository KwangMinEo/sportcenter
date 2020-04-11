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
		
		CenterSQL1 sql = new CenterSQL1();
		String pnum;
		int pageNUM, pagecount;
		int start, end;
		int startpage, endpage;
		int temp;
		int Gtotal;//게시글 전체 수
		int Atotal;//댓글 전체 수  
		
		pnum = request.getParameter("pageNum");
		if(pnum==null||pnum=="") {pnum="1";}
		pageNUM=Integer.parseInt(pnum);
		
		//전체값 불러오기
		Gtotal = sql.getCount();
		
		start = (pageNUM-1)*10+1;
		end = pageNUM*10;
		
		if(Gtotal%10==0) {pagecount = Gtotal/10;}
		else {pagecount = (Gtotal/10)+1;}
		
		temp =(pageNUM-1)%10;
		startpage=pageNUM-temp;
		endpage=startpage+9;
		if(endpage>pagecount) {endpage=pagecount;}
		
		
		
		
		String data=request.getParameter("idx");
		ArrayList<CenterDTO1> LI = sql.showlist(data , start , end);

		for(int i=0;i<LI.size();i++) {
			CenterDTO1 dto = LI.get(i);
			System.out.println(dto.getLid());
			System.out.println(dto.getTitle());
			System.out.println(dto.getLrn());
			System.out.println(dto.getSdate());
			System.out.println(dto.getCenter());
			System.out.println(dto.getContent());
			System.out.println(dto.getHIT());
			System.out.println(dto.getGtotal());
			System.out.println(dto.getRn());
		}
		
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("pageNUM", pageNUM);
		request.setAttribute("Gtotal", Gtotal);
		
		request.setAttribute("LI", LI);
		RequestDispatcher dis = request.getRequestDispatcher("CenterList.jsp");
		dis.forward(request, response);
	}

}
