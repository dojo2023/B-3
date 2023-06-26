package model;

import java.io.Serializable;

public class Shops implements Serializable {
	private int shop_id;
	private String shop_name;
	private String genre;
	private String genre_form;
	private int price_max;
	private int price_min;
	private String open_hei;
	private String close_hei;
	private String open_kyu;
	private String close_kyu;
	private Boolean holiday_mon;
	private Boolean holiday_tue;
	private Boolean holiday_wed;
	private Boolean holiday_thu;
	private Boolean holiday_fri;
	private Boolean holiday_sat;
	private Boolean holiday_sun;
	private Boolean holiday_syuku;
	private Boolean holiday_nenmatsu;
	private String holiday_other;
	private int distance;
	private String address;
	private String tabaco;
	private Boolean sheet_table;
	private Boolean sheet_tatami;
	private String sheet_other;
	private int capacity;
	private String eat_drink;
	private int score;
	private String tel;
	private String homepage;
	private String other;
	private String filename;
	private String remarks_shop;
	private int id_users;



	public Shops(
			int shop_id,
			 String shop_name,
			 String genre,
			 String genre_form,
			 int price_max,
			 int price_min,
			 String open_hei,
			 String close_hei,
			 String open_kyu,
			 String close_kyu,
			 Boolean holiday_mon,
			 Boolean holiday_tue,
			 Boolean holiday_wed,
			 Boolean holiday_thu,
			 Boolean holiday_fri,
			 Boolean holiday_sat,
			 Boolean holiday_sun,
			 Boolean holiday_syuku,
			 Boolean holiday_nenmatsu,
			 String holiday_other,
			 int distance,
			 String address,
			 String tabaco,
			 Boolean sheet_table,
			 Boolean sheet_tatami,
			 String sheet_other,
			 int capacity,
			 String eat_drink,
			 int score,
			 String tel,
			 String homepage,
			 String other,
			 String filename,
			 String remarks_shop,
			 int id_users)

	{
		super();
		this.shop_id=shop_id;
		this.shop_name =shop_name;
		this.genre = genre;
		this.genre_form = genre_form;
		this.price_max = price_max;
		this.price_min = price_min;
		this.open_hei= open_hei;
		this.close_hei = close_hei;
		this.open_kyu = open_kyu;
		this.close_kyu = close_kyu;
		this.holiday_mon = holiday_mon;
		this.holiday_tue = holiday_tue;
		this.holiday_wed = holiday_wed;
		this.holiday_thu = holiday_thu;
		this.holiday_fri = holiday_fri;
		this.holiday_sat = holiday_sat;
		this.holiday_sun = holiday_sun;
		this.holiday_syuku = holiday_syuku;
		this.holiday_nenmatsu = holiday_nenmatsu;
		this.holiday_other = holiday_other;
		this.distance = distance;
		this.address = address;
		this.tabaco = tabaco;
		this.sheet_table = sheet_table;
		this.sheet_tatami = sheet_tatami;
		this.sheet_other = sheet_other;
		this.capacity = capacity;
		this.eat_drink = eat_drink;
		this.score = score;
		this.tel = tel;
		this.homepage = homepage;
		this.other = other;
		this.filename = filename;
		this.remarks_shop = remarks_shop;
		this.id_users = id_users;

	}


	public Shops() {
		this.shop_id=0;
		this.shop_name ="";
		this.genre = "";
		this.genre_form = "";
		this.price_max = 0;
		this.price_min = 0;
		this.open_hei= "";
		this.close_hei = "";
		this.open_kyu = "";
		this.close_kyu = "";
		this.holiday_mon = false;
		this.holiday_tue = false;
		this.holiday_wed = false;
		this.holiday_thu = false;
		this.holiday_fri = false;
		this.holiday_sat = false;
		this.holiday_sun = false;
		this.holiday_syuku = false;
		this.holiday_nenmatsu = false;
		this.holiday_other = "";
		this.distance = 0;
		this.address = "";
		this.tabaco = "";
		this.sheet_table = false;
		this.sheet_tatami = false;
		this.sheet_other = "";
		this.capacity = 0;
		this.eat_drink = "";
		this.score = 0;
		this.tel = "";
		this.homepage = "";
		this.other = "";
		this.filename = "";
		this.remarks_shop = "";
		this.id_users = 0;

	}


	public int getShop_id() {
		return shop_id;
	}


	public void setShop_id(int shop_id) {
		this.shop_id = shop_id;
	}


	public String getShop_name() {
		return shop_name;
	}


	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
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


	public Boolean getHoliday_mon() {
		return holiday_mon;
	}


	public void setHoliday_mon(Boolean holiday_mon) {
		this.holiday_mon = holiday_mon;
	}


	public Boolean getHoliday_tue() {
		return holiday_tue;
	}


	public void setHoliday_tue(Boolean holiday_tue) {
		this.holiday_tue = holiday_tue;
	}


	public Boolean getHoliday_wed() {
		return holiday_wed;
	}


	public void setHoliday_wed(Boolean holiday_wed) {
		this.holiday_wed = holiday_wed;
	}


	public Boolean getHoliday_thu() {
		return holiday_thu;
	}


	public void setHoliday_thu(Boolean holiday_thu) {
		this.holiday_thu = holiday_thu;
	}


	public Boolean getHoliday_fri() {
		return holiday_fri;
	}


	public void setHoliday_fri(Boolean holiday_fri) {
		this.holiday_fri = holiday_fri;
	}


	public Boolean getHoliday_sat() {
		return holiday_sat;
	}


	public void setHoliday_sat(Boolean holiday_sat) {
		this.holiday_sat = holiday_sat;
	}


	public Boolean getHoliday_sun() {
		return holiday_sun;
	}


	public void setHoliday_sun(Boolean holiday_sun) {
		this.holiday_sun = holiday_sun;
	}


	public Boolean getHoliday_syuku() {
		return holiday_syuku;
	}


	public void setHoliday_syuku(Boolean holiday_syuku) {
		this.holiday_syuku = holiday_syuku;
	}


	public Boolean getHoliday_nenmatsu() {
		return holiday_nenmatsu;
	}


	public void setHoliday_nenmatsu(Boolean holiday_nenmatsu) {
		this.holiday_nenmatsu = holiday_nenmatsu;
	}


	public String getHoliday_other() {
		return holiday_other;
	}


	public void setHoliday_other(String holiday_other) {
		this.holiday_other = holiday_other;
	}


	public int getDistance() {
		return distance;
	}


	public void setDistance(int distance) {
		this.distance = distance;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getTabaco() {
		return tabaco;
	}


	public void setTabaco(String tabaco) {
		this.tabaco = tabaco;
	}


	public Boolean getSheet_table() {
		return sheet_table;
	}


	public void setSheet_table(Boolean sheet_table) {
		this.sheet_table = sheet_table;
	}


	public Boolean getSheet_tatami() {
		return sheet_tatami;
	}


	public void setSheet_tatami(Boolean sheet_tatami) {
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


	public int getScore() {
		return score;
	}


	public void setScore(int score) {
		this.score = score;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getHomepage() {
		return homepage;
	}


	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}


	public String getOther() {
		return other;
	}


	public void setOther(String other) {
		this.other = other;
	}


	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}


	public String getRemarks_shop() {
		return remarks_shop;
	}


	public void setRemarks_shop(String remarks_shop) {
		this.remarks_shop = remarks_shop;
	}


	public int getId_users() {
		return id_users;
	}


	public void setId_users(int id_users) {
		this.id_users = id_users;
	}




}