	package model;

	import java.io.Serializable;

	public class Users implements Serializable {
		private String mail;	// ログイン時のID
		private String pass;	// ログイン時のパスワード
		private String name;	// 名前
		private String department;	// 部署

		public String getMail() {
			return mail;
		}

		public void setMail(String mail) {
			this.mail = mail;
		}

		public String getDepartment() {
			return department;
		}

		public void setDepartment(String department) {
			this.department = department;
		}


		public String getPass() {
			return pass;
		}

		public void setPass(String pass) {
			this.pass = pass;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}


	}

