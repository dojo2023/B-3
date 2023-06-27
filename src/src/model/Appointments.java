package model;
import java.io.Serializable;

public class  Appointments implements Serializable {

	//他テーブルから引っ張ってくるもの
	private int  id_users;
	private int  id_shops;


	private int  id_appointments;
	private String  created_at;
	private String  updated_at;
	private String  appointment_date;
	private String  appointment_time;
	private String  department;
	private int  people;
	private String  remarks_reserve
;
	//入力された値を引数とするメソッド
	public Appointments(int id_users, int id_shops, int id_appointments, String created_at, String updated_at, String appointment_date, String appointment_time, String department,
			 int people, String remarks_reserve) {

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
		this.id_users = 0;
		this.id_shops = 0;
		this.id_appointments = 0;
		this.created_at = "";
		this.updated_at = "";
		this.appointment_date = "";
		this.appointment_time = "";
		this.department = "";
		this.people = 0;
		this.remarks_reserve = "";

}
	public int getIdUsers() {
		return id_users;
	}
	public void setIdUsers(int id_users) {
		this.id_users = id_users;
	}

	public int getIdShops() {
		return id_shops;
	}
	public void setIdShops(int id_shops) {
		this.id_shops = id_shops;
	}

	public int getIdAppointments() {
		return id_appointments;
	}
	public void setIdAppointments(int id_appointments) {
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


	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}


	public String getRemarks() {
		return remarks_reserve;
	}
	public void setRemarks(String remarks_reserve) {
		this.remarks_reserve = remarks_reserve;
	}

}
