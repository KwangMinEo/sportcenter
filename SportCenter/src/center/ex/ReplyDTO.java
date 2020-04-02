package center.ex;

public class ReplyDTO { //����=Data Transfer Object
	private int num ;
	private String writer;
	private String content;
	private int sabun; //guest���̺����ʵ忬��
	private int rrn; //����� �۹�ȣ 
	
	public int getRrn() { return rrn;	}
	public void setRrn(int rrn) {	this.rrn = rrn;	}
	//��.��=>source=>Generate Getter and Setter...
	
	public int getNum() {	return num;	}
	public void setNum(int num) {	this.num = num;	}
	public String getWriter() {	return writer;	}
	public void setWriter(String writer) {	this.writer = writer;	}
	public String getContent() {return content;	}
	public void setContent(String content) {	this.content = content;	}
	public int getSabun() {	return sabun;	}
	public void setSabun(int sabun) {	this.sabun = sabun;	}
}//ReplyDTO class END
