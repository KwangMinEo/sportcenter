package center.main;

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
