package model;
import java.io.Serializable;

public class  Appointments implements Serializable {
	private String  appointment_date;
	private String  appointment_time;
	private String  department;
	private String  people;
	private String  remarks_reserve
;
	//入力された値を引数とするメソッド
	public Appointments(String appointment_date, String appointment_time, String department,
			 String people, String remarks_reserve) {

		super();
		this.appointment_date = appointment_date;
		this.appointment_time = appointment_time;
		this.department = department;
		this.people = people;
		this.remarks_reserve = remarks_reserve;
	}

	//引数がない場合は空欄にするメソッド
	public Appointments() {
		super();

		this.appointment_date = "";
		this.appointment_time = "";
		this.department = "";
		this.people ="";
		this.remarks_reserve = "";

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
