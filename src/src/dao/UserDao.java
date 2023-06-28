package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDao {
	// ログインできるならtrueを返す
	public boolean isLoginOK(String mail ,String pass) {
		Connection conn = null;
		boolean loginResult = false;

		try {
			// JDBCドライバを読み込む
			Class.forName("org.h2.Driver");

			// データベースに接続する
			conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

			// SELECT文を準備する
			String sql = "select count(*) from USERS where MAIL = ? and PASS = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1,mail);
			pStmt.setString(2,pass);

			// SELECT文を実行し、結果表を取得する
			ResultSet rs = pStmt.executeQuery();

			// ユーザーIDとパスワードが一致するユーザーがいたかどうかをチェックする
			rs.next();
			if (rs.getInt("count(*)") >= 1) {
				loginResult = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			loginResult = false;
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
			loginResult = false;
		}
		finally {
			// データベースを切断
			if (conn != null) {
				try {
					conn.close();
				}
				catch (SQLException e) {
					e.printStackTrace();
					loginResult = false;
				}
			}
		}

		// 結果を返す
		return loginResult;
	}




	// 引数cardで指定されたレコードを登録し、成功したらtrueを返す
		public boolean insert(String name, String mail, String pass, String department) {
			Connection conn = null;
			boolean result = false;

			try {
				// JDBCドライバを読み込む
				Class.forName("org.h2.Driver");

				// データベースに接続する
				conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

				// SQL文を準備する
				String sql = "insert into Users(created_at,updated_at, name,mail,pass,department) values (current_timestamp, current_timestamp, ?, ?, ?,?)";
				PreparedStatement pStmt = conn.prepareStatement(sql);

				// SQL文を完成させる
					pStmt.setString(1, name);

					pStmt.setString(2, mail);

					pStmt.setString(3, pass);

					pStmt.setString(4, department);

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

		public int mailtoid(String mail) {
			Connection conn = null;
			int id = 0;

			try {
				// JDBCドライバを読み込む
				Class.forName("org.h2.Driver");

				// データベースに接続する
				conn = DriverManager.getConnection("jdbc:h2:file:C:/dojo6Data/B3", "sa", "");

				// SELECT文を準備する
				String sql = "SELECT id_users FROM USERS  where mail=?";
				PreparedStatement pStmt = conn.prepareStatement(sql);
				pStmt.setString(1,mail);


				// SELECT文を実行し、結果表を取得する
				ResultSet rs = pStmt.executeQuery();

				// ユーザーIDとパスワードが一致するユーザーがいたかどうかをチェックする
				rs.next();
				id = rs.getInt("id_users");


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
			return id;
		}

}