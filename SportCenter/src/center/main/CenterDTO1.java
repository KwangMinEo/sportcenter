package center.main;

public class CenterDTO1 {
	private String id;
	private int Rrn;
	private String name;
	private String Rcontent;
	private int Rnum;
	private java.util.Date Rstart;
	private java.util.Date Rend;
	private boolean Rconfirm;
	private int Rmoney;
	
	
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	
	public int getRrn() { return Rrn; }
	public void setRrn(int rrn) { Rrn = rrn; }
	
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	
	public String getRcontent() { return Rcontent; }
	public void setRcontent(String rcontent) { Rcontent = rcontent; }
	
	public int getRnum() { return Rnum; }
	public void setRnum(int rnum) { Rnum = rnum; }
	
	public java.util.Date getRstart() { return Rstart; }
	public void setRstart(java.util.Date rstart) { Rstart = rstart; }
	
	public java.util.Date getRend() { return Rend; }
	public void setRend(java.util.Date rend) { Rend = rend; }
	
	public boolean isRconfirm() { return Rconfirm; }
	public void setRconfirm(boolean rconfirm) { Rconfirm = rconfirm; }
	
	public int getRmoney() { return Rmoney; }
	public void setRmoney(int rmoney) {	Rmoney = rmoney; }
	
}
