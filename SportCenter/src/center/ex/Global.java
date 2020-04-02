package center.ex;

import java.sql.*;
import java.util.Date;
import java.util.ArrayList; //��ü��ȸ,�Ѱ���ȸ

public class Global {
	public  Connection CN ; //DB���������� user/pwd���, CN�����ؼ� ��ɾ����
	public  Statement ST ; //�����θ�ɾ� ST=CN.createStatement(X);
	public  PreparedStatement PST; //�����θ�ɾ� PST=CN.prepareStatement(sql);
	public  CallableStatement CS ; //���߿� storedprocedure
	public  ResultSet RS ;//��ȸ�Ѱ����� RS=ST.executeQuery(select~),RS.next()
		
	public  int Grn; //���ȣ		  
	public  int Gsabun, Gpay , Ghit; //���,�޿�,��ȸ��
	public  String Gname, Gtitle ; //�̸�,����
	public  Date Gwdate ; //��¥
	public  String Gemail; //����
	  
	public  int Gdata ; //int data ��� 
	public  int Gtotal = 1 ; //��ȸ���ڵ尹��
	public  int Atotal = 1 ; //��ü���ڵ尹��
	public  String msg ; //����������ϴ� ���ڿ�
	public  ArrayList  Glist ; 
}//Global class END




