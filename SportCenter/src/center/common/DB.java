package center.common;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	public static Connection getConnection() {
		Connection CN=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url="jdbc:oracle:thin:@127.0.0.1:1600:XE";
			CN=DriverManager.getConnection(url, "system", "1234");
			}catch(Exception ex){
				System.out.println("데이터베이스 연결실패"+ex.toString());
				}
		return CN;
	}
}
