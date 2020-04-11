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
	
	
	//달력관련
	private String ctitle, cid, cinfo;
	private String start, end;
	
	public String getCtitle() {
		return ctitle;
	}
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCinfo() {
		return cinfo;
	}
	public void setCinfo(String cinfo) {
		this.cinfo = cinfo;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	
		
		
		
	private String Lid, Title, Content, Center;
	private int Lrn, HIT;
	private Date Sdate;
	
//	게시
	private int gtotal, rn;
	
	
	
	
	public int getRn() { return rn; }
	public void setRn(int rn) {	this.rn = rn;}
	
	public int getGtotal() { return gtotal;	}
	public void setGtotal(int gtotal) {	this.gtotal = gtotal; }
	
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
