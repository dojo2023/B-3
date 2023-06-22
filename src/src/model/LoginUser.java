package model;
import java.io.Serializable;

public class LoginUser implements Serializable {
	private String message;	// メッセージ

	public LoginUser() {
		this(null);
	}

	public LoginUser(String message) {
		this.message = message;
	}
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
