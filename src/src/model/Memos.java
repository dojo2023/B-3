package model;
import java.io.Serializable;

public class  Memos implements Serializable {

	//他テーブルから引っ張ってくるもの
	private String  ;
	private String  ;


	private String  ;
	private String  ;
	private String  ;
	private String  ;
	private String  ;
	private String  ;
	private String  ;
	private String  ;
	
	
	//入力された値を引数とするメソッド
	public Appointments(String id_users, String id_shops, String id_appointments, String created_at, String updated_at, String appointment_date, String appointment_time, String department,
			 String people, String remarks_reserve) {

		super();
		this.id_users = id_users;
		this.id_shops = id_shops;
		this.id_appointments = id_appointments;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.appointment_date = appointment_date;
		this.appointment_time = appointment_time;
		this.department = department;
		this.people = people;
		this.remarks_reserve = remarks_reserve;
	}

	//引数がない場合は空欄にするメソッド
	public Appointments() {
		super();
		this.id_users = "";
		this.id_shops = "";
		this.id_appointments = "";
		this.created_at = "";
		this.updated_at = "";
		this.appointment_date = "";
		this.appointment_time = "";
		this.department = "";
		this.people ="";
		this.remarks_reserve = "";

}
	public String getIdUsers() {
		return id_users;
	}
	public void setIdUsers(String id_users) {
		this.id_users = id_users;
	}

	public String getIdShops() {
		return id_shops;
	}
	public void setIdShops(String id_shops) {
		this.id_shops = id_shops;
	}

	public String getIdAppointments() {
		return id_appointments;
	}
	public void setIdAppointments(String id_appointments) {
		this.id_appointments = id_appointments;
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


	public String getAppointmentDate() {
		return appointment_date;
	}
	public void setAppointmentDate(String appointment_date) {
		this.appointment_date = appointment_date;
	}


	public String getAppointmentTime() {
		return appointment_time;
	}
	public void setAppointmentTime(String appointment_time) {
		this.appointment_time = appointment_time;
	}


	public String getDepartment() {
		return department;
	}
	public void  setDepartment(String department) {
		this.department = department;
	}


	public String getPeoplel() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}


	public String getRemarks() {
		return remarks_reserve;
	}
	public void setRemarks(String remarks_reserve) {
		this.remarks_reserve = remarks_reserve;
	}

}
