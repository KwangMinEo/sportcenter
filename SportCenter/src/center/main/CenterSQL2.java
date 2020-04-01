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
		System.out.println("GuesSQL.java에 연결 성공");
	} catch (Exception e) {
		System.out.println("GuesSQL.java에 연결 실패 : " + e);
	}
}
	
	 public int centerInsert(CenterDTO2 dto) {
		int ok = 0;
		try {

		 msg="insert into guest values(?, ?, ?, sysdate, ?, 0, ?)";
		 PST = CN.prepareStatement(msg);
		 	   PST.setInt(1, dto.getSabun()); //PST.setInt(1, a);
		 	   PST.setString(2, dto.getName()); //PST.setString(2, b);
		 	   PST.setString(3, dto.getTitle()); //PST.setString(3, c);
		 	   PST.setInt(4, dto.getPay());  //PST.setInt(4, d);
		 	   PST.setString(5, dto.getEmail()); //PST.setString(5, e);
		 ok = PST.executeUpdate();
		 if(ok>0){System.out.println("----"); }
		}catch(Exception ex){ }
		return ok ;
	  }//end
	  
	
	
	
	
}
