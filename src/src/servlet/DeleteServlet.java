package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	/*	// もしもログインしていなかったらログインサーブレットにリダイレクトする
			HttpSession session = request.getSession();
			if (session.getAttribute("id") == null) {
				response.sendRedirect("/hydrangea/LoginServlet");
				return;
			}
*/
			request.setCharacterEncoding("UTF-8");
			//リクエストパラメータの取得
		/*
			String shop_name = request.getParameter("shop_name");*/

			// 削除ページにフォワードする
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/delete.jsp");
			dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	// もしもログインしていなかったらログインサーブレットにリダイレクトする
				HttpSession session = request.getSession();
				if (session.getAttribute("id") == null) {
					response.sendRedirect("/hydrangea/LoginServlet");
					return;
				}*/

				request.setCharacterEncoding("UTF-8");

				//MessageDaoに干渉
				// リクエストパラメータを取得する
		/*		request.setCharacterEncoding("UTF-8");
				String id_messages = request.getParameter("id_messages");
				String created_at = request.getParameter("created_at");
				String date = request.getParameter("date");
				String id_users = request.getParameter("id_users");
				String title = request.getParameter("title");
				String message = request.getParameter("message");*/


  if (request.getParameter("submit").equals("削除申請")) {
			/*	// 登録処理を行う
				MessageDAO bDao = new MessageDAO();
				if (bDao.insert(new Bc(id_messages, created_at, date, id_users, title, message))) {	// 登録成功
					request.setAttribute("deleteresult",
					new DeleteResult( "の削除を申請しました。"));
				}
				else {	// 登録失敗
					request.setAttribute("deleteresult",
					new DeleteResult("の削除を申請できませんでした。"));
				}*/

				// 結果ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/deleteresult.jsp");
				dispatcher.forward(request, response);
	}

}
}
