package model;
import java.io.Serializable;

public class  Position_memos implements Serializable {

	//他テーブルから引っ張ってくるもの
	private String mail;
	private String name_position;
	private String position;
	private String tabaco_position;
	private String favorite1;
	private String favorite2;
	private String ng;
	private String remarks_position;


	//入力された値を引数とするメソッド
	public Position_memos(String mail, String name_position, String position,String tabaco_position,
			String favorite1,String favorite2,String ng,String remarks_position) {

		super();
		this.mail = mail;
		this.name_position = name_position;
		this.position = position;
		this.tabaco_position = tabaco_position;
		this.favorite1 = favorite1;
		this.favorite2 = favorite2;
		this.ng = ng;
		this.remarks_position = remarks_position;

	}

	//引数がない場合は空欄にするメソッド
	public Position_memos() {
		super();
		this.mail = "";
		this.name_position = "";
		this.position = "";
		this.tabaco_position = "";
		this.favorite1 = "";
		this.favorite2 = "";
		this.ng = "";
		this.remarks_position = "";

}
	public String getmail() {
		return mail;
	}
	public void setmail(String mail) {
		this.mail = mail;
	}

	public String getname_position() {
		return name_position;
	}
	public void setname_position(String name_position) {
		this.name_position = name_position;
	}

	public String getposition() {
		return position;
	}
	public void setposition(String position) {
		this.position = position;
	}
	public String gettabaco_position() {
		return tabaco_position;
	}
	public void settabaco_position(String tabaco_position) {
		this.tabaco_position = tabaco_position;
	}
	public String getfavorite1() {
		return favorite1;
	}
	public void setfavorite1(String favorite1) {
		this.favorite1 = favorite1;
	}
	public String getfavorite2() {
		return favorite2;
	}
	public void setfavorite2(String favorite2) {
		this.favorite2 = favorite2;
	}
	public String getng() {
		return ng;
	}
	public void setng(String ng) {
		this.ng = ng;
	}
	public String getremarks_position() {
		return remarks_position;
	}
	public void setremarks_position(String remarks_position) {
		this.remarks_position = remarks_position;
	}

}
