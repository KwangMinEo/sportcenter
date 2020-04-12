<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.json.simple.*" %>
<%@page import="java.util.ArrayList"%>
<%@page import="center.main.CenterSQL1"%>
<%@page import="center.main.CenterDTO1"%>

<%
  JSONObject jsonMain = new JSONObject();
  JSONArray jArray = new JSONArray();
	CenterSQL1 sql = new CenterSQL1();
	ArrayList<CenterDTO1> list = sql.showcal1();
	for(int i=0;i<list.size();i++) {
		CenterDTO1 dto = list.get(i);
		
  JSONObject jObject = new JSONObject();

  String color=	"";
  String center=dto.getRnum().substring(0, 2);
  if(center.equals("SC")){
	  color="#45858C";
  }
  else if(center.equals("BB")){
	  color="#A62D2D";
  }
  else if(center.equals("ML")){
	  color="#D9B166";
  }
  else if(center.equals("SM")){
	  color="#A0D9D9";
  }
  jObject.put("title", dto.getId()+"님의 에약");
  jObject.put("start", dto.getRstart());
  jObject.put("end", dto.getRend());
  jObject.put("color", color);
  
  jArray.add(i, jObject);
	}
  
  out.println(jArray.toJSONString());
  
%>