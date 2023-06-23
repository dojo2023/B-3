package model;
import java.io.Serializable;

public class  Scores implements Serializable {

	//他テーブルから引っ張ってくるもの
	private String id_scores;
	private String id_shops;
	private String score;
	private String id_users;


	//入力された値を引数とするメソッド
	public Scores(String id_scores, String id_shops, String score,String id_users) {

		super();
		this.id_scores = id_scores;
		this.id_shops = id_shops;
		this.score = score;
		this.id_users = id_users;

	}

	//引数がない場合は空欄にするメソッド
	public Scores() {
		super();
		this.id_scores = "";
		this.id_shops = "";
		this.score = "";
		this.id_users = "";

}
	public String getid_scores() {
		return id_scores;
	}
	public void setid_scores(String id_scores) {
		this.id_scores = id_scores;
	}

	public String getid_shops() {
		return id_shops;
	}
	public void setid_shops(String id_shops) {
		this.id_shops = id_shops;
	}
	public String getscore() {
		return score;
	}
	public void setscore(String score) {
		this.score = score;
	}

	public String getid_users() {
		return id_users;
	}
	public void setid_users(String id_users) {
		this.id_users = id_users;
	}

}