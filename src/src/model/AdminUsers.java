	package model;

	import java.io.Serializable;

	public class AdminUsers implements Serializable {
		private String admin_id;	// ログイン時のID
		private String admin_pass;	// ログイン時のパスワード


		public AdminUsers() {
			this(null);
		}
		public AdminUsers(String admin_id) {
			// TODO 自動生成されたコンストラクター・スタブ
		}
		public String getAdmin_id() {
			return admin_id;
		}
		public void setAdmin_id(String admin_id) {
			this.admin_id = admin_id;
		}
		public String getAdmin_pass() {
			return admin_pass;
		}
		public void setAdmin_pass(String admin_pass) {
			this.admin_pass = admin_pass;
		}

	}

