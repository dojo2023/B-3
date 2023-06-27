package model;

import java.io.Serializable;

public class IC {
	private String mail;	// ログイン時のID
	private String pass;	// ログイン時のパスワード
	private String name;	// 名前
	private String department;	// 部署

	public Users() {
		this(null);
	}

	public Users(String mail) {
		this.mail = mail;
	}
}
