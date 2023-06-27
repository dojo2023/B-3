package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Memos;

public class MemoDao {
	// 引数paramで検索項目を指定し、検索結果のリストを返す
	public List<Memos> select(String id_memos, String memo_title, String memo, String id_users, String created_at, String updated_at) {
		Connection conn = null;
		List<Memos> cardList = new ArrayList<Memos>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "select * from MEMO WHERE ID_MEMOS ? AND ID_USERS LIKE ? AND MEMO_TITLE LIKE ? AND MEMO LIKE ? AND UPDATED_AT LIKE ? AND CREATED_AT LIKE ? ORDER BY ID_MEMOS";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

				pStmt.setString(1, "%" + id_memos + "%");

				pStmt.setString(2, "%" + id_users + "%");

				pStmt.setString(3, "%" + memo_title + "%");

				pStmt.setString(4, "%" + memo + "%");

				pStmt.setString(5, "%" + created_at + "%");

				pStmt.setString(6, "%" + updated_at + "%");


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

				Memos card = new Memos();
				card.setid_memos(rs.getInt("id_memos"));
				card.setid_users(rs.getInt("id_users"));
				card.setmemo_title(rs.getString("memo_title"));
				card.setmemo(rs.getString("memo"));
				card.setmemo(rs.getString("created_at"));
				card.setmemo(rs.getString("updated_at"));



//				Memo card = new Memo(
//				rs.getString("ID_MEMOS"),
//				rs.getString("ID_USERS"),
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
	public boolean insert(Memos card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "insert into MEMO(memo_title, memo, created_at, updated_at) values (?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

			if (card.getmemo_title() != null && !card.getmemo_title().equals("")) {
				pStmt.setString(1, card.getmemo_title());
			}
			else {
				pStmt.setString(1, null);
			}

			if (card.getmemo() != null && !card.getmemo().equals("")) {
				pStmt.setString(2, card.getmemo());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getcreated_at() != null && !card.getcreated_at().equals("")) {
				pStmt.setString(3, card.getcreated_at());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getupdated_at() != null && !card.getupdated_at().equals("")) {
				pStmt.setString(4, card.getupdated_at());
			}
			else {
				pStmt.setString(4, null);
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
	public boolean update(Memos card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "update MEMO(memo_title, memo, created_at, updated_at) set MEMO_TITLE=?, MEMO=?, CREATED_AT=?, UPDATED_AT=? where ID_MEMOS=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる


			if (card.getmemo_title() != null && !card.getmemo_title().equals("")) {
				pStmt.setString(1, card.getmemo_title());
			}
			else {
				pStmt.setString(1, null);
			}

			if (card.getmemo() != null && !card.getmemo().equals("")) {
				pStmt.setString(2, card.getmemo());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getcreated_at() != null && !card.getcreated_at().equals("")) {
				pStmt.setString(3, card.getcreated_at());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getupdated_at() != null && !card.getupdated_at().equals("")) {
				pStmt.setString(4, card.getupdated_at());
			}
			else {
				pStmt.setString(4, null);
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
			String sql = "delete from MEMO where ID_MEMOS=?";
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
