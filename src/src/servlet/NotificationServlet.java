package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NotificationServlet
 */
@WebServlet("/NotificationServlet")
public class NotificationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 検索ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/notificationServlet.jsp");
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

		// 送信を行う
				//BcDAO bDao = new BcDAO();
				if (request.getParameter("SUBMIT").equals("送信")) {
					// 結果ページにフォワードする
					System.out.println(request.getParameter("SUBMIT"));
					RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/notificationServlet.jsp");
					dispatcher.forward(request, response);
				}


				// リクエストパラメータを取得する
				request.setCharacterEncoding("UTF-8");

			// 保存またはリセットを行う
			//BcDAO bDao = new BcDAO();
			if (request.getParameter("SUBMIT").equals("保存")) {
				// 役職メモページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/positionmemoServlet.jsp");
				dispatcher.forward(request, response);
			}
			else if (request.getParameter("SUBMIT").equals("追加")) {
				// 結果ページにフォワードする
				System.out.println(request.getParameter("SUBMIT"));
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/newpositionmemo.jsp");
				dispatcher.forward(request, response);

				}
	}



}
