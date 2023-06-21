package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Shops;

public class ShopDao {
	// 引数paramで検索項目を指定し、検索結果のリストを返す



public boolean insert(Shops param) {
	Connection conn = null;
	boolean result=false;

	try {
		// JDBCドライバを読み込む
		Class.forName("org.h2.Driver");

		// データベースに接続する
		conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

		// SQL文を準備する・(created_at,updated_atを含めて３６こ
		String sql ="INSERT INTO "
				+ "(created_at,updated_at,shop_name,genre,genre_form,price_max,price_min,"
				+ "open_hei,lose_hei,open_kyu,close_kyu,"
				+ "holiday_mon,holiday_tue,holiday_wed,holiday_thu,holiday_fri,holiday_sat,holiday_sun,holiday_syuku,"
				+ "holiday_nenmatsu,holiday_other,distance,address,tabaco,sheet_table,sheet_tatami,sheet_other,"
				+ "capacity,eat_drink,score,tel,homepage,other,photo,remarks_shop,id_users) "
				+ "VALES"
				+ "(CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


		// SQL文を完成させる

		PreparedStatement pStmt = conn.prepareStatement(sql);

		// SQL文を完成させる
		if (card.getShop_name() != null && !card.getShop_name().equals("")) {
			pStmt.setString(1, card.getShop_name());
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

		if (card.getPrice_max() != null && !card.getPrice_max().equals("")) {
			pStmt.setString(4, card.getPrice_max());
		}
		else {
			pStmt.setString(4, null);
		}

		if (card.getPrice_min() != null && !card.getPrice_min().equals("")) {
			pStmt.setString(5, card.getPrice_min());
		}
		else {
			pStmt.setString(5, null);
		}

		if (card.getOpen_hei() != null && !card.getOpen_hei().equals("")) {
			pStmt.setString(6, card.getOpen_hei());
		}
		else {
			pStmt.setString(6, null);
		}

		if (card.getClose_hei() != null && !card.getClose_hei().equals("")) {
			pStmt.setString(7, card.getClose_hei());
		}
		else {
			pStmt.setString(7, null);
		}

		if (card.getOpen_kyu() != null && !card.getOpen_kyu().equals("")) {
			pStmt.setString(8, card.getOpen_kyu());
		}
		else {
			pStmt.setString(8, null);
		}

		if (card.getClose_kyu() != null && !card.getClose_kyu().equals("")) {
			pStmt.setString(9, card.getClose_kyu());
		}
		else {
			pStmt.setString(9, null);
		}

		if (card.getHoliday_mon() != null && !card.getHoliday_mon().equals("")) {
			pStmt.setString(10, card.getHoliday_mon());
		}
		else {
			pStmt.setString(10, null);
		}

		if (card.getHoliday_tue() != null && !card.getHoliday_tue().equals("")) {
			pStmt.setString(11, card.getHoliday_tue());
		}
		else {
			pStmt.setString(11, null);
		}

		if (card.getHoliday_wed() != null && !card.getHoliday_wed().equals("")) {
			pStmt.setString(12, card.getHoliday_wed());
		}
		else {
			pStmt.setString(12, null);
		}

		if (card.getHoliday_thu() != null && !card.getHoliday_thu().equals("")) {
			pStmt.setString(13, card.getHoliday_thu());
		}
		else {
			pStmt.setString(13, null);
		}

		if (card.getHoliday_fri() != null && !card.getHoliday_fri().equals("")) {
			pStmt.setString(14, card.getHoliday_fri());
		}
		else {
			pStmt.setString(14, null);
		}

		if (card.getHoliday_sat() != null && !card.getHoliday_sat().equals("")) {
			pStmt.setString(15, card.getHoliday_sat());
		}
		else {
			pStmt.setString(15, null);
		}


		if (card.getHoliday_sun() != null && !card.getHoliday_sun().equals("")) {
			pStmt.setString(16, card.getHoliday_sun());
		}
		else {
			pStmt.setString(16, null);
		}

		if (card.getHoliday_syuku() != null && !card.getHoliday_syuku().equals("")) {
			pStmt.setString(17, card.getHoliday_syuku());
		}
		else {
			pStmt.setString(17, null);
		}

		if (card.getHoliday_nenmatsu() != null && !card.getHoliday_nenmatsu().equals("")) {
			pStmt.setString(18, card.getHoliday_nenmatsu());
		}
		else {
			pStmt.setString(18, null);
		}

		if (card.getHoliday_other() != null && !card.getHoliday_other().equals("")) {
			pStmt.setString(19, card.getHoliday_other());
		}
		else {
			pStmt.setString(19, null);
		}
                if (card.getDistance() != null && !card.getDistance().equals("")) {
			pStmt.setString(20, card.getDistance());
		}
		else {
			pStmt.setString(20, null);
		}

		if (card.getAddress() != null && !card.getAddress().equals("")) {
			pStmt.setString(21, card.getAddress());
		}
		else {
			pStmt.setString(21, null);
		}

		if (card.getTabaco() != null && !card.getTabaco().equals("")) {
			pStmt.setString(22, card.geTabaco());
		}
		else {
			pStmt.setString(22, null);
		}

		if (card.getSheet_table() != null && !card.getSheet_table().equals("")) {
			pStmt.setString(23, card.getSheet_table());
		}
		else {
			pStmt.setString(23, null);
		}

		if (card.getSheet_tatami() != null && !card.getSheet_tatami().equals("")) {
			pStmt.setString(24, card.getSheet_tatami());
		}
		else {
			pStmt.setString(24, null);
		}

		if (card.getSheet_other() != null && !card.getSheet_other().equals("")) {
			pStmt.setString(25, card.getSheet_other());
		}
		else {
			pStmt.setString(25, null);
		}

		if (card.getCapacity() != null && !card.getCapacity().equals("")) {
			pStmt.setString(26, card.getCapacity());
		}
		else {
			pStmt.setString(26, null);
		}
		if (card.getEat_drink() != null && !card.getEat_drink().equals("")) {
			pStmt.setString(27, card.getEat_drink());
		}
		else {
			pStmt.setString(27, null);
		}

		if (card.getScore() != null && !card.geScore().equals("")) {
			pStmt.setString28, card.getScore());
		}
		else {
			pStmt.setString(28, null);
		}

		if (card.getTel() != null && !card.getTel().equals("")) {
			pStmt.setString(29, card.getTel());
		}
		else {
			pStmt.setString(29, null);
		}

		if (card.getHomepage() != null && !card.getHomepage().equals("")) {
			pStmt.setString(30, card.getHomepage());
		}
		else {
			pStmt.setString(30, null);
		}

		if (card.geOther() != null && !card.getOther().equals("")) {
			pStmt.setString(31, card.getOther_mon());
		}
		else {
			pStmt.setString(31, null);
		}

		if (card.getPhoto() != null && !card.getPhoto().equals("")) {
			pStmt.setString(32, card.getPhoto());
		}
		else {
			pStmt.setString(32, null);
		}
		if (card.getRemarks_shop() != null && !card.getRemarks_shop().equals("")) {
			pStmt.setString(33, card.getRemarks_shop());
		}
		else {
			pStmt.setString(33, null);
		}

		if (card.getId_users() != null && !card.getId_users().equals("")) {
			pStmt.setString(34, card.getId_users());
		}
		else {
			pStmt.setString(34, null);
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

// 引数cardで指定されたレコードを登録し、成功したらtrueを返す
public boolean insert(Bc card) {
	Connection conn = null;
	boolean result = false;

	try {
		// JDBCドライバを読み込む
		Class.forName("org.h2.Driver");

		// データベースに接続する
		conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/Bcard", "sa", "");

		// SQL文を準備する
		String sql = "insert into BC  values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pStmt = conn.prepareStatement(sql);

		// SQL文を完成させる
		if (card.getId() != null && !card.getId().equals("")) {
			pStmt.setString(1, card.getId());
		}
		else {
			pStmt.setString(1, null);
		}

		if (card.getNumber() != null && !card.getNumber().equals("")) {
			pStmt.setString(2, card.getNumber());
		}
		else {
			pStmt.setString(2, null);
		}

		if (card.getName() != null && !card.getName().equals("")) {
			pStmt.setString(3, card.getName());
		}
		else {
			pStmt.setString(3, null);
		}

		if (card.getZipcode() != null && !card.getZipcode().equals("")) {
			pStmt.setString(4, card.getZipcode());
		}
		else {
			pStmt.setString(4, null);
		}

		if (card.getAddress() != null && !card.getAddress().equals("")) {
			pStmt.setString(5, card.getAddress());
		}
		else {
			pStmt.setString(5, null);
		}

		if (card.getCompany() != null && !card.getCompany().equals("")) {
			pStmt.setString(6, card.getCompany());
		}
		else {
			pStmt.setString(6, null);
		}

		if (card.getDepartment() != null && !card.getDepartment().equals("")) {
			pStmt.setString(7, card.getDepartment());
		}
		else {
			pStmt.setString(7, null);
		}

		if (card.getPosition() != null && !card.getPosition().equals("")) {
			pStmt.setString(8, card.getPosition());
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

		if (card.getTel() != null && !card.getTel().equals("")) {
			pStmt.setString(10, card.getTel());
		}
		else {
			pStmt.setString(10, null);
		}

		if (card.getDay() != null && !card.getDay().equals("")) {
			pStmt.setString(11, card.getDay());
		}
		else {
			pStmt.setString(11, null);
		}

		if (card.getNote() != null && !card.getNote().equals("")) {
			pStmt.setString(12, card.getNote());
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
public boolean update(Bc card) {
	Connection conn = null;
	boolean result = false;

	try {
		// JDBCドライバを読み込む
		Class.forName("org.h2.Driver");

		// データベースに接続する
		conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/Bcard", "sa", "");

		// SQL文を準備する
		String sql = "update BC set  NAME=?, ZIPCODE=?,  ADDRESS=?, COMPANY=?, DEPARTMENT=?, POSITION=?, EMAIL=?, TEL=?, DAY=?, NOTE=?, NUMBER=? where ID=?";
		PreparedStatement pStmt = conn.prepareStatement(sql);

		// SQL文を完成させる

		if (card.getName() != null && !card.getName().equals("")) {
			pStmt.setString(1, card.getName());
		}
		else {
			pStmt.setString(1, null);
		}

		if (card.getZipcode() != null && !card.getZipcode().equals("")) {
			pStmt.setString(2, card.getZipcode());
		}
		else {
			pStmt.setString(2, null);
		}

		if (card.getAddress() != null && !card.getAddress().equals("")) {
			pStmt.setString(3, card.getAddress());
		}
		else {
			pStmt.setString(3, null);
		}

		if (card.getCompany() != null && !card.getCompany().equals("")) {
			pStmt.setString(4, card.getCompany());
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

		if (card.getPosition() != null && !card.getPosition().equals("")) {
			pStmt.setString(6, card.getPosition());
		}
		else {
			pStmt.setString(6, null);
		}

		if (card.getEmail() != null && !card.getEmail().equals("")) {
			pStmt.setString(7, card.getEmail());
		}
		else {
			pStmt.setString(7, null);
		}

		if (card.getTel() != null && !card.getTel().equals("")) {
			pStmt.setString(8, card.getTel());
		}
		else {
			pStmt.setString(8, null);
		}

		if (card.getDay() != null && !card.getDay().equals("")) {
			pStmt.setString(9, card.getDay());
		}
		else {
			pStmt.setString(9, null);
		}

		if (card.getNote() != null && !card.getNote().equals("")) {
			pStmt.setString(10, card.getNote());
		}
		else {
			pStmt.setString(10, null);
		}

		if (card.getNumber() != null && !card.getNumber().equals("")) {
			pStmt.setString(11, card.getNumber());
		}
		else {
			pStmt.setString(11, null);
		}

		pStmt.setString(12, card.getId());

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
public boolean delete(String id) {
	Connection conn = null;
	boolean result = false;

	try {
		// JDBCドライバを読み込む
		Class.forName("org.h2.Driver");

		// データベースに接続する
		conn = DriverManager.getConnection("jdbc:h2:file:C:/pleiades/workspace/data/Bcard", "sa", "");

		// SQL文を準備する
		String sql = "delete from BC where ID=?";
		PreparedStatement pStmt = conn.prepareStatement(sql);

		// SQL文を完成させる
		pStmt.setString(1, id);

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

