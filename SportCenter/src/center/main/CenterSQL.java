package center.main;

import java.sql.Connection;

import center.common.DB;

public class CenterSQL {
	{
	try {
		Connection CN = DB.getConnection();
		System.out.println("GuesSQL.java�⺻������ db���� ����");
	} catch (Exception e) {
		System.out.println("GuesSQL.java�⺻������ db���� ����  : " + e);
	}
}	
}
