package center.main;

import java.util.Date;

public class CenterDTO1 {
	private String id;
	private int Rrn;
	private String name;
	private String Rcontent;
	private String Rnum;
	private String Rstart;
	private String Rend;
	private int Rconfirm;
	private int Rmoney;
	private int Syear, Smonth, Sday;
	private int Eyear, Emonth, Eday;
	
	private String Lid, Title, Content, Center;
	private int Lrn, HIT;
	private Date Sdate;
	
//	게시판 데이터 출력
	public String getLid() { return Lid; }
	public void setLid(String lid) { Lid = lid; }
	
	public String getTitle() { return Title; }
	public void setTitle(String title) { Title = title; }
	
	public String getContent() { return Content; }
	public void setContent(String content) { Content = content;	}
	
	public String getCenter() { return Center; }
	public void setCenter(String center) { Center = center; }
	
	public int getLrn() { return Lrn; }
	public void setLrn(int lrn) { Lrn = lrn; }
	
	public int getHIT() { return HIT; }
	public void setHIT(int hIT) { HIT = hIT; }
	
	public Date getSdate() { return Sdate; }
	public void setSdate(Date sdate) { this.Sdate = sdate; }
	
//	달력데이터 가져오기
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	
	public int getSyear() { return Syear; }
	public void setSyear(int syear) { Syear = syear; }
	
	public int getSmonth() { return Smonth;	}
	public void setSmonth(int smonth) {	Smonth = smonth; }
	
	public int getSday() { return Sday; }
	public void setSday(int sday) {	Sday = sday; }
	
	public int getEyear() {	return Eyear; }
	public void setEyear(int eyear) { Eyear = eyear; }
	
	public int getEmonth() { return Emonth; }
	public void setEmonth(int emonth) {	Emonth = emonth; }
	
	public int getEday() { return Eday;	}
	public void setEday(int eday) {	Eday = eday; }

//	예약데이터 저장
	public int getRrn() { return Rrn; }
	public void setRrn(int rrn) { Rrn = rrn; }
	
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	
	public String getRcontent() { return Rcontent; }
	public void setRcontent(String rcontent) { Rcontent = rcontent; }
	
	public String getRnum() { return Rnum; }
	public void setRnum(String string) { Rnum = string; }
	
	public String getRstart() { return Rstart; }
	public void setRstart(String rstart) { Rstart = rstart; }
	
	public String getRend() { return Rend; }
	public void setRend(String rend) { Rend = rend; }
	
	public int getRconfirm() { return Rconfirm;	}
	public void setRconfirm(int rconfirm) {	Rconfirm = rconfirm; }
	
	public int getRmoney() { return Rmoney; }
	public void setRmoney(int rmoney) {	Rmoney = rmoney; }
	
}
