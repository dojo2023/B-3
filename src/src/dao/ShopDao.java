package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Shops;

public class ShopDao {
	// 引数paramで検索項目を指定し、検索結果のリストを返す



public boolean insert(Shops card) {
	Connection conn = null;
	boolean result=false;

	try {
		// JDBCドライバを読み込む
		Class.forName("org.h2.Driver");

		// データベースに接続する
		conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

		// SQL文を準備する・(created_at,updated_atを含めて３６こ
		String sql ="INSERT INTO SHOPS "
				+ "(created_at,updated_at,shop_name,genre,genre_form,price_max,price_min,"
				+ "open_hei,close_hei,open_kyu,close_kyu,"
				+ "holiday_mon,holiday_tue,holiday_wed,holiday_thu,holiday_fri,holiday_sat,holiday_sun,holiday_syuku,"
				+ "holiday_nenmatsu,holiday_other,distance,address,tabaco,sheet_table,sheet_tatami,sheet_other,"
				+ "capacity,eat_drink,score,tel,homepage,other,photo,remarks_shop,id_users) "
				+ "VALUES "
				+ "(CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


		// SQL文を完成させる

		PreparedStatement pStmt = conn.prepareStatement(sql);

		// SQL文を完成させる

		pStmt.setString(1, card.getShop_name());
		pStmt.setString(2, card.getGenre());



			pStmt.setString(3, card.getGenre_form());

			pStmt.setInt(4, card.getPrice_max());

			pStmt.setInt(5, card.getPrice_min());


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


			pStmt.setString(10, card.getHoliday_mon());


			pStmt.setString(11, card.getHoliday_tue());

			pStmt.setString(12, card.getHoliday_wed());

			pStmt.setString(13, card.getHoliday_thu());

			pStmt.setString(14, card.getHoliday_fri());

			pStmt.setString(15, card.getHoliday_sat());

			pStmt.setString(16, card.getHoliday_sun());

			pStmt.setString(17, card.getHoliday_syuku());

			pStmt.setString(18, card.getHoliday_nenmatsu());

			pStmt.setString(19, card.getHoliday_other());

			pStmt.setInt(20, card.getDistance());

			pStmt.setString(21, card.getAddress());

			pStmt.setString(22, card.getTabaco());

			pStmt.setString(23, card.getSheet_table());

			pStmt.setString(24, card.getSheet_tatami());

			pStmt.setString(25, card.getSheet_other());

			pStmt.setInt(26, card.getCapacity());

			pStmt.setString(27, card.getEat_drink());

			pStmt.setInt(28, card.getScore());

			pStmt.setString(29, card.getTel());

			pStmt.setString(30, card.getHomepage());

			pStmt.setString(31, card.getOther());

			pStmt.setString(32, card.getPhoto());

			pStmt.setString(33, card.getRemarks_shop());

			pStmt.setInt(34, card.getId_users());

		// SQL文を実行する
		if (pStmt.executeUpdate() == 1) {
			result = true;
		}
		//else(pStmt.executeUpdate() == 2) {
		//	result = false;

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

