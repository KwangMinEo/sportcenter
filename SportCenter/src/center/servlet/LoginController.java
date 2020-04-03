package center.servlet;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; //�����߰�

import center.common.DB;
//import center.main.CenterDTO2;
//import center.main.CenterSQL2;


@WebServlet("/Login.center")
public class LoginController extends HttpServlet {
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
//	  PrintWriter out = response.getWriter(); 
	
	  //out.println("LoginController.java��Ʈ�ѷ�����");
	  //HttpSession session = request.getSession();
	  try{
		  	Connection CN=DB.getConnection();
		  	int total=0;
		   	
		  	String usera=request.getParameter("userid");
		   	String userb=request.getParameter("userpwd");
		   	System.out.println("UID=" + usera + ", UPWD=" + userb) ;
		   	String  msg="select count(*) as cnt from Clientdata where id=? and pwd=?" ;
		     PreparedStatement PST=CN.prepareStatement(msg); //�������̸����ؼ�    
		   		PST.setString(1, usera);
		   		PST.setString(2, userb);
		     ResultSet RS=PST.executeQuery();
		     if(RS.next()==true){total=RS.getInt("cnt"); }
		     if(total>0){
		     	 HttpSession session = request.getSession();
		     	 session.setAttribute("centerID", usera); //���Ǽ���
		     	 System.out.println("로그인 성공"); 

		     	 request.setAttribute("userID", usera);
		     	 request.setAttribute("usePWD", userb);
		     }else{
		    	 System.out.println("로그인 실패"); 
		      }
		    }catch(Exception ex){  }	
	  

 	  RequestDispatcher dis = request.getRequestDispatcher("testpage.jsp");
   	 dis.forward(request, response);
	}//end
	
}//class END













