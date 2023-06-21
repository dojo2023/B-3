package test;

import dao.UserDao;

public class UserDaoTest {

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ
		String id = "ahco-apahhco@gmail.com";
		String pw = "chaohpa";
		UserDao uDao = new UserDao();
		System.out.println(uDao.isLoginOK(id,pw));

	}

}
