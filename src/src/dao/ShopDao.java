package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Shops;

public List<Shops> select(Shops param) {
	Connection conn = null;
	List<Bc> cardList = new ArrayList<Bc>();

	try {
		// JDBCドライバを読み込む
		Class.forName("org.h2.Driver");

		// データベースに接続する
		conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

		// SQL文を準備する
		String sql ="select * from BC WHERE NAME LIKE ? AND NUMBER LIKE ? AND ADDRESS LIKE ? ORDER BY ID";
		PreparedStatement pStmt = conn.prepareStatement(sql);

		// SQL文を完成させる

		if (param.getName() != null) {
			pStmt.setString(1, "%" + param.getName() + "%");
		}
		else {
			pStmt.setString(1, "%");
		}
		if (param.getNumber() != null) {
			pStmt.setString(2, "%" + param.getNumber() + "%");
		}
		else {
			pStmt.setString(2, "%");
		}
		if (param.getAddress() != null) {
			pStmt.setString(3, "%" + param.getAddress() + "%");
		}
		else {
			pStmt.setString(3, "%");
		}

		// SQL文を実行し、結果表を取得する
		ResultSet rs = pStmt.executeQuery();

		// 結果表をコレクションにコピーする
		while (rs.next()) {
			Bc card = new Bc(
			rs.getString("ID"),
			rs.getString("NUMBER"),
			rs.getString("NAME"),
			rs.getString("ZIPCODE"),
			rs.getString("ADDRESS"),
			rs.getString("COMPANY"),
			rs.getString("DEPARTMENT"),
			rs.getString("POSITION"),
			rs.getString("EMAIL"),
			rs.getString("TEL"),
			rs.getString("DAY"),
			rs.getString("NOTE")
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
