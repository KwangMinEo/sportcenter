package center.main;

import java.sql.Connection;
import java.util.Date;

import center.common.DB;
import center.common.Global;

public class CenterSQL1 extends Global{
	{
	try {
		Connection CN = DB.getConnection();
		System.out.println("GuesSQL.java에 연결 성공");
	} catch (Exception e) {
		System.out.println("GuesSQL.java에 연결 실패 : " + e);
	}
}
	
	public int reservate(String center, String id, Date Rstart, Date Rend, String Rcontent, int Rmoney ) {
		int ok=0;
		String Rrn="";
		String cen="";
		if(center.equals("football")){
			cen="SC";
		}
		else if(center.equals("basketball")) {
			cen="BB";
		}
		else if(center.equals("baseball")) {
			cen="Bb";
		}
		else if(center.equals("swim")) {
			cen="SM";
		}
		Rrn=cen+(Rstart
		try {
			String msg="insert into testres values('"+id+"', "+center+"to_char(Rstart,'yymmdd')to_char(Rstart, 'hh24mi')to_Char(Rend, 'hh24mi')substr("+id+", 0, 2), '한사람' , '콘텐츠 부분', 1, "+Rstart+", "+Rend+", 1, 10.000)";
			ST=CN.createStatement();
			ok=ST.executeUpdate(msg);
			if(ok>0) {
				System.out.println("예약 성공");
			}
		}catch(Exception e) {
			System.out.println("예약 실패 :"+e);
		}
		return ok;
	}
	
	
	
	
	
	
}
