package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Position_memoDao;
import dao.UserDao;
import model.Position_memos;
import model.Users;

/**
 * Servlet implementation class PositionmemoServlet
 */
@WebServlet("/PositionmemoServlet")
public class PositionmemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		 もしもログインしていなかったらログインサーブレットにリダイレクトする
				HttpSession session = request.getSession();
				if (session.getAttribute("mail") == null) {
					response.sendRedirect("/hydrangea/LoginServlet");
					return;
				}
		//セッションスコープからmailを取得

				Users mail_users = (Users) session.getAttribute("mail");
				String mail = mail_users.getMail();
				//mailからid_usersに変換
				UserDao uDao = new UserDao();
				int id_users = uDao.mailtoid(mail);



		//POSITION_MEMOS テーブルに入っているデータのうちidが一致するもののデータ一覧を取って来る
				Position_memoDao pDao = new Position_memoDao();

				ArrayList<Position_memos> posi_array = new ArrayList<>();
				posi_array=pDao.selectbyid(id_users);
		//リクエストスコープに入れる
				request.setAttribute("position_data", posi_array);


		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/positionmemoServlet.jsp");
		dispatcher.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		//String id_position_memos = request.getParameter("id_position_memos");
		//String id_users = request.getParameter("id_users");
		//String created_at = request.getParameter("created_at");
		//String updated_at = request.getParameter("updated_at");
		String name_position = request.getParameter("NAME_POSITION");
		String position = request.getParameter("POSITION");
		String tabaco_position = request.getParameter("TABACO_POSITION");
		String favorite1 = request.getParameter("FAVORITE1");
		String favorite2 = request.getParameter("FAVORITE2");
		String ng = request.getParameter("NG");
		String remarks_position = request.getParameter("REMARKS_POSITION");

//idをsessionスコープから取得
		HttpSession session = request.getSession();
		Users mail_users=(Users)session.getAttribute("mail");
		String mail = mail_users.getMail();

		UserDao uDao = new UserDao();
		int id_users=uDao.mailtoid(mail);
		Position_memos pmemo=new Position_memos();
		pmemo.setIdUsers(id_users);
		pmemo.setNamePosition(name_position);
		pmemo.setPosition(position);
		pmemo.setTabacoPosition(tabaco_position);
		pmemo.setFavorite1(favorite1);
		pmemo.setFavorite2(favorite2);
		pmemo.setNg(ng);
		pmemo.setRemarks_position(remarks_position);


		// 追加、更新または削除を行う
		//BcDAO bDao = new BcDAO();
		if (request.getParameter("SUBMIT").equals("更新")) {

			//更新処理を行う


			// 結果ページにフォワードする
			System.out.println(request.getParameter("SUBMIT"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/positionmemoServlet.jsp");
			dispatcher.forward(request, response);
		}
		else if (request.getParameter("SUBMIT").equals("追加")) {

			// 結果ページにフォワードする
			//System.out.println(request.getParameter("SUBMIT"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/newpositionmemo.jsp");
			dispatcher.forward(request, response);

			}
		else if (request.getParameter("SUBMIT").equals("削除")){

			//削除処理を行う


			// 結果ページにフォワードする
			System.out.println(request.getParameter("SUBMIT"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/positionmemoServlet.jsp");
			dispatcher.forward(request, response);
			}


	}
}
