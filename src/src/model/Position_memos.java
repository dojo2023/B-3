package model;
import java.io.Serializable;

public class  Position_memos implements Serializable {

	//他テーブルから引っ張ってくるもの
	private int id_users;


	private String created_at;
	private String updated_at;
	private int id_position_memos;
	private String name_position;
	private String position;
	private String tabaco_position;
	private String favorite1;
	private String favorite2;
	private String ng;
	private String remarks_position;


	//入力された値を引数とするメソッド
	public Position_memos (int id_users, int id_position_memos, String created_at, String updated_at, String name_position, String position,String tabaco_position,
			String favorite1,String favorite2,String ng,String remarks_position) {

		super();

		this.id_users = id_users;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.id_position_memos = id_position_memos;
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
		this.id_users =0;
		this.created_at = "";
		this.updated_at = "";
		this.id_position_memos = 0;
		this.name_position = "";
		this.position = "";
		this.tabaco_position = "";
		this.favorite1 = "";
		this.favorite2 = "";
		this.ng = "";
		this.remarks_position = "";

}
	public int getIdUsers() {
		return id_users;
	}
	public void setIdUsers(int id_users) {
		this.id_users = id_users;
	}

	public String getCreatedAt() {
		return created_at;
	}
	public void setCreatedAt(String created_at) {
		this.created_at = created_at;
	}

	public String getUpdatedAt() {
		return updated_at;
	}
	public void setUpdatedAt(String updated_at) {
		this.updated_at = updated_at;
	}

	public int getIdPositionMemos() {
		return id_position_memos;
	}
	public void setIdPositionMemos(int id_position_memos) {
		this.id_position_memos = id_position_memos;
	}

	public String getNamePosition() {
		return name_position;
	}
	public void setNamePosition(String name_position) {
		this.name_position = name_position;
	}

	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getTabacoPosition() {
		return tabaco_position;
	}
	public void setTabacoPosition(String tabaco_position) {
		this.tabaco_position = tabaco_position;
	}
	public String getFavorite1() {
		return favorite1;
	}
	public void setFavorite1(String favorite1) {
		this.favorite1 = favorite1;
	}
	public String getFavorite2() {
		return favorite2;
	}
	public void setFavorite2(String favorite2) {
		this.favorite2 = favorite2;
	}
	public String getNg() {
		return ng;
	}
	public void setNg(String ng) {
		this.ng = ng;
	}
	public String getRemarks_position() {
		return remarks_position;
	}
	public void setRemarks_position(String remarks_position) {
		this.remarks_position = remarks_position;
	}

}
