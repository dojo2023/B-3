package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewpositionmemoServlet
 */
@WebServlet("/NewpositionmemoServlet")
public class NewpositionmemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 役職新規作成ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/newpositionmemo.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
				//HttpSession session = request.getSession();
				//if (session.getAttribute("id") == null) {
					//response.sendRedirect("/hydrangea/LoginServlet");
					//return;
				//}

		// リクエストパラメータを取得する
				request.setCharacterEncoding("UTF-8");

			// 保存またはリセットを行う
			//BcDAO bDao = new BcDAO();
			if (request.getParameter("SUBMIT").equals("保存")) {
				// 役職メモページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/positionmemoServlet.jsp");
				dispatcher.forward(request, response);
			}

		}

}
