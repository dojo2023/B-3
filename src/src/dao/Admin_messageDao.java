package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Admin_messages;

public class Admin_messageDao {
	// 引数paramで検索項目を指定し、検索結果のリストを返す
	public List<Admin_messages> select(int id_admin_messages, String created_at, String updated_at, String information_title, String information_subtitle, String information_photo, String information) {
		Connection conn = null;
		List<Admin_messages> cardList = new ArrayList<Admin_messages>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "select * from ADMIN_MESSAGE WHERE ID_ADMIN_MESSAGES LIKE ? AND CREATED_AT LIKE ? AND UPDATED_AT LIKE ? AND AND INFORMATION_TITLE LIKE ? AND INFORMATION_SUBTITLE LIKE ? AND INFORMATION_PHOTO LIKE ? AND INFORMATION ? ORDER BY ID_ADMIN_MESSAGES";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

				pStmt.setString(1, "%" + id_admin_messages + "%");

				pStmt.setString(2, "%" + created_at + "%");

				pStmt.setString(3, "%" + updated_at + "%");

				pStmt.setString(4, "%" + information_title + "%");

				pStmt.setString(5, "%" + information_subtitle + "%");

				pStmt.setString(6, "%" + information_photo + "%");

				pStmt.setString(7, "%" + information + "%");



			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {

				Admin_messages card = new Admin_messages();
				card.setid_admin_messages(rs.getInt("id_admin_messages"));
				card.setcreated_at(rs.getString("created_at"));
				card.setupdated_at(rs.getString("updated_at"));
				card.setinformation_title(rs.getString("information_title"));
				card.setinformation_subtitle(rs.getString("information_subtitle"));
				card.setinformation_photo(rs.getString("information_photo"));
				card.setinformation(rs.getString("information"));


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
	public boolean insert(Admin_messages card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "insert into ADMIN_MESSAGE(created_at,updated_at,information_title,information_subtitle,information_photo,information)values (?. ?. ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる


			if (card.getcreated_at() != null && !card.getcreated_at().equals("")) {
				pStmt.setString(1, card.getcreated_at());
			}
			else {
				pStmt.setString(1, null);
			}
			if (card.getupdated_at() != null && !card.getupdated_at().equals("")) {
				pStmt.setString(2, card.getupdated_at());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getinformation_title() != null && !card.getinformation_title().equals("")) {
				pStmt.setString(3, card.getinformation_title());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getinformation_subtitle() != null && !card.getinformation_subtitle().equals("")) {
				pStmt.setString(4, card.getinformation_subtitle());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getinformation_photo() != null && !card.getinformation_photo().equals("")) {
				pStmt.setString(5, card.getinformation_photo());
			}
			else {
				pStmt.setString(5, null);
			}
			if (card.getinformation() != null && !card.getinformation().equals("")) {
				pStmt.setString(6, card.getinformation());
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
	public boolean update(Admin_messages card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "update ADMIN_MESSAGE(created_at, updated_at, information_title, information_subtitle, information_photo, information) set CREATED_AT=?, UPDATED_AT=?, INFORMATION_TITLE=?, INFORMATION_SUBTITLE=?, INFORMATION_PHOTO=?, INFORMATION=? where ID_ADMIN_MESSAGES=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

			if (card.getcreated_at() != null && !card.getcreated_at().equals("")) {
				pStmt.setString(1, card.getcreated_at());
			}
			else {
				pStmt.setString(1, null);
			}

			if (card.getupdated_at() != null && !card.getupdated_at().equals("")) {
				pStmt.setString(2, card.getupdated_at());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getinformation_title() != null && !card.getinformation_title().equals("")) {
				pStmt.setString(3, card.getinformation_title());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getinformation_subtitle() != null && !card.getinformation_subtitle().equals("")) {
				pStmt.setString(4, card.getinformation_subtitle());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getinformation_photo() != null && !card.getinformation_photo().equals("")) {
				pStmt.setString(5, card.getinformation_photo());
			}
			else {
				pStmt.setString(5, null);
			}
			if (card.getinformation() != null && !card.getinformation().equals("")) {
				pStmt.setString(6, card.getinformation());
			}
			else {
				pStmt.setString(6, null);
			}
			pStmt.setInt(8, card.getid_admin_messages());

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
			String sql = "delete from admin_messages where id_admin_messages=?";
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
