package model;

import java.io.Serializable;

public class Shops implements Serializable {
	private String shop_name;
	private String genre;

	shop_name	varchar(30) not null,
	genre		varchar(30) not null,
	genre_form	varchar(30) not null,
	price_max	int,
	price_min	int,
	open_hei	time,
	close_hei	time,
	open_kyu	time,
	close_kyu	time,
	holiday_mon	boolean,
	holiday_tue	boolean,
	holiday_wed	boolean,
	holiday_thu	boolean,
	holiday_fri	boolean,
	holiday_sat	boolean,
	holiday_sun	boolean,
	holiday_syuku	boolean,
	holiday_nenmatsu	boolean,
	holiday_other	varchar(10),
	distance	int,
	address		varchar(50),
	tabaco		varchar(5),
	sheet_table	boolean,
	sheet_tatami	boolean,
	sheet_other	varchar(10),
	capacity	int,
	eat_drink	varchar(10),
	score		int,
	tel		varchar(20),
	homepage	varchar(100),
	other		varchar(100),
	photo		varchar(50),
	remarks_shop	varchar(200),
	id_users	int,



	public Shops(String id, String number, String name, String zipcode, String address, String company, String department,
			String position, String email, String tel, String day, String note) {
		super();
		this.id = id;
		this.number = number;
		this.name = name;
		this.zipcode = zipcode;
		this.address = address;
		this.company = company;
		this.department = department;
		this.position = position;
		this.email = email;
		this.tel = tel;
		this.day = day;
		this.note = note;
	}


	public Shops() {
		super();
		this.id = "";
		this.number = "";
		this.name = "";
		this.zipcode = "";
		this.address = "";
		this.company = "";
		this.department = "";
		this.position = "";
		this.email = "";
		this.tel = "";
		this.day = "";
		this.note = "";
	}


}