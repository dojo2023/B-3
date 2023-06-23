package model;
import java.io.Serializable;

public class  Memos implements Serializable {

	//他テーブルから引っ張ってくるもの
	private int id_memos;
	private int id_users;
	private String memo_title;
	private String memo;


	//入力された値を引数とするメソッド
	public Memos(int id_memos,int id_users, String memo_title, String memo) {

		super();
		this.id_memos = id_memos;
		this.id_users = id_users;
		this.memo_title = memo_title;
		this.memo = memo;

	}

	//引数がない場合は空欄にするメソッド
	public Memos() {
		super();
		this.id_memos = 0;
		this.id_users = 0;
		this.memo_title = "";
		this.memo = "";

}

	public int getid_memos() {
		return id_memos;
	}
	public void setid_memos(int id_memos) {
		this.id_memos = id_memos;
	}
	public int getid_users() {
		return id_users;
	}
	public void setid_users(int id_users) {
		this.id_users = id_users;
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
