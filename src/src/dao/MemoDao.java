package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Memos;

public class MemoDAO {
	// 引数paramで検索項目を指定し、検索結果のリストを返す
	public List<Memos> select(String id_memos, String memo_title, String memo, String id_users) {
		Connection conn = null;
		List<Memos> cardList = new ArrayList<Memos>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "select * from MEMO WHERE ID_USERS LIKE ? AND MEMO_TITLE LIKE ? AND MEMO LIKE ? ORDER BY ID_MEMOS";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

				pStmt.setString(1, "%" + id_memos + "%");

				pStmt.setString(2, "%" + id_users + "%");

				pStmt.setString(3, "%" + memo_title + "%");

				pStmt.setString(4, "%" + memo + "%");


//			if (param.getID_MEMOS() != null) {
//				pStmt.setString(1, "%" + param.getID_MEMOS() + "%");
//			}
//			else {
//				pStmt.setString(1, "%");
//			}
//			if (param.getID_USERS() != null) {
//				pStmt.setString(2, "%" + param.getID_USERS() + "%");
//			}
//			else {
//				pStmt.setString(2, "%");
//			}
//			if (param.getMEMO_TITLE() != null) {
//				pStmt.setString(3, "%" + param.getMEMO_TITLE() + "%");
//			}
//			else {
//				pStmt.setString(3, "%");
//			}
//			if (param.getMEMO() != null) {
//				pStmt.setString(4, "%" + param.getMEMO() + "%");
//			}
//			else {
//				pStmt.setString(4, "%");
//			}

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {

				Memo card = new Memo();
				card.setID_MEMOS(rs.getString("ID_MEMOS"));
				card.setID_USERS(rs.getString("ID_USERS"));
				card.setMEMO_TITLE(rs.getString("MEMO_TITLE"));
				card.setMEMO(rs.getString("MEMO"));



//				Memo card = new Memo(
//				rs.getString("ID_MEMOS"),
//				rs.getString("MAIL"),
//				rs.getString("MEMO_TITLE"),
//				rs.getString("MEMO")
//				);
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
	public boolean insert(Memo card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "insert into MEMO values (?, ?, ?, ?, ?, ?, ?, ?, ?, ? ,?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (card.getNumber() != null && !card.getNumber().equals("")) {
				pStmt.setString(1, card.getNumber());
			}
			else {
				pStmt.setString(1, null);
			}

			if (card.getCompany() != null && !card.getCompany().equals("")) {
				pStmt.setString(2, card.getCompany());
			}
			else {
				pStmt.setString(2, null);
			}

			if (card.getDepartment() != null && !card.getDepartment().equals("")) {
				pStmt.setString(3, card.getDepartment());
			}
			else {
				pStmt.setString(3, null);
			}

			if (card.getPosition() != null && !card.getPosition().equals("")) {
				pStmt.setString(4, card.getPosition());
			}
			else {
				pStmt.setString(4, null);
			}

			if (card.getName() != null && !card.getName().equals("")) {
				pStmt.setString(5, card.getName());
			}
			else {
				pStmt.setString(5, null);
			}

			if (card.getZipcode() != null && !card.getZipcode().equals("")) {
				pStmt.setString(6, card.getZipcode());
			}
			else {
				pStmt.setString(6, null);
			}

			if (card.getAddress() != null && !card.getAddress().equals("")) {
				pStmt.setString(7, card.getAddress());
			}
			else {
				pStmt.setString(7, null);
			}

			if (card.getPhone() != null && !card.getPhone().equals("")) {
				pStmt.setString(8, card.getPhone());
			}
			else {
				pStmt.setString(8, null);
			}

			if (card.getFax() != null && !card.getFax().equals("")) {
				pStmt.setString(9, card.getFax());
			}
			else {
				pStmt.setString(9, null);
			}

			if (card.getEmail() != null && !card.getEmail().equals("")) {
				pStmt.setString(10, card.getEmail());
			}
			else {
				pStmt.setString(10, null);
			}

			if (card.getRemarks() != null && !card.getRemarks().equals("")) {
				pStmt.setString(11, card.getRemarks());
			}
			else {
				pStmt.setString(11, null);
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
	public boolean update(Bc card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/simpleBC", "sa", "");

			// SQL文を準備する
			String sql = "update BC set COMPANY=?, DEPARTMENT=?, POSITION=?, NAME=?, ZIPCODE=?, ADDRESS=?, PHONE=?, FAX=?, EMAIL=?, REMARKS=? where NUMBER=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

			if (card.getCompany() != null && !card.getCompany().equals("")) {
				pStmt.setString(1, card.getCompany());
			}
			else {
				pStmt.setString(1, null);
			}

			if (card.getDepartment() != null && !card.getDepartment().equals("")) {
				pStmt.setString(2, card.getDepartment());
			}
			else {
				pStmt.setString(2, null);
			}

			if (card.getPosition() != null && !card.getPosition().equals("")) {
				pStmt.setString(3, card.getPosition());
			}
			else {
				pStmt.setString(3, null);
			}

			if (card.getName() != null && !card.getName().equals("")) {
				pStmt.setString(4, card.getName());
			}
			else {
				pStmt.setString(4, null);
			}

			if (card.getZipcode() != null && !card.getZipcode().equals("")) {
				pStmt.setString(5, card.getZipcode());
			}
			else {
				pStmt.setString(5, null);
			}

			if (card.getAddress() != null && !card.getAddress().equals("")) {
				pStmt.setString(6, card.getAddress());
			}
			else {
				pStmt.setString(6, null);
			}

			if (card.getPhone() != null && !card.getPhone().equals("")) {
				pStmt.setString(7, card.getPhone());
			}
			else {
				pStmt.setString(7, null);
			}

			if (card.getFax() != null && !card.getFax().equals("")) {
				pStmt.setString(8, card.getFax());
			}
			else {
				pStmt.setString(8, null);
			}

			if (card.getEmail() != null && !card.getEmail().equals("")) {
				pStmt.setString(9, card.getEmail());
			}
			else {
				pStmt.setString(9, null);
			}

			if (card.getRemarks() != null && !card.getRemarks().equals("")) {
				pStmt.setString(10, card.getRemarks());
			}
			else {
				pStmt.setString(10, null);
			}

			pStmt.setString(11, card.getNumber());

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
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/simpleBC", "sa", "");

			// SQL文を準備する
			String sql = "delete from BC where NUMBER=?";
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
