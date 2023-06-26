package model;
import java.io.Serializable;

public class  Admin_messages implements Serializable {

	//他テーブルから引っ張ってくるもの
	private int id_admin_messages;
	private String created_at;
	private String updated_at;
	private String information_title;
	private String information_subtitle;
	private String information_photo;
	private String information;


	//入力された値を引数とするメソッド
	public Admin_messages(int id_admin_messages, String created_at, String updated_at,String information_title,
			String information_subtitle,String information_photo,String information) {

		super();
		this.id_admin_messages = id_admin_messages;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.information_title = information_title;
		this.information_subtitle = information_subtitle;
		this.information_photo = information_photo;
		this.information = information;

	}

	//引数がない場合は空欄にするメソッド
	public Admin_messages() {
		super();
		this.id_admin_messages = 0;
		this.created_at = "";
		this.updated_at = "";
		this.information_title = "";
		this.information_subtitle = "";
		this.information_photo = "";
		this.information = "";

}
	public int getid_admin_messages() {
		return id_admin_messages;
	}
	public void setid_admin_messages(int id_admin_messages) {
		this.id_admin_messages = id_admin_messages;
	}

	public String getcreated_at() {
		return created_at;
	}
	public void setcreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getupdated_at() {
		return updated_at;
	}
	public void setupdated_at(String updated_at) {
		this.updated_at = updated_at;
	}
	public String getinformation_title() {
		return information_title;
	}
	public void setinformation_title(String information_title) {
		this.information_title = information_title;
	}
	public String getinformation_subtitle() {
		return information_subtitle;
	}
	public void setinformation_subtitle(String information_subtitle) {
		this.information_subtitle = information_subtitle;
	}
	public String getinformation_photo() {
		return information_photo;
	}
	public void setinformation_photo(String information_photo) {
		this.information_photo = information_photo;
	}
	public String getinformation() {
		return information;
	}
	public void setinformation(String information) {
		this.information = information;
	}

}