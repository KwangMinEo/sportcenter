package center.ex;


import java.sql.SQLException;
import java.util.ArrayList;
import net.tis.common.DB;
import net.tis.common.Global;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class GuestSQL3 extends Global {	
  public GuestSQL3() {
	CN = DB.getConnection();
	System.out.println("GuestSQL3.java ������ 3-18-�����");
  }//end
	
  
  public ArrayList<GuestDTO> guestSelect( ) { //���� ����¡X,�˻�X
	  ArrayList<GuestDTO> list= new ArrayList<GuestDTO>();
	 try {
	  String a=" select * from ( ";
	  //String b=" select rownum rn,sabun,name,title,to_char(wdate,'yyyy-MM-dd HH24:mi:ss') as wdate,pay,hit,email from guest";
	  String b=" select rownum rn,sabun,name,title,pay,hit,email from guest";
	  String c=" ) ";
	  msg=a+b+c;
	  ST = CN.createStatement();
	  RS = ST.executeQuery(msg);
	  while(RS.next()==true) {
		  GuestDTO dto = new GuestDTO(); //dto��ü�� while�ݺ������ʿ� ��ġ
		  dto.setRn(RS.getInt("rn")); 
		  dto.setSabun(RS.getInt("sabun"));  
		  dto.setName(RS.getString("name"));  
		  dto.setTitle(RS.getString("title"));
		  //dto.setWdate(RS.getDate("wdate"));
		  dto.setPay(RS.getInt("pay"));    
		  dto.setHit(RS.getInt("hit")); 
		  dto.setEmail(RS.getString("email"));
		  list.add(dto); //�ʼ��׸�
	  }//while end
	 }catch(Exception e) { }
	 return list;
  }//guestSelect end  ����¡X
	

  ////////////////////////////////////////////////////
  public ArrayList<GuestDTO> AguestSelect( ) { //AguestSelect( )
	  ArrayList<GuestDTO> list= new ArrayList<GuestDTO>();
	 try {
	   msg="select sabun,name,title, pay,hit,email from guest";
	  ST = CN.createStatement();
	  RS = ST.executeQuery(msg);
	  while(RS.next()==true) {
		  GuestDTO dto = new GuestDTO(); //dto��ü�� while�ݺ������ʿ� ��ġ
		  dto.setSabun(RS.getInt("sabun"));  
		  dto.setName(RS.getString("name"));  
		  dto.setTitle(RS.getString("title"));
		  //dto.setWdate(RS.getDate("wdate"));
		  dto.setPay(RS.getInt("pay"));    
		  dto.setHit(RS.getInt("hit")); 
		  dto.setEmail(RS.getString("email"));
		  list.add(dto); //�ʼ��׸�
	  }//while end
	 }catch(Exception e) { }
	 return list;
  }//AguestSelect end 
	
  
  public GuestDTO BguestSelect( int data) { //BguestSelect( )
	 GuestDTO  dto= new GuestDTO();
	 try {
	   msg="select sabun,name,title, pay,hit,email from guest where sabun = " +data;
	  ST = CN.createStatement();
	  RS = ST.executeQuery(msg);
	  if(RS.next()==true) {
		  dto.setSabun(RS.getInt("sabun"));  
		  dto.setName(RS.getString("name"));  
		  dto.setTitle(RS.getString("title"));
		  //dto.setWdate(RS.getDate("wdate"));
		  dto.setPay(RS.getInt("pay"));    
		  dto.setHit(RS.getInt("hit")); 
		  dto.setEmail(RS.getString("email"));
	  }//if end
	 }catch(Exception e) { }
	 return dto;
  }//BguestSelect end  
  

}//GuestSQL3 class END












