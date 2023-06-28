package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Position_memos;

public class Position_memoDao {

	//テーブルのデータを取得する
	public List<Position_memos> findAll() {
		Connection conn = null;
		List<Position_memos> p_memoList = new ArrayList<Position_memos>();

		try {

			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

			// SQL文を準備する
			String sql = "SELECT * FROM position_memos ORDER BY id_position_memos ";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQLの実行
			ResultSet rs = pStmt.executeQuery();
			while (rs.next()) {
				Position_memos deta = new Position_memos(
						rs.getInt("id_users"),
						rs.getInt("id_position_memos"),
						rs.getString("created_at"),
						rs.getString("updated_at"),
						rs.getString("name_position"),
						rs.getString("position"),
						rs.getString("tabaco_position"),
						rs.getString("favorite1"),
						rs.getString("favorite2"),
						rs.getString("ng"),
						rs.getString("remarks_position")
						);

				p_memoList.add(deta);
					}

		}
		catch (SQLException e) {
			e.printStackTrace();
			p_memoList = null;

		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			p_memoList = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					p_memoList = null;

				}
			}
		}

		// 結果を返す
		return p_memoList;
	}


	// 引数paramで検索項目を指定し、検索結果のリストを返す
	public List<Position_memos> select(Position_memos param) {
		Connection conn = null;
		List<Position_memos> cardList = new ArrayList<Position_memos>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

			// SQL文を準備する
			String sql = "select * from position_memos WHERE id_position_memos LIKE ? AND name_position LIKE ? AND position LIKE ? ORDER BY id_position_memos";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			if (param.getIdPositionMemos() != 0) {
				pStmt.setString(1, "%" + param.getIdPositionMemos() + "%");
			}
			else {
				pStmt.setString(1, "%");
			}
			if (param.getNamePosition() != null) {
				pStmt.setString(2, "%" + param.getNamePosition() + "%");
			}
			else {
				pStmt.setString(2, "%");
			}
			if (param.getPosition() != null) {
				pStmt.setString(3, "%" + param.getPosition() + "%");
			}
			else {
				pStmt.setString(3, "%");
			}

			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {
				Position_memos card = new Position_memos(
				rs.getInt("id_users"),
				rs.getInt("id_position_memos"),
				rs.getString("created_at"),
				rs.getString("updated_at"),
				rs.getString("name_position"),
				rs.getString("position"),
				rs.getString("tabaco_position"),
				rs.getString("favorite1"),
				rs.getString("favorite2"),
				rs.getString("ng"),
				rs.getString("remarks_position")
				);
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
	public boolean insert(Position_memos card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

			// SQL文を準備する
			String sql = "insert into position_memos  values (id_position_memos_int, created_at_timestamp, updated_at_timestamp ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

			if (card.getNamePosition() != null && !card.getNamePosition().equals("")) {
				pStmt.setString(1, card.getNamePosition());
			}
			else {
				pStmt.setString(1, null);
			}

			if (card.getPosition() != null && !card.getPosition().equals("")) {
				pStmt.setString(2, card.getPosition());
			}
			else {
				pStmt.setString(2, null);
			}

			if (card.getTabacoPosition() != null && !card.getTabacoPosition().equals("")) {
				pStmt.setString(3, card.getTabacoPosition());
			}
			else {
				pStmt.setString(3, null);
			}

			if (card.getFavorite1() != null && !card.getFavorite1().equals("")) {
				pStmt.setString(4, card.getFavorite1());
			}
			else {
				pStmt.setString(4, null);
			}

			if (card.getFavorite2() != null && !card.getFavorite2().equals("")) {
				pStmt.setString(5, card.getFavorite2());
			}
			else {
				pStmt.setString(5, null);
			}

			if (card.getNg() != null && !card.getNg().equals("")) {
				pStmt.setString(6, card.getNg());
			}
			else {
				pStmt.setString(6, null);
			}

			if (card.getRemarks_position() != null && !card.getRemarks_position().equals("")) {
				pStmt.setString(7, card.getRemarks_position());
			}
			else {
				pStmt.setString(7, null);
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
	public boolean update(Position_memos card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

			// SQL文を準備する
			String sql = "update position_memos set name_position=?, position=?, tabaco_position=?, favorite1=?, favorite2=?, ng=?, remarks_position=? where id_position_memos=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

			//if (card.getIdPositionMemos() != null && !card.getIdPositionMemos().equals("")) {
				pStmt.setInt(1, card.getIdPositionMemos());
		//	}
		//	else {
				pStmt.setString(1, null);
		//	}

			if (card.getPosition() != null && !card.getPosition().equals("")) {
				pStmt.setString(2, card.getPosition());
			}
			else {
				pStmt.setString(2, null);
			}

			if (card.getNamePosition() != null && !card.getNamePosition().equals("")) {
				pStmt.setString(3, card.getNamePosition());
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

			if (card.getTabacoPosition() != null && !card.getTabacoPosition().equals("")) {
				pStmt.setString(5, card.getTabacoPosition());
			}
			else {
				pStmt.setString(5, null);
			}

			if (card.getFavorite1() != null && !card.getFavorite1().equals("")) {
				pStmt.setString(6, card.getFavorite1());
			}
			else {
				pStmt.setString(6, null);
			}

			if (card.getFavorite2() != null && !card.getFavorite2().equals("")) {
				pStmt.setString(7, card.getFavorite2());
			}
			else {
				pStmt.setString(7, null);
			}

			if (card.getNg() != null && !card.getNg().equals("")) {
				pStmt.setString(8, card.getNg());
			}
			else {
				pStmt.setString(8, null);
			}

			if (card.getRemarks_position() != null && !card.getRemarks_position().equals("")) {
				pStmt.setString(9, card.getRemarks_position());
			}
			else {
				pStmt.setString(9, null);
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

	// 引数id_position_memosで指定されたレコードを削除し、成功したらtrueを返す
	public boolean delete(String id_position_memos) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

			// SQL文を準備する
			String sql = "delete from position_memos where id_position_memos=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる
			pStmt.setString(1, id_position_memos);

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
	public boolean insertMemo(Position_memos pmemo) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

			// SQL文を準備する
			String sql = "insert into position_memos (created_at,updated_at ,id_users,name_position ,position,tabaco_position,favorite1,favorite2,ng,remarks_position) values(current_timestamp,current_timestamp,?,?,?,?,?,?,?,?);";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる


				pStmt.setInt(1, pmemo.getIdUsers());


			if (pmemo.getNamePosition()!= null && !pmemo.getNamePosition().equals("")) {
				pStmt.setString(2, pmemo.getNamePosition());
			}
			else {
				pStmt.setString(2, null);
			}
			if (pmemo.getPosition()!= null && !pmemo.getPosition().equals("")) {
				pStmt.setString(3, pmemo.getPosition());
			}
			else {
				pStmt.setString(3, null);
			}

			if (pmemo.getTabacoPosition() != null && !pmemo.getTabacoPosition().equals("")) {
				pStmt.setString(4, pmemo.getTabacoPosition());
			}
			else {
				pStmt.setString(4, null);
			}

			if (pmemo.getFavorite1() != null && !pmemo.getFavorite1().equals("")) {
				pStmt.setString(5, pmemo.getFavorite1());
			}
			else {
				pStmt.setString(5, null);
			}

			if (pmemo.getFavorite2() != null && !pmemo.getFavorite2().equals("")) {
				pStmt.setString(6, pmemo.getFavorite2());
			}
			else {
				pStmt.setString(6, null);
			}

			if (pmemo.getNg() != null && !pmemo.getNg().equals("")) {
				pStmt.setString(7, pmemo.getNg());
			}
			else {
				pStmt.setString(7, null);
			}

			if (pmemo.getRemarks_position() != null && !pmemo.getRemarks_position().equals("")) {
				pStmt.setString(8, pmemo.getRemarks_position());
			}
			else {
				pStmt.setString(8, null);
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
	public ArrayList<Position_memos> selectbyid(int id_users) {
		Connection conn = null;
		ArrayList<Position_memos> p_memoList = new ArrayList<Position_memos>();

		try {

			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

			// SQL文を準備する
			String sql = "SELECT * FROM POSITION_MEMOS  where id_users = ? ";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setInt(1, id_users);

			// SQLの実行
			ResultSet rs = pStmt.executeQuery();

			Position_memos pm=new Position_memos();

			while (rs.next()) {
				pm.setNamePosition(rs.getString("name_position"));
				pm.setPosition(rs.getString("position"));
				pm.setTabacoPosition(rs.getString("tabaco_position"));
				pm.setFavorite1(rs.getString("favorite1"));
				pm.setFavorite2(rs.getString("favorite2"));
				pm.setNg(rs.getString("ng"));
				pm.setRemarks_position(rs.getString("remarks_position"));
				p_memoList.add(pm);
			}


		}
		catch (SQLException e) {
			e.printStackTrace();
			p_memoList = null;

		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			p_memoList = null;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					p_memoList = null;

				}
			}
		}

		// 結果を返す
		return p_memoList;
	}
}