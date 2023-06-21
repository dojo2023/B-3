package model;

import java.io.Serializable;

public class Shops implements Serializable {
	private String id;
	private String number;
	private String name;
	private String zipcode;
	private String address;
	private String company;
	private String department;
	private String position;
	private String email;
	private String tel;
	private String day;
	private String note;


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


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getNumber() {
		return number;
	}


	public void setNumber(String number) {
		this.number = number;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getZipcode() {
		return zipcode;
	}


	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCompany() {
		return company;
	}


	public void setCompany(String company) {
		this.company = company;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}


	public String getNote() {
		return note;
	}


	public void setNote(String note) {
		this.note = note;
	}


}
