package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
				String mail = request.getParameter("MAIL");
				String memo_title = request.getParameter("MEMO_TITLE");

				// 検索処理を行う
				//BcDAO bDao = new BcDAO();
				//List<Bc> cardList = bDao.select(date,title));


		// メモ詳細ページにフォワードする
		if(request.getParameter("detail").equals("詳細")){
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/detailmemoServlet.jsp");
			dispatcher.forward(request, response);
	}
	}
}
