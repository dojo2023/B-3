package model;
import java.io.Serializable;

public class  Memos implements Serializable {

	//他テーブルから引っ張ってくるもの
	private String mail;
	private String memo_title;
	private String memo;


	//入力された値を引数とするメソッド
	public Memos(String mail, String memo_title, String memo) {

		super();
		this.mail = mail;
		this.memo_title = memo_title;
		this.memo = memo;

	}

	//引数がない場合は空欄にするメソッド
	public Memos() {
		super();
		this.mail = "";
		this.memo_title = "";
		this.memo = "";

}
	public String getmail() {
		return mail;
	}
	public void setmail(String mail) {
		this.mail = mail;
	}

	public String getmemo_title() {
		return memo_title;
	}
	public void setmemo_title(String memo_title) {
		this.memo_title = memo_title;
	}

	public String getmemo() {
		return memo;
	}
	public void setmemo(String memo) {
		this.memo = memo;
	}

}
