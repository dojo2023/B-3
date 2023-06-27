package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Presets;

public class PresetDao {
	// 引数paramで検索項目を指定し、検索結果のリストを返す
	public List<Presets> select(String id_users, String preset_name, String genre, String genre_form, String price_max,
			String price_min, String open_hei, String close_hei, String open_kyu, String close_kyu,String distance, String tabaco, String sheet_table, String sheet_tatami, String sheet_other,
			String capacity, String eat_drink) {
		Connection conn = null;
		List<Presets> cardList = new ArrayList<Presets>();

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "SERECT * FROM presets ORDER BY preset_name";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

				pStmt.setString(1, "%" + id_users + "%");

				pStmt.setString(2, "%" + preset_name + "%");

				pStmt.setString(3, "%" + genre + "%");

				pStmt.setString(4, "%" + genre_form + "%");

				pStmt.setString(5, "%" + price_max + "%");

				pStmt.setString(6, "%" + price_min + "%");

				pStmt.setString(7, "%" + open_hei + "%");

				pStmt.setString(8, "%" + close_hei + "%");

				pStmt.setString(9, "%" + open_kyu + "%");

				pStmt.setString(10, "%" + close_kyu + "%");

				pStmt.setString(11, "%" + distance + "%");

				pStmt.setString(12, "%" + tabaco + "%");

				pStmt.setString(13, "%" + sheet_table + "%");

				pStmt.setString(14, "%" + sheet_tatami + "%");

				pStmt.setString(15, "%" + sheet_other + "%");

				pStmt.setString(16, "%" + capacity + "%");

				pStmt.setString(17, "%" + eat_drink + "%");





			// SQL文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// 結果表をコレクションにコピーする
			while (rs.next()) {

				Presets card = new Presets();
				card.setId_users(rs.getInt("Id_users"));
				card.setPreset_name(rs.getString("Preset_name"));
				card.setGenre(rs.getString("Genre"));
				card.setGenre_form(rs.getString("Genre_form"));
				card.setPrice_max(rs.getInt("Price_max"));
				card.setPrice_min(rs.getInt("Price_min"));
				card.setOpen_hei(rs.getString("Open_hei"));
				card.setClose_hei(rs.getString("Close_hei"));
				card.setOpen_kyu(rs.getString("Open_kyu"));
				card.setClose_kyu(rs.getString("Close_kyu"));
				card.setDistance(rs.getInt("Distance"));
				card.setTabaco(rs.getString("Tabaco"));
				card.setSheet_table(rs.getString("Sheet_table"));
				card.setSheet_tatami(rs.getString("Sheet_tatami"));
				card.setSheet_other(rs.getString("Sheet_other"));
				card.setCapacity(rs.getInt("Capacity"));
				card.setEat_drink(rs.getString("Eat_drink"));


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
	public boolean insert(Presets card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "insert into PRESET(preset_name, genre, genre_form, open_hei, close_hei, open_kyu, close_kyu, tabaco, sheet_table, sheet_tatami, sheet_other, eat_drink) values (?. ?. ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

			if (card.getPreset_name() != null && !card.getPreset_name().equals("")) {
				pStmt.setString(1, card.getPreset_name());
			}
			else {
				pStmt.setString(1, null);
			}

			if (card.getGenre() != null && !card.getGenre().equals("")) {
				pStmt.setString(2, card.getGenre());
			}
			else {
				pStmt.setString(2, null);
			}
			if (card.getGenre_form() != null && !card.getGenre_form().equals("")) {
				pStmt.setString(3, card.getGenre_form());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getOpen_hei() != null && !card.getOpen_hei().equals("")) {
				pStmt.setString(4, card.getOpen_hei());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getClose_hei() != null && !card.getClose_hei().equals("")) {
				pStmt.setString(5, card.getClose_hei());
			}
			else {
				pStmt.setString(5, null);
			}
			if (card.getOpen_kyu() != null && !card.getOpen_kyu().equals("")) {
				pStmt.setString(6, card.getOpen_kyu());
			}
			else {
				pStmt.setString(6, null);
			}
			if (card.getClose_kyu() != null && !card.getClose_kyu().equals("")) {
				pStmt.setString(7, card.getClose_kyu());
			}
			else {
				pStmt.setString(7, null);
			}

			if (card.getTabaco() != null && !card.getTabaco().equals("")) {
				pStmt.setString(8, card.getTabaco());
			}
			else {
				pStmt.setString(8, null);
			}

			if (card.getSheet_table() != null && !card.getSheet_table().equals("")) {
				pStmt.setString(9, card.getSheet_table());
			}
			else {
				pStmt.setString(9, null);
			}

			if (card.getSheet_tatami() != null && !card.getSheet_tatami().equals("")) {
				pStmt.setString(10, card.getSheet_tatami());
			}
			else {
				pStmt.setString(10, null);
			}

			if (card.getSheet_other() != null && !card.getSheet_other().equals("")) {
				pStmt.setString(11, card.getSheet_other());
			}
			else {
				pStmt.setString(11, null);
			}
			if (card.getEat_drink() != null && !card.getEat_drink().equals("")) {
				pStmt.setString(12, card.getEat_drink());
			}
			else {
				pStmt.setString(12, null);
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
	public boolean update(Presets card) {
		Connection conn = null;
		boolean result = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/hydrangea", "sa", "");

			// SQL文を準備する
			String sql = "update PRESET(preset_name, genre, genre_form, open_hei, close_hei, open_kyu, close_kyu, tabaco, sheet_table, sheet_tatami, sheet_other, eat_drink) set PRESET_NAME=?, GENRE=?, GENRE_FORM=? OPEN_HEI=?, CLOSE_HEI=?, OPEN_KYU=?, CLOSE_KYU=?, TABACO=?, SHEET_TABLE=?, SHEET_TATAMI=?, SHEET_OTHER=?, EAT_DRINK=?, where PRESET_NAME=?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

			// SQL文を完成させる

			if (card.getPreset_name() != null && !card.getPreset_name().equals("")) {
				pStmt.setString(1, card.getPreset_name());
			}
			else {
				pStmt.setString(1, null);
			}
			if (card.getGenre() != null && !card.getGenre().equals("")) {
				pStmt.setString(2, card.getGenre());
			}
			else {
				pStmt.setString(2, null);
			}

			if (card.getGenre_form() != null && !card.getGenre_form().equals("")) {
				pStmt.setString(3, card.getGenre_form());
			}
			else {
				pStmt.setString(3, null);
			}
			if (card.getOpen_hei() != null && !card.getOpen_hei().equals("")) {
				pStmt.setString(4, card.getOpen_hei());
			}
			else {
				pStmt.setString(4, null);
			}
			if (card.getClose_hei() != null && !card.getClose_hei().equals("")) {
				pStmt.setString(5, card.getClose_hei());
			}
			else {
				pStmt.setString(5, null);
			}
			if (card.getOpen_kyu() != null && !card.getOpen_kyu().equals("")) {
				pStmt.setString(6, card.getOpen_kyu());
			}
			else {
				pStmt.setString(6, null);
			}
			if (card.getClose_kyu() != null && !card.getClose_kyu().equals("")) {
				pStmt.setString(7, card.getClose_kyu());
			}
			else {
				pStmt.setString(7, null);
			}
			if (card.getTabaco() != null && !card.getTabaco().equals("")) {
				pStmt.setString(8, card.getTabaco());
			}
			else {
				pStmt.setString(8, null);
			}
			if (card.getSheet_table() != null && !card.getSheet_table().equals("")) {
				pStmt.setString(9, card.getSheet_table());
			}
			else {
				pStmt.setString(9, null);
			}
			if (card.getSheet_tatami() != null && !card.getSheet_tatami().equals("")) {
				pStmt.setString(10, card.getSheet_tatami());
			}
			else {
				pStmt.setString(10, null);
			}
			if (card.getSheet_other() != null && !card.getSheet_other().equals("")) {
				pStmt.setString(11, card.getSheet_other());
			}
			else {
				pStmt.setString(11, null);
			}
			if (card.getEat_drink() != null && !card.getEat_drink().equals("")) {
				pStmt.setString(12, card.getEat_drink());
			}
			else {
				pStmt.setString(12, null);
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
			String sql = "delete from presets where preset_name=?";
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
