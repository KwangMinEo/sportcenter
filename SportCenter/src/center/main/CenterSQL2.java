package center.main;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;

import center.common.DB;
import center.common.Global;
import center.main.CenterDTO2;

public class CenterSQL2 extends Global{
	{
	try {
		 CN = DB.getConnection();
		System.out.println("CenterSQL2.java에 연결 성공");
	} catch (Exception e) {
		System.out.println("CenterSQL2.java에 연결 실패 : " + e);
	}
}
	
	 public int centerInsert(String id, String pwd, String name, String phone, String bdata, int gender, String email, String loc) {
		int ok = 0;
		 try {

		 msg="insert into CLIENTDATA values(?,?,?,?,TO_DATE(?,'YYYYMMDD'),?,?,?)";
		 PST = CN.prepareStatement(msg);
		 	   PST.setString(1, id);
		 	   PST.setString(2, pwd);
		 	   PST.setString(3, name);
		 	   PST.setString(4, phone);
		 	   PST.setString(5, bdata);
		 	   PST.setInt(6, gender);
		 	   PST.setString(7, email);
		 	   PST.setString(8, loc);
		 	  ok = PST.executeUpdate();
		 if(ok>0){System.out.println("CenterSQL2 centerInsert 성공");}
		}catch(Exception ex){System.out.println("CenterSQL2 centerInsert 실패" + ex); }
		return ok;
	  }//end
	 
	 public int centerInsert1(String id, String pwd, String name, String phone, String bdata, int gender, String email, String loc) {
		 int ok = 0;
		 try {

		 msg="insert into CLIENTDATA values('"+id+"','"+pwd+"','"+name+"','"+phone+"',TO_DATE("+bdata+",'YYYYMMDD'),"+gender+",'"+email+"','"+loc+"')";
			ST=CN.createStatement();
			ok = ST.executeUpdate(msg);
			 if(ok>0){ System.out.println("CenterSQL2 centerInsert1 성공");}
		}catch(Exception ex){System.out.println("CenterSQL2 centerInsert1 실패" + ex); }
		 return ok;
	  }//end
	 

	 public int centerInsert2(CenterDTO2 dto) {
		int ok = 0;
		 try {

		 msg="insert into CLIENTDATA values(?,?,?,?,TO_DATE(?,'YYYYMMDD'),?,?,?)";
		 PST = CN.prepareStatement(msg);
		 	   PST.setString(1, dto.getId());
		 	   PST.setString(2, dto.getPwd());
		 	   PST.setString(3, dto.getName());
		 	   PST.setString(4, dto.getPhone());
		 	   PST.setString(5, dto.getBdate());
		 	   PST.setInt(6, dto.getGender());
		 	   PST.setString(7, dto.getEmail());
		 	   PST.setString(8, dto.getLoc());
		 	  ok = PST.executeUpdate();
		 if(ok>0){System.out.println("CenterSQL2 centerInsert2 성공");}
		}catch(Exception ex){System.out.println("CenterSQL2 centerInsert2 실패" + ex); }
		return ok;
	  }//end
	 
	 public int centerInsert3(CenterDTO2 dto) {
		 int ok = 0;
		 try {

		 msg="insert into CLIENTDATA values('"+dto.getId()+"','"+dto.getPwd()+"','"+dto.getName()+"','"+dto.getPhone()+"',TO_DATE("+dto.getBdate()+",'YYYYMMDD'),"+dto.getGender()+",'"+dto.getEmail()+"','"+dto.getLoc()+"')";
			ST=CN.createStatement();
			ok = ST.executeUpdate(msg);
			 if(ok>0){ System.out.println("CenterSQL2 centerInsert3 성공");}
		}catch(Exception ex){System.out.println("CenterSQL2 centerInsert3 실패" + ex); }
		 return ok;
	  }//end
	 
	 
	 public ArrayList<CenterDTO2> centerSelect(int start, int end){
		  ArrayList<CenterDTO2> list= new ArrayList<CenterDTO2>();
		 try {
		  String a=" select * from ( ";
		  String b=" select rownum rn,id,Lrn,title,content,sdate,hit,center from list";
		  String c=" ) where rn between " + start +" and " + end ;
		  msg=a+b+c;
		  ST = CN.createStatement();
		  RS = ST.executeQuery(msg);
		  while(RS.next()==true) {
			  CenterDTO2 dto = new CenterDTO2(); 
			  dto.setRn(RS.getInt("rn"));
			  dto.setId(RS.getString("id")); 
			  dto.setLrn(RS.getInt("Lrn"));
			  dto.setTitle(RS.getString("title"));
			  dto.setContent(RS.getString("content"));
			  dto.setSdate(RS.getDate("sdate"));
			  dto.setHit(RS.getInt("hit"));
			  dto.setCenter(RS.getString("center"));
			  list.add(dto); 

//			  System.out.println(RS.getString("id"));
//			  System.out.println(RS.getString("title"));
//			  System.out.println(RS.getString("content"));
		  }
		 }catch(Exception e) { }
		 return list;
	  }
	 
	 public ArrayList<CenterDTO2> centerSelect(int start, int end, String skey, String sval){
		  ArrayList<CenterDTO2> list= new ArrayList<CenterDTO2>();
		 try {
		  String a=" select * from ( ";
		  String b=" select rownum rn,id,Lrn,title,content,sdate,hit,center from list";
		  String c=" where "+ skey+ " like '%"+sval+"%') where rn between " + start +" and " + end ;
		  msg=a+b+c;
		  ST = CN.createStatement();
		  RS = ST.executeQuery(msg);
		  while(RS.next()==true) {
			  CenterDTO2 dto = new CenterDTO2(); 
			  dto.setRn(RS.getInt("rn"));
			  dto.setId(RS.getString("id")); 
			  dto.setLrn(RS.getInt("Lrn"));
			  dto.setTitle(RS.getString("title"));
			  dto.setContent(RS.getString("content"));
			  dto.setSdate(RS.getDate("sdate"));
			  dto.setHit(RS.getInt("hit"));
			  dto.setCenter(RS.getString("center"));
			  list.add(dto); 

//			  System.out.println(RS.getString("id"));
//			  System.out.println(RS.getString("title"));
//			  System.out.println(RS.getString("content"));
		  }
		 }catch(Exception e) { }
		 return list;
	  }
	 
  public int centerAlltotal() {
	int count=0;
	try {
	 msg="select count(*) as cnt from List ";
	 ST=CN.createStatement();
	 RS=ST.executeQuery(msg);
	 if(RS.next()==true) { count=RS.getInt("cnt"); }
	}catch(Exception ex) { }
	return count;
  }//end
  
  public int centerAlltotalSearch(String skey, String sval) {
		 int count=0;
		 try {
			 msg="select count(*) as cnt from list  where "+ skey+ " like '%"+sval+"%'" ;
			 ST=CN.createStatement();
			 RS=ST.executeQuery(msg);
			 if(RS.next()==true) { count=RS.getInt("cnt");}
		 }catch(Exception ex) { }
		 return count;
	  }//end
  
}
