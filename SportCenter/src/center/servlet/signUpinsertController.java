package center.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import oracle.sql.DATE;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.MultipartParser;


@WebServlet("/signUpinsert.center")
public class signUpinsertController extends HttpServlet {
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
//		PrintWriter out = response.getWriter(); 
	
//		파일업로드
//		ServletContext application = this.getServletContext();
//		DefaultFileRenamePolicy dfp = new DefaultFileRenamePolicy();
//		MultipartRequest mr = new MultipartRequest(request, "���", 1024, "UTF-8", dfp);
//		

		
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");

		String Gid = request.getParameter("id");
		String Gpwd = request.getParameter("pwd");
		String Gname = request.getParameter("name");
		String Gphone = request.getParameter("phone");
		String Gbdate = request.getParameter("bdate");
//		String Change = request.getParameter("bdate");
//		Date Gbdate = null;
//		try {
//			Gbdate = fm.parse(Change);
//		} catch (ParseException e1) {
//			e1.printStackTrace();
//		}
		int Ggender = Integer.parseInt(request.getParameter("gender"));
		String Gemail = request.getParameter("email");
		String Gloc = request.getParameter("loc");
		
		//데이터 수신 테스트
		System.out.println(Gid);
		System.out.println(Gpwd);
		System.out.println(Gname);
		System.out.println(Gphone);
//		System.out.println(Change);
		System.out.println(Gbdate);
		System.out.println(Ggender);
		System.out.println(Gemail);
		System.out.println(Gloc);
		
		try {
		CenterDTO2 dto = new CenterDTO2();
		CenterSQL2 sql = new CenterSQL2();
		dto.setId(Gid);
		dto.setPwd(Gpwd);
		dto.setName(Gname);
		dto.setPhone(Gphone);
		dto.setBdate(Gbdate);
		dto.setGender(Ggender);
		dto.setEmail(Gemail);
		dto.setLoc(Gloc);
//		int ok = sql.centerInsert2(dto);
		int ok = sql.centerInsert(Gid, Gpwd, Gname, Gphone,Gbdate, Ggender,Gemail, Gloc);
		if(ok>0) {
			System.out.println("저장 성공" + ok);
		}
		} catch (Exception e) {
		System.out.println("에러다 임마 : " + e);
		}

		response.sendRedirect("FirstPage.jsp");
	}//end
	
}//class END












