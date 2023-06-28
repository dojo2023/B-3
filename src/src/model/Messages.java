package model;

import java.io.Serializable;

public class Messages implements Serializable {

	//他テーブルから引っ張ってくるもの
	private int  id_users;

	private int  id_messages;
	private String  created_at;
	private String  updated_at;
	private String  date;
	private String  title;
	private String  message;

	//入力された値を引数とするメソッド
	public Messages(int id_users, int id_messages, String created_at, String updated_at, String date, String title, String message) {
		super();
		this.id_users = id_users;
		this.id_messages = id_messages;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.date = date;
		this.title = title;
		this.message = message;

	}

	//引数がない場合は空欄にするメソッド
	public Messages() {
		super();
		this.id_users = 0;
		this.id_messages= 0;
		this.created_at = "";
		this.updated_at = "";
		this.date = "";
		this.title = "";
		this.message = "";

}
	public int getIdUsers() {
		return id_users;
	}
	public void setIdUsers(int id_users) {
		this.id_users = id_users;
	}
	public int getIdMessages() {
		return id_messages;
	}
	public void setIdMessages(int id_messages) {
		this.id_messages = id_messages;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
