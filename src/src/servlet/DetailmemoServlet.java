package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DetailmemoServlet
 */
@WebServlet("/DetailmemoServlet")
public class DetailmemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/detailmemoServlet.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
				//HttpSession session = request.getSession();
				//if (session.getAttribute("id") == null) {
					//response.sendRedirect("/hydrangea/LoginServlet");
					//return;
				//}
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");
		String mail = request.getParameter("MAIL");
		String memo_title = request.getParameter("MEMO_TITLE");
		String memo = request.getParameter("MEMO");

		// 検索処理を行う
		//BcDAO bDao = new BcDAO();
		//List<Bc> cardList = bDao.select(date,title));




	}

}
