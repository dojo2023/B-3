package model;

import java.io.Serializable;

public class Shops implements Serializable {
	private String shop_name;
	private String genre;
	private String genre_form;
	private String price_max;
	private String price_min;
	private String open_hei;
	private String close_hei;
	private String open_kyu;
	private String close_kyu;
	private String holiday_mon;
	private String holiday_tue;
	private String holiday_wed;
	private String holiday_thu;
	private String holiday_fri;
	private String holiday_sat;
	private String holiday_sun;
	private String holiday_syuku;
	private String holiday_nenmatsu;
	private String holiday_other;
	private String distance;
	private String address;
	private String tabaco;
	private String sheet_table;
	private String sheet_tatami;
	private String sheet_other;
	private String capacity;
	private String eat_drink;
	private String score;
	private String tel;
	private String homepage;
	private String other;
	private String photo;
	private String remarks_shop;
	private String id_users;



	public Shops(String shop_name,
			 String genre,
			 String genre_form,
			 String price_max,
			 String price_min,
			 String open_hei,
			 String close_hei,
			 String open_kyu,
			 String close_kyu,
			 String holiday_mon,
			 String holiday_tue,
			 String holiday_wed,
			 String holiday_thu,
			 String holiday_fri,
			 String holiday_sat,
			 String holiday_sun,
			 String holiday_syuku,
			 String holiday_nenmatsu,
			 String holiday_other,
			 String distance,
			 String address,
			 String tabaco,
			 String sheet_table,
			 String sheet_tatami,
			 String sheet_other,
			 String capacity,
			 String eat_drink,
			 String score,
			 String tel,
			 String homepage,
			 String other,
			 String photo,
			 String remarks_shop,
			 String id_users) {
		super();
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
		this.photo = photo;
		this.remarks_shop = remarks_shop;
		this.id_users = id_users;

	}


	public Shops() {
		this.shop_name ="";
		this.genre = "";
		this.genre_form = "";
		this.price_max = "";
		this.price_min = "";
		this.open_hei= "";
		this.close_hei = "";
		this.open_kyu = "";
		this.close_kyu = "";
		this.holiday_mon = "";
		this.holiday_tue = "";
		this.holiday_wed = "";
		this.holiday_thu = "";
		this.holiday_fri = "";
		this.holiday_sat = "";
		this.holiday_sun = "";
		this.holiday_syuku = "";
		this.holiday_nenmatsu = "";
		this.holiday_other = "";
		this.distance = "";
		this.address = "";
		this.tabaco = "";
		this.sheet_table = "";
		this.sheet_tatami = "";
		this.sheet_other = "";
		this.capacity = "";
		this.eat_drink = "";
		this.score = "";
		this.tel = "";
		this.homepage = "";
		this.other = "";
		this.photo = "";
		this.remarks_shop = "";
		this.id_users = "";

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


	public String getPrice_max() {
		return price_max;
	}


	public void setPrice_max(String price_max) {
		this.price_max = price_max;
	}


	public String getPrice_min() {
		return price_min;
	}


	public void setPrice_min(String price_min) {
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


	public String getHoliday_mon() {
		return holiday_mon;
	}


	public void setHoliday_mon(String holiday_mon) {
		this.holiday_mon = holiday_mon;
	}


	public String getHoliday_tue() {
		return holiday_tue;
	}


	public void setHoliday_tue(String holiday_tue) {
		this.holiday_tue = holiday_tue;
	}


	public String getHoliday_wed() {
		return holiday_wed;
	}


	public void setHoliday_wed(String holiday_wed) {
		this.holiday_wed = holiday_wed;
	}


	public String getHoliday_thu() {
		return holiday_thu;
	}


	public void setHoliday_thu(String holiday_thu) {
		this.holiday_thu = holiday_thu;
	}


	public String getHoliday_fri() {
		return holiday_fri;
	}


	public void setHoliday_fri(String holiday_fri) {
		this.holiday_fri = holiday_fri;
	}


	public String getHoliday_sat() {
		return holiday_sat;
	}


	public void setHoliday_sat(String holiday_sat) {
		this.holiday_sat = holiday_sat;
	}


	public String getHoliday_sun() {
		return holiday_sun;
	}


	public void setHoliday_sun(String holiday_sun) {
		this.holiday_sun = holiday_sun;
	}


	public String getHoliday_syuku() {
		return holiday_syuku;
	}


	public void setHoliday_syuku(String holiday_syuku) {
		this.holiday_syuku = holiday_syuku;
	}


	public String getHoliday_nenmatsu() {
		return holiday_nenmatsu;
	}


	public void setHoliday_nenmatsu(String holiday_nenmatsu) {
		this.holiday_nenmatsu = holiday_nenmatsu;
	}


	public String getHoliday_other() {
		return holiday_other;
	}


	public void setHoliday_other(String holiday_other) {
		this.holiday_other = holiday_other;
	}


	public String getDistance() {
		return distance;
	}


	public void setDistance(String distance) {
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


	public String getCapacity() {
		return capacity;
	}


	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}


	public String getEat_drink() {
		return eat_drink;
	}


	public void setEat_drink(String eat_drink) {
		this.eat_drink = eat_drink;
	}


	public String getScore() {
		return score;
	}


	public void setScore(String score) {
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


	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	public String getRemarks_shop() {
		return remarks_shop;
	}


	public void setRemarks_shop(String remarks_shop) {
		this.remarks_shop = remarks_shop;
	}


	public String getId_users() {
		return id_users;
	}


	public void setId_users(String id_users) {
		this.id_users = id_users;
	}


}