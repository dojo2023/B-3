package model;

import java.io.Serializable;

public class Presets implements Serializable {

	private String preset_name;
	private String genre;
	private String genre_form;
	private int price_max;
	private int price_min;
	private String open_hei;
	private String close_hei;
	private String open_kyu;
	private String close_kyu;
	private int distance;
	private String tabaco;
	private String sheet_table;
	private String sheet_tatami;
	private String sheet_other;
	private int capacity;
	private String eat_drink;

	//他テーブルから引っ張ってくるもの
	private int id_users;


	//入力された値を引数とするメソッド
	public Presets(
			 String preset_name,
			 String genre,
			 String genre_form,
			 int price_max,
			 int price_min,
			 String open_hei,
			 String close_hei,
			 String open_kyu,
			 String close_kyu,
			 int distance,
			 String tabaco,
			 String sheet_table,
			 String sheet_tatami,
			 String sheet_other,
			 int capacity,
			 String eat_drink,
			 int id_users)

	{
		super();
		this.preset_name = preset_name;
		this.genre = genre;
		this.genre_form = genre_form;
		this.price_max = price_max;
		this.price_min = price_min;
		this.open_hei= open_hei;
		this.close_hei = close_hei;
		this.open_kyu = open_kyu;
		this.close_kyu = close_kyu;
		this.tabaco = tabaco;
		this.sheet_table = sheet_table;
		this.sheet_tatami = sheet_tatami;
		this.sheet_other = sheet_other;
		this.capacity = capacity;
		this.eat_drink = eat_drink;
		this.id_users = id_users;
	}
	//引数がない場合は空欄にするメソッド
		public Presets() {

		this.preset_name = "";
		this.genre = "";
		this.genre_form = "";
		this.price_max = 0;
		this.price_min = 0;
		this.open_hei= "";
		this.close_hei = "";
		this.open_kyu = "";
		this.close_kyu = "";
		this.distance = 0;
		this.tabaco = "";
		this.sheet_table = "";
		this.sheet_tatami = "";
		this.sheet_other = "";
		this.capacity = 0;
		this.eat_drink = "";
		this.id_users = 0;

	}


	public String getPreset_name() {
		return preset_name;
	}


	public void setPreset_name(String preset_name) {
		this.preset_name = preset_name;
	}


	public String getGenre() {
		return genre;
	}


	public void setGenre(String genre) {
		this.genre = genre;
	}


	public String getGenre_form() {
		return genre_form;
	}


	public void setGenre_form(String genre_form) {
		this.genre_form = genre_form;
	}


	public int getPrice_max() {
		return price_max;
	}


	public void setPrice_max(int price_max) {
		this.price_max = price_max;
	}


	public int getPrice_min() {
		return price_min;
	}


	public void setPrice_min(int price_min) {
		this.price_min = price_min;
	}


	public String getOpen_hei() {
		return open_hei;
	}


	public void setOpen_hei(String open_hei) {
		this.open_hei = open_hei;
	}


	public String getClose_hei() {
		return close_hei;
	}


	public void setClose_hei(String close_hei) {
		this.close_hei = close_hei;
	}


	public String getOpen_kyu() {
		return open_kyu;
	}


	public void setOpen_kyu(String open_kyu) {
		this.open_kyu = open_kyu;
	}


	public String getClose_kyu() {
		return close_kyu;
	}


	public void setClose_kyu(String close_kyu) {
		this.close_kyu = close_kyu;
	}

	public int getDistance() {
		return distance;
	}


	public void setDistance(int distance) {
		this.distance = distance;
	}


	public String getTabaco() {
		return tabaco;
	}


	public void setTabaco(String tabaco) {
		this.tabaco = tabaco;
	}


	public String getSheet_table() {
		return sheet_table;
	}


	public void setSheet_table(String sheet_table) {
		this.sheet_table = sheet_table;
	}


	public String getSheet_tatami() {
		return sheet_tatami;
	}


	public void setSheet_tatami(String sheet_tatami) {
		this.sheet_tatami = sheet_tatami;
	}


	public String getSheet_other() {
		return sheet_other;
	}


	public void setSheet_other(String sheet_other) {
		this.sheet_other = sheet_other;
	}


	public int getCapacity() {
		return capacity;
	}


	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}


	public String getEat_drink() {
		return eat_drink;
	}


	public void setEat_drink(String eat_drink) {
		this.eat_drink = eat_drink;
	}


	public int getId_users() {
		return id_users;
	}


	public void setId_users(int id_users) {
		this.id_users = id_users;
	}




}