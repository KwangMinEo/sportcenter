package center.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; //�����߰�

import net.tis.common.DB;
import net.tis.guest.GuestDTO;
import net.tis.guest.GuestSQL;


@WebServlet("/login.tis")
public class LoginController1 extends HttpServlet {
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
	
	  //out.println("LoginController.java��Ʈ�ѷ�����");
	  //HttpSession session = request.getSession();
	  try{
		  	Connection CN=DB.getConnection();
		  	int total=0;
		   	
		  	String usera=request.getParameter("UID");
		   	String userb=request.getParameter("UPWD");
		   	System.out.println("UID=" + usera + "  UPWD=" + userb) ;
		   	String  msg="select count(*) as cnt from login where userid=?  and pwd=?" ;
		     PreparedStatement PST=CN.prepareStatement(msg); //�������̸����ؼ�    
		   		PST.setString(1, usera);
		   		PST.setString(2, userb);
		     ResultSet RS=PST.executeQuery();
		     if(RS.next()==true){total=RS.getInt("cnt"); }
		     if(total>0){
		    	 out.println("<font size=7 color=red><b>" + usera+"��  Ajax��Ʈ�� �α��μ�������</b></font><p>");
		    	 out.println("<img src=images/lollipop.gif  width=150 height=100> ");
		     	 out.println("<img src=images/marshmallow.gif  width=150 height=100>");
		     	 out.println("<img src=images/nougat.gif  width=150 height=100> <p>");
		     	 out.println("<font size=7><a href='glist.tis'>[glist.tis]</a></b></font>");
		     	 out.println("<font size=7><a href='loginAjax.jsp'>[�α���]</a></b></font>");
		     	 out.println("<font size=7><a href='index.jsp'>[index]</a></font>");
		     	 HttpSession session = request.getSession();
		     	 session.setAttribute("google", usera); //���Ǽ���
		     	 System.out.println("google���Ǽ�������OK"); 
		     }else{
		        out.println("<font size=7 color=red><b>" + usera+"��  Ajax��Ʈ�� �α��ν���</b></font><p>");
		        out.println("<a href='glist.tis'>[glist.tis]</a>");
		        out.println("<font size=5><a href='loginAjax.jsp'>[�α���]</a></b></font>");
		        out.println("<font size=5><a href='index.jsp'>[index]</a></font>");
		      }
		    }catch(Exception ex){  }	
	}//end
	
}//class END













