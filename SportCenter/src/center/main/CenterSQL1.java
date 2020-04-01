package center.main;

import center.common.DB;
import center.common.Global;

public class CenterSQL1 extends Global{
	{
	try {
		CN = DB.getConnection();
		System.out.println("GuesSQL.java에 연결 성공");
	} catch (Exception e) {
		System.out.println("GuesSQL.java에 연결 실패 : " + e);
	}
}
	
	public int reservate(String center, String id, String rstart, String rend, String Rcontent, String rmoney ) {
		int ok=0;
		int ok1=0;
		int seqval=0;
		String cen="";
		String Rrn="";
		if(center.equals("football")){
			cen="SC";
		}
		else if(center.equals("basketball")) {
			cen="BB";
		}
		else if(center.equals("baseball")) {
			cen="ML";
		}
		else if(center.equals("swim")) {
			cen="SM";
		}
		try {
			String seq="select test_seq.nextval from dual";
					ST=CN.createStatement();
					RS=ST.executeQuery(seq);
					if(RS.next()) {
						seqval=RS.getInt("nextval");
					}
				
		}catch(Exception ex) {System.out.println("시퀀스 가져오기 실패 "+ex);	}
		String a=rstart.substring(4, 8);
		String b=rend.substring(4, 8);
		Rrn=cen+a+b+seqval;
		try {
			String msg="insert into testres values('idd',test_seq.nextval, '"+id+"', '"+Rcontent+"', '"+Rrn+"', to_date("+rstart+", 'yyyymmdd hh24:mi'), to_date("+rend+", 'yyyymmdd hh24:mi'), 1, 10000)";
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
