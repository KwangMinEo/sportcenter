package center.common;

import java.sql.*;
import java.util.Date;
import java.util.ArrayList;//��ü��ȸ, �Ѱ���ȸ

public class Global {// �ٸ���Ű���� �������� public �� �ؾ��Ѵ�.
	public Connection CN;
	public Statement ST;
	public PreparedStatement PST;
	public ResultSet RS;
	public CallableStatement cs;
	public String Gemail;

	public int Atotal = 1;
	public int Gtotal = 1;

	public int GRN, Gdata;
	public int Gsabun, Gpay;
	public String Gname, Gtitle;
	public Date Gwdate;

	public String msg;

	public ArrayList Glist;
}
