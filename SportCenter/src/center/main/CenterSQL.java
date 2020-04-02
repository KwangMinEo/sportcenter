package center.main;

import java.sql.Connection;

import center.common.DB;
import center.common.Global;

public class CenterSQL extends Global {
	{
	try {
		Connection CN = DB.getConnection();
		System.out.println("GuesSQL1.java에 연결 성공");
	} catch (Exception e) {
		System.out.println("GuesSQL1.java에 연결 실패 : " + e);
	}
}

	
	
	
	
	
}
