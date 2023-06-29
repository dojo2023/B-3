package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Shops;

public class NewShopDao {
	public List<Shops> select(Shops card) {
		Connection conn = null;
		List<Shops> cardList = new ArrayList<Shops>();
		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

			// SQL文を準備する・(created_at,updated_atを含めて３６こ
			String sql ="SELECT * FROM SHOPS WHERE shop_name ='居酒屋あじさい'";

			//　SQL実験　　 and sheet_table like ? and sheet_table like ?

			PreparedStatement pStmt = conn.prepareStatement(sql);
			// SQL文を完成させる  and sheet_tatami like ?

//			if (card.getShop_name() != null) {
//				pStmt.setString(1, "%" + card.getShop_name() + "%");
//			}
//			else {
//				pStmt.setString(1, "%");
//			}
//			if (card.getRemarks_shop() != null) {
//				pStmt.setString(2, "%" + card.getShop_name() + "%");
//			}
//			else {
//				pStmt.setString(2, "%");
//			}
//			if (card.getPrice_min() != 0) {
//				pStmt.setInt(3, card.getPrice_min());
//			}
//			else {
//				pStmt.setInt(3, 0);
//			}
//			if (card.getPrice_max() != 0) {
//				pStmt.setInt(4, card.getPrice_max());
//			}
//			else {
//				pStmt.setInt(4, 10000000);
//			}
//			if (card.getCapacity() != 0) {
//				pStmt.setInt(5, card.getCapacity());
//			}
//			else {
//				pStmt.setInt(5, 10000000);
//			}
//			if (card.getDistance() != 0) {
//				pStmt.setInt(6, card.getDistance());
//			}
//			else {
//				pStmt.setInt(6, 10000000);
//			}
//			//選ばなかった時は「選択してください」が渡されるので
//			if (card.getGenre().equals("選択して下さい")) {
//				pStmt.setString(7, "%");
//			}
//			else {
//
//				pStmt.setString(7, "%" + card.getGenre() + "%");
//			}
//			if (card.getGenre_form().equals("選択して下さい")) {
//				pStmt.setString(8, "%");
//
//			}
//			else {
//				pStmt.setString(8, "%" + card.getGenre_form() + "%");
//			}

/*
			if (card.getSheet_table().equals("on")) {
				pStmt.setString(9, "TURE");

			}
			else {
				pStmt.setString(9, "FALSE");
			}
/*

			if (card.getSheet_tatami().equals("TURE")) {
				pStmt.setString(10, "TURE");

			}
			else {
				pStmt.setString(10, "FALSE");
			}



			/*
			 pStmt.setBoolean(23, card.getSheet_table());

			pStmt.setBoolean(24, card.getSheet_tatami());

			pStmt.setString(25, card.getSheet_other());

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




			 */




				// SQL文を実行し、結果表を取得する
				ResultSet sh = pStmt.executeQuery();

				// 結果表をコレクションにコピーする
				while (sh.next()) {

					Shops card1 = new Shops(
							sh.getInt("id_shops"),
							sh.getString("shop_name"),
							sh.getString ("genre"),
							sh.getString ("genre_form"),
							sh.getInt ("price_max"),
							sh.getInt ("price_min"),
							sh.getString ("open_hei"),
							sh.getString ("close_hei"),
							sh.getString ("open_kyu"),
							sh.getString ("close_kyu"),
							sh.getBoolean ("holiday_mon"),
							sh.getBoolean ("holiday_tue"),
							sh.getBoolean ("holiday_wed"),
							sh.getBoolean ("holiday_thu"),
							sh.getBoolean ("holiday_fri"),
							sh.getBoolean ("holiday_sat"),
							sh.getBoolean ("holiday_sun"),
							sh.getBoolean ("holiday_syuku"),
							sh.getBoolean ("holiday_nenmatsu"),
							sh.getString ("holiday_other"),
							sh.getInt ("distance"),
							sh.getString ("address"),
							sh.getString ("tabaco"),
							sh.getBoolean ("sheet_table"),
							sh.getBoolean ("sheet_tatami"),
							sh.getString ("sheet_other"),
							sh.getInt ("capacity"),
							sh.getString ("eat_drink"),
							sh.getInt ("score"),
							sh.getString ("tel"),
							sh.getString ("homepage"),
							sh.getString ("other"),
							sh.getString ("filename"),
							sh.getString ("remarks_shop"),
							sh.getInt ("id_users")
							);
							cardList.add(card1);
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

}
