package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemoServlet
 */
@WebServlet("/MemoServlet")
public class MemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
				HttpSession session = request.getSession();
				if (session.getAttribute("id_users") == null) {
					response.sendRedirect("/hydrangea/LoginServlet");
					return;
				}
		// メモ一覧ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/memoServlet.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// リクエストパラメータを取得する
				request.setCharacterEncoding("UTF-8");
				String id_memos = request.getParameter("ID_MEMOS");
				String memo_title = request.getParameter("MEMO_TITLE");
				String id_users = request.getParameter("ID_USERS");
				String memo = request.getParameter("MEMO");
				String created_at = request.getParameter("CREATED_AT");
				String updated_at = request.getParameter("UPDATED_AT");

				// 検索処理を行う
				MemoDao bDao = new MemoDao();
				List<Memos> cardList = bDao.select(id_memos,memo_title,id_users));


		// メモ詳細ページにフォワードする
		if(request.getParameter("detail").equals("詳細")){
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/detailmemoServlet.jsp");
			dispatcher.forward(request, response);
	}
	}
}
