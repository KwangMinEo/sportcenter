package center.ex;


import java.sql.SQLException;
import java.util.ArrayList;
import net.tis.common.DB;
import net.tis.common.Global;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class GuestSQL extends Global {	
  public GuestSQL() {
	//����db�ڵ�  CN = DB.getConnection();
	  
	//DBCP����ó��
	try {
	  Context ct = new InitialContext();
	  DataSource ds = (DataSource)ct.lookup("java:comp/env/jdbc/snow");
	  CN=ds.getConnection();  //�����
	  System.out.println("~~~ dbcp���Ἲ������ 03-16-monday ~~~ ");
	   //if(CN==null) { System.out.println("GuestSQL������ db�������");}
	}catch (Exception ex) {System.out.println("dbcp�������"+ex); }
  }//end
	
  public int guestInsert(GuestDTO dto) {
	int ok = 0;
	try {
      //MultipartRequest mr �����ڹ�= ��1 ���ٴ� �������� ���	
		
	 msg="insert into guest values(?, ?, ?, sysdate, ?, 0, ?)";
	 PST = CN.prepareStatement(msg);
	 	   PST.setInt(1, dto.getSabun()); //PST.setInt(1, a);
	 	   PST.setString(2, dto.getName()); //PST.setString(2, b);
	 	   PST.setString(3, dto.getTitle()); //PST.setString(3, c);
	 	   PST.setInt(4, dto.getPay());  //PST.setInt(4, d);
	 	   PST.setString(5, dto.getEmail()); //PST.setString(5, e);
	 ok = PST.executeUpdate();
	 if(ok>0){System.out.println("��1 GuestSQL���� guest���强��"); }
	}catch(Exception ex){ }
	return ok ;
  }//end
  
  
  public ArrayList<GuestDTO> guestSelect( ) { //���� ����¡X,�˻�X
	  ArrayList<GuestDTO> list= new ArrayList<GuestDTO>();
	 try {
	  String a=" select * from ( ";
	  String b=" select rownum rn,sabun,name,title,wdate,pay,hit,email from guest";
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
		  dto.setWdate(RS.getDate("wdate"));
		  dto.setPay(RS.getInt("pay"));    
		  dto.setHit(RS.getInt("hit")); 
		  dto.setEmail(RS.getString("email"));
		  list.add(dto); //�ʼ��׸�
	  }//while end
	 }catch(Exception e) { }
	 return list;
  }//guestSelect end  ����¡X
	

  //���纻 ����¡���� 
  public ArrayList<GuestDTO> guestSelect(int start, int end){//���纻
	  ArrayList<GuestDTO> list= new ArrayList<GuestDTO>();
	 try {
	  String a=" select * from ( ";
	  String b=" select rownum rn,sabun,name,title,wdate,pay,hit,email from guest";
	  String c=" ) where rn between " + start +" and " + end ;
	  msg=a+b+c;
	  ST = CN.createStatement();
	  RS = ST.executeQuery(msg);
	  while(RS.next()==true) {
		  GuestDTO dto = new GuestDTO(); //dto��ü�� while�ݺ������ʿ� ��ġ
		  dto.setRn(RS.getInt("rn")); 
		  dto.setSabun(RS.getInt("sabun"));  
		  dto.setName(RS.getString("name"));  
		  dto.setTitle(RS.getString("title"));
		  dto.setWdate(RS.getDate("wdate"));
		  dto.setPay(RS.getInt("pay"));    
		  dto.setHit(RS.getInt("hit")); 
		  dto.setEmail(RS.getString("email"));
		  list.add(dto); //�ʼ��׸�
	  }//while end
	 }catch(Exception e) { }
	 return list;
  }//guestSelect(1,2) end

  //���纻 ����¡����, �˻� 
  public ArrayList<GuestDTO> guestSelect(int start, int end, String skey, String sval){//���纻
	  ArrayList<GuestDTO> list= new ArrayList<GuestDTO>();
	  //GuestDTOŬ���� rcnt�ʵ��߰�
	 try {
	  String a=" select * from ( ";
	  String b=" select rownum rn, a.*, (select count(*) from guestreply r where r.sabun=a.sabun ) as rcnt  from ";
	  String z="  (select * from guest where "+ skey + " like '%" + sval+ "%')  a";
	  String c=" ) where rn between " + start +" and " + end ;
	  
	  }catch(Exception e) { }
	 return list;
  }//guestSelect(1,2,3,4) end
  
  
  public int guestAlltotalSearch(String skey, String sval) {
	 int count=0;
	 try {
		 msg="select count(*) as cnt from guest  where "+ skey+ " like '%"+sval+"%'" ;
		 ST=CN.createStatement();
		 RS=ST.executeQuery(msg);
		 if(RS.next()==true) { count=RS.getInt("cnt");}
	 }catch(Exception ex) { }
	 return count;
  }//end
  
	 
  public int guestAlltotal() {
	int count=0;
	try {
	 msg="select count(*) as cnt from guest ";
	 ST=CN.createStatement();
	 RS=ST.executeQuery(msg);
	 if(RS.next()==true) { count=RS.getInt("cnt"); }
	}catch(Exception ex) { }
	return count;
  }//end
  
  
  public GuestDTO guestDetail(String data) { //�Ѱǻ����
	 GuestDTO dto = new GuestDTO(); 
	try {
	  msg="select * from guest where sabun = " + data ;
	  ST=CN.createStatement();
	  RS=ST.executeQuery(msg);
	  if(RS.next()==true) {
		  dto.setSabun(RS.getInt("sabun"));  
		  dto.setName(RS.getString("name"));  
		  dto.setTitle(RS.getString("title"));
		  dto.setWdate(RS.getDate("wdate"));
		  dto.setPay(RS.getInt("pay"));    
		  dto.setHit(RS.getInt("hit")); 
		  dto.setEmail(RS.getString("email"));
	  }
	}catch(Exception ex) { }
	return dto;
  }//guestDetail end
  
  public int guestHit(String data) {
	  int ghit=0;
	  try {
		msg="update guest set hit=hit+1 where sabun = " + data; 
		ST=CN.createStatement();
		ST.executeUpdate(msg);
	  }catch(Exception ex) { }
	  return ghit;
  }//guestHit end
  
  public int guestDelete( String my ) { 
  	 int ok=0;
	 try {
		msg="delete from guest where sabun = ? " ;
		PST=CN.prepareStatement(msg);
		PST.setString(1, my);
		ok = PST.executeUpdate();
		System.out.println(my +" ������ ��������");
	 }catch (Exception e){System.out.println(e);}
	 return ok; 
   }//guestDelete end
	
  
  public void guestEdit(GuestDTO dto) {
	 try { 
	  msg="update guest set name=?, title=?, wdate=sysdate, pay=?, email=? where sabun=? ";
	  //msg="~title=?, wdate=sysdate, pay=?, email=? where sabun=?";
	  
	  PST=CN.prepareStatement(msg); //�����;˸��̿����� ������������
	  	PST.setString(1, dto.getName());
	  	PST.setString(2, dto.getTitle());
	  	PST.setInt(3, dto.getPay());
	  	PST.setString(4, dto.getEmail());
	  	PST.setInt(5, dto.getSabun()); //where sabun = 5?
	  PST.executeUpdate(); //��¥����
	  System.out.println(dto.getSabun() +" ������� ��������");
	 }catch(Exception e) { }
  }//end
  
}//GuestSQL class END












