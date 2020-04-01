package center.main;

import java.sql.Connection;
import java.util.Date;

import center.common.DB;
import center.common.Global;
import center.main.CenterDTO2;

public class CenterSQL2 extends Global{
	{
	try {
		Connection CN = DB.getConnection();
		System.out.println("CenterSQL2.java에 연결 성공");
	} catch (Exception e) {
		System.out.println("CenterSQL2.java에 연결 실패 : " + e);
	}
}
	
	 public int centerInsert(CenterDTO2 dto) {
		int ok = 0;
		try {

		 msg="insert into CLIENTDATA values(?,?,?,?,TO_DATE(?,'YYYYMMDD'),?,?,?)";
		 PST = CN.prepareStatement(msg);
		 	   PST.setString(1, dto.getId());
		 	   PST.setString(2, dto.getPwd());
		 	   PST.setString(3, dto.getName());
		 	   PST.setString(4, dto.getPhone());
		 	   PST.setDate(5, dto.getBdate());
		 	   PST.setInt(6, dto.getGender());
		 	   PST.setString(7, dto.getEmail());
		 	   PST.setString(8, dto.getLoc());
		 ok = PST.executeUpdate();
		 if(ok>0){System.out.println("CenterSQL2 centerInsert 성공"); }
		}catch(Exception ex){System.out.println("CenterSQL2 centerInsert 실패" + ex); }
		return ok ;
	  }//end
	 
	 public int centerInsert2(CenterDTO2 dto) {
		int ok = 0;
		try {

		 msg="insert into CLIENTDATA values('"+dto.getId()+"','"+dto.getPwd()+"','"+dto.getName()+"','"+dto.getPhone()+"',TO_DATE("+dto.getBdate()+",'YYYYMMDD'),"+dto.getGender()+",'"+dto.getEmail()+"','"+dto.getLoc()+"')";
			ST=CN.createStatement();
			ok=ST.executeUpdate(msg);
		 
		 if(ok>0){System.out.println("CenterSQL2 centerInsert 성공"); }
		}catch(Exception ex){System.out.println("CenterSQL2 centerInsert 실패" + ex); }
		return ok ;
	  }//end
}
