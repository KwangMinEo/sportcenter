package center.ex;


public class GuestDTO { //DTO=data transfer object VO=value object=������=Domain
  private int sabun;
  private String name;
  private String title;
  private java.util.Date wdate;
  private int pay;
  private int hit;
  private String email;
  private int rn ; 
  private String skey, sval ; 
  private int rcnt ;
   
  	//��۰���
	public int getRcnt() {return rcnt;}
	public void setRcnt(int rcnt) {this.rcnt = rcnt;}
	
	//��.��=>source => Generate Getters and Setters...=> select All
	public int getSabun() {	return sabun;}
	public void setSabun(int sabun) {	this.sabun = sabun;}
	public String getName() {	return name;}
	public void setName(String name) {this.name = name;}
	public java.util.Date getWdate() {return wdate;}
	public void setWdate(java.util.Date wdate) {this.wdate = wdate;}
	public int getPay() {return pay;}
	public void setPay(int pay) {this.pay = pay;}
	public int getHit() {return hit;}
	public void setHit(int hit) {this.hit = hit;}
	
	public String getTitle() {return title;	}
	public void setTitle(String title) {this.title = title;	}
	public String getEmail() {	return email;		}
	public void setEmail(String email) {this.email = email;	}
	public int getRn() {return rn;		}
	public void setRn(int rn) {	this.rn = rn;		}	
	
	//�˻��Ҷ� �ʿ�, ���࿡ �ӽ÷� �� �ʵ��ϸ� �� �߰��ϼ��� 
  	public String getSkey() { return skey;	}
	public void setSkey(String skey) {this.skey = skey;	}
	public String getSval() {return sval;	}
	public void setSval(String sval) {this.sval = sval;	}
}//class END
