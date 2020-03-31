package center.common;

import java.sql.*;
import java.util.Date;
import java.util.ArrayList;

public class Global {
	public Connection CN;
	public Statement ST;
	public PreparedStatement PST;
	public ResultSet RS;
	public CallableStatement cs;
	public String Gemail;

	public int Atotal = 1;
	public int Gtotal = 1;

	public int Rnum, Rmoney, Rrn;
	public String Rid, Rname, Rcontent;
	public Date Rstart, Rend;
	
	
	public String msg;

	public ArrayList Glist;
}
