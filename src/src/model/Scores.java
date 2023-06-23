package model;
import java.io.Serializable;

public class  Scores implements Serializable {

	//他テーブルから引っ張ってくるもの
	private int id_scores;
	private int id_shops;
	private int score;
	private int id_users;


	//入力された値を引数とするメソッド
	public Scores(int id_scores, int id_shops, int score,int id_users) {

		super();
		this.id_scores = id_scores;
		this.id_shops = id_shops;
		this.score = score;
		this.id_users = id_users;

	}

	//引数がない場合は空欄にするメソッド
	public Scores() {
		super();
		this.id_scores = 0;
		this.id_shops = 0;
		this.score = 0;
		this.id_users = 0;

}
	public int getid_scores() {
		return id_scores;
	}
	public void setid_scores(int id_scores) {
		this.id_scores = id_scores;
	}

	public int getid_shops() {
		return id_shops;
	}
	public void setid_shops(int id_shops) {
		this.id_shops = id_shops;
	}
	public int getscore() {
		return score;
	}
	public void setscore(int score) {
		this.score = score;
	}

	public int getid_users() {
		return id_users;
	}
	public void setid_users(int id_users) {
		this.id_users = id_users;
	}

}