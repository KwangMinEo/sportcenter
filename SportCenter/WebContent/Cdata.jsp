<%@page import="java.util.ArrayList"%>
<%@page import="center.main.CenterSQL1"%>
<%@page import="center.main.CenterDTO1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.json.simple.*" %>

<%
  // 서버로 부터 넘어온 데이터를 받아옴
  JSONObject jsonMain = new JSONObject();
  JSONArray jArray = new JSONArray();
	CenterSQL1 sql = new CenterSQL1();
	ArrayList<CenterDTO1> list = sql.showcal1();
	for(int i=0;i<list.size();i++) {
		CenterDTO1 dto = list.get(i);
		System.out.println(dto.getId());
		System.out.println(dto.getRstart());
		System.out.println(dto.getRend());
		
  System.out.print("id : " +list);
  //전체를 담아줄 객체를 설정
  
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
  
  //JSONArray배열객체에 하나의 JSONObject를 저장
  jArray.add(i, jObject);
	}
  //전체 JSONObject를저장할 메인JSONObjec객체를 설정하여 저장(키,벨류)
  
  out.println(jArray.toJSONString());
  
%>