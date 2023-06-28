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
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/positionmemoServlet.jsp");
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
		String id_position_memos = request.getParameter("id_position_memos");
		String id_users = request.getParameter("id_users");
		String created_at = request.getParameter("created_at");
		String updated_at = request.getParameter("updated_at");
		String name_position = request.getParameter("NAME_POSITION");
		String position = request.getParameter("POSITION");
		String tabaco_position = request.getParameter("TABACO_POSITION");
		String favorite1 = request.getParameter("FAVORITE1");
		String favorite2 = request.getParameter("FAVORITE2");
		String ng = request.getParameter("NG");
		String remarks_position = request.getParameter("REMARKS_POSITION");



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

			//追加処理を行う


			// 結果ページにフォワードする
			System.out.println(request.getParameter("SUBMIT"));
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
