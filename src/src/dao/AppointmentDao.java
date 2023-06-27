package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Appointments;

public class AppointmentDao {
	// 引数paramで検索項目を指定し、検索結果のリストを返す
	public List<Appointments> select(String id_users, String id_shops, String id_appointments, String created_at, String updated_at,
			String appointment_date, String appointment_time, String department, String people, String remarks_reserve) {
		Connection conn = null;
		List<Appointments> cardList = new ArrayList<Appointments>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "select * from APPOINTMENT WHERE ID_USERS LIKE ? AND ID_SHOPS LIKE ? ID_APPOINTMENTS LIKE ? AND CREATED_AT LIKE ? AND UPDATED_AT LIKE ? AND "
					+ "APPOINTMENT_DATE LIKE ? AND APPOINTMENT_TIME LIKE ? AND DEPARTMENT LIKE ? AND PEOPLE LIKE ? AND REMARKS_RESERVE ORDER BY ID_APPOINTMENTS";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

				pStmt.setString(1, "%" + id_users + "%");

				pStmt.setString(2, "%" + id_shops + "%");

				pStmt.setString(3, "%" + id_appointments + "%");

				pStmt.setString(4, "%" + created_at + "%");

				pStmt.setString(5, "%" + updated_at + "%");

				pStmt.setString(6, "%" + appointment_date + "%");

				pStmt.setString(7, "%" + appointment_time + "%");

				pStmt.setString(8, "%" + department + "%");

				pStmt.setString(9, "%" + people + "%");

				pStmt.setString(10, "%" + remarks_reserve + "%");



			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {

				Appointments card = new Appointments();
				card.setIdUsers(rs.getInt("IdUsers"));
				card.setIdShops(rs.getInt("IdShops"));
				card.setIdAppointments(rs.getInt("IdAppointments"));
				card.setCreatedAt(rs.getString("CreatedAt"));
				card.setUpdatedAt(rs.getString("UpdatedAt"));
				card.setAppointmentDate(rs.getString("AppointmentDate"));
				card.setAppointmentTime(rs.getString("AppointmentTime"));
				card.setDepartment(rs.getString("Department"));
				card.setPeople(rs.getInt("People"));
				card.setRemarks(rs.getString("Remarkst"));


				cardList.add(card);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			cardList = null;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			cardList = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					cardList = null;
				}
			}
		}

		// 結果を返す
		return cardList;
	}

	// 引数cardで指定されたレコードを登録し、成功したらtrueを返す
	public boolean insert(Appointments card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "insert into APPOINTMENT(created_at, updated_at, appointment_date, appointment_time, department, remarks_reserve) values (?, ?, ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる


			if (card.getCreatedAt() != null && !card.getCreatedAt().equals("")) {
				pStmt.setString(1, card.getCreatedAt());
			}
			else {
				pStmt.setString(1, null);
			}
			if (card.getUpdatedAt() != null && !card.getUpdatedAt().equals("")) {
				pStmt.setString(2, card.getUpdatedAt());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getAppointmentDate() != null && !card.getAppointmentDate().equals("")) {
				pStmt.setString(3, card.getAppointmentDate());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getAppointmentTime() != null && !card.getAppointmentTime().equals("")) {
				pStmt.setString(4, card.getAppointmentTime());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getDepartment() != null && !card.getDepartment().equals("")) {
				pStmt.setString(5, card.getDepartment());
			}
			else {
				pStmt.setString(5, null);
			}
			if (card.getRemarks() != null && !card.getRemarks().equals("")) {
				pStmt.setString(6, card.getRemarks());
			}
			else {
				pStmt.setString(6, null);
			}




			// SQL文を実行する
			if (pStmt.executeUpdate() == 1) {
				result = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		// 結果を返す
		return result;
	}

	// 引数cardで指定されたレコードを更新し、成功したらtrueを返す
	public boolean update(Appointments card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "update APPOINTMENT(created_at, updated_at, appointment_date, appointment_time, department, remarks_reserve) set CREATED_AT=? UPDATED_AT=?, APPOINTMENTDATE=?, APPOINTMENTTIME=?, DEPARTMENT=?, REMARKS=? where ID_MESSAGES=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる


			if (card.getCreatedAt() != null && !card.getCreatedAt().equals("")) {
				pStmt.setString(1, card.getCreatedAt());
			}
			else {
				pStmt.setString(1, null);
			}
			if (card.getUpdatedAt() != null && !card.getUpdatedAt().equals("")) {
				pStmt.setString(2, card.getUpdatedAt());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getAppointmentDate() != null && !card.getAppointmentDate().equals("")) {
				pStmt.setString(3, card.getAppointmentDate());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getAppointmentTime() != null && !card.getAppointmentTime().equals("")) {
				pStmt.setString(4, card.getAppointmentTime());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getDepartment() != null && !card.getDepartment().equals("")) {
				pStmt.setString(5, card.getDepartment());
			}
			else {
				pStmt.setString(5, null);
			}
			if (card.getRemarks() != null && !card.getRemarks().equals("")) {
				pStmt.setString(6, card.getRemarks());
			}
			else {
				pStmt.setString(6, null);
			}


			// SQL文を実行する
			if (pStmt.executeUpdate() == 1) {
				result = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		// 結果を返す
		return result;
	}

	// 引数numberで指定されたレコードを削除し、成功したらtrueを返す
	public boolean delete(String number) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "delete from appointments where id_appointments=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setString(1, number);

			// SQL文を実行する
			if (pStmt.executeUpdate() == 1) {
				result = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		// 結果を返す
		return result;
	}
}