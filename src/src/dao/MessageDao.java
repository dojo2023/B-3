package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Messages;

public class MessageDao {
	// 引数paramで検索項目を指定し、検索結果のリストを返す
	public List<Messages> select(String id_users, String id_messages, String created_at, String updated_at, String date, String title, String message) {
		Connection conn = null;
		List<Messages> cardList = new ArrayList<Messages>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = " SERECT * FROM messges ORDER BY id_messages";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

				pStmt.setString(1, "%" + id_users + "%");

				pStmt.setString(2, "%" + id_messages + "%");

				pStmt.setString(3, "%" + created_at + "%");

				pStmt.setString(4, "%" + updated_at + "%");

				pStmt.setString(5, "%" + date + "%");

				pStmt.setString(6, "%" + title + "%");

				pStmt.setString(7, "%" + message + "%");



			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {

				Messages card = new Messages();
				card.setIdUsers(rs.getInt("IdUsers"));
				card.setIdMessages(rs.getInt("IdMessages"));
				card.setCreatedAt(rs.getString("CreatedAt"));
				card.setUpdatedAt(rs.getString("UpdatedAt"));
				card.setDate(rs.getString("Date"));
				card.setTitle(rs.getString("Title"));
				card.setMessage(rs.getString("Message"));


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
	public boolean insert(Messages card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "insert into MESSAGE(created_at, updated_at, date, title, message) values (?. ?. ?, ?, ?)";
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
			if (card.getDate() != null && !card.getDate().equals("")) {
				pStmt.setString(3, card.getDate());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getTitle() != null && !card.getTitle().equals("")) {
				pStmt.setString(4, card.getTitle());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getMessage() != null && !card.getMessage().equals("")) {
				pStmt.setString(5, card.getMessage());
			}
			else {
				pStmt.setString(5, null);
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
	public boolean update(Messages card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "update MESSAGE(created_at, updated_at, date, title, message) set CREATED_AT=?, UPDATED_AT=?, DATE=? TITLE=?, MESSAGE=? where ID_MESSAGES=?";
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
			if (card.getDate() != null && !card.getDate().equals("")) {
				pStmt.setString(3, card.getDate());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getTitle() != null && !card.getTitle().equals("")) {
				pStmt.setString(4, card.getTitle());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getMessage() != null && !card.getMessage().equals("")) {
				pStmt.setString(5, card.getMessage());
			}
			else {
				pStmt.setString(5, null);
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
			String sql = "delete from messages where id_messages=?";
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
