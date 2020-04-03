<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	String id,pw;
%>

<%
	id = request.getParameter("userid");
	pw = request.getParameter("userpwd");
	
	if(id.equals("bbbb") && pw.equals("1234")){
		session.setAttribute("userID", id);
		session.setAttribute("userPWD", pw);
		response.sendRedirect("FirstPage.jsp");
// 		response.sendRedirect("testpage.jsp");
	}
%>
</body>
</html>