package center.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Center")
public class FirstController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FirstController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doUser(request, response);
	}
	protected void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doGet(request, response);
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		
		
		
		
	}

}
