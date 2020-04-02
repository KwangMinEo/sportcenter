package center.main;

import java.util.ArrayList;

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
	
	public int reservate(String center, String Rname, String rstart, String rend, String Rcontent, String rmoney ) {
		int ok=0;
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
		else {cen="??";}
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
			String msg="insert into testres values('idd',test_seq.nextval, '"+Rname+"', '"+Rcontent+"', '"+Rrn+"', to_date("+rstart+", 'yyyymmdd hh24:mi'), to_date("+rend+", 'yyyymmdd hh24:mi'), 1, "+rmoney+")";
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

	public ArrayList<CenterDTO1> ShowCal() {
		ArrayList<CenterDTO1> list = new ArrayList<CenterDTO1>();
		try {
			String msg="select rn, id, name, Rnum, to_char(Rstart,'yyyy,mm,dd, hh24,mi') as startr, to_char(Rend, 'yyyy,mm,dd, hh24,mi') as rend, rconfirm from (select rownum rn, t.* from testres t)";
			ST=CN.createStatement();
			RS=ST.executeQuery(msg);
			if(RS.next()) {
				CenterDTO1 dto = new CenterDTO1();
				dto.setRrn(RS.getInt("rn"));
				dto.setId(RS.getString("id"));
				dto.setName(RS.getString("name"));
				dto.setRnum(RS.getString("Rnum"));
				dto.setRstart(RS.getString("startr"));
				dto.setRend(RS.getString("rend"));
				dto.setRconfirm(RS.getInt("rconfrim"));
				list.add(dto);
			}
			
		}catch(Exception e) {System.out.println("예약확인 에러 캘린더에 출력할수 없습니다"+e);}
		return list;
	}
	
	public ArrayList<CenterDTO1> getdataymd() {
		ArrayList<CenterDTO1> list = new ArrayList<CenterDTO1>();
		String smsg="";
		String emsg="";
		try {
			CenterDTO1 dto = new CenterDTO1();
			smsg="select to_char(rstart, 'yyyy')-to_char(sysdate, 'yyyy')as syear, to_char(rstart, 'mm')-to_char(sysdate, 'mm')as smonth, to_char(rstart, 'dd')-to_char(sysdate, 'dd')as sday from testres";
			ST=CN.createStatement();
			RS=ST.executeQuery(smsg);
			if(RS.next()) {
				dto.setSyear(RS.getInt("syear"));
				dto.setSmonth(RS.getInt("smonth"));
				dto.setSday(RS.getInt("sday"));
				list.add(dto);
			}
			emsg="select to_char(rend, 'yyyy')-to_char(sysdate, 'yyyy')as eyear, to_char(rend, 'mm')-to_char(sysdate, 'mm')as emonth, to_char(rend, 'dd')-to_char(sysdate, 'dd')as eday from testres;";
			ST=CN.createStatement();
			RS=ST.executeQuery(emsg);
			if(RS.next()) {
				dto.setEyear(RS.getInt("eyear"));
				dto.setEmonth(RS.getInt("emonth"));
				dto.setEday(RS.getInt("eday"));
				list.add(dto);
			}
			System.out.println("일차를가져오는데 성공 했습니다.");
		}catch(Exception e) { System.out.println("시작/종료 년, 월, 달 가져오기 실패"+ e );}
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
