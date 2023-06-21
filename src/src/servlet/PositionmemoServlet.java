package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String name = request.getParameter("NAME");
		String position = request.getParameter("POSITION");
		String smoking = request.getParameter("SMOKING");
		String favorite1 = request.getParameter("FAVORITE1");
		String favorite2 = request.getParameter("FAVORITE2");
		String ng = request.getParameter("NG");
		String remarks = request.getParameter("REMARKS");

		// 追加、更新または削除を行う
		//BcDAO bDao = new BcDAO();
		if (request.getParameter("SUBMIT").equals("更新")) {
			// 結果ページにフォワードする
			System.out.println(request.getParameter("SUBMIT"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/positionmemoServlet.jsp");
			dispatcher.forward(request, response);
		}
		else if (request.getParameter("SUBMIT").equals("追加")) {
			// 結果ページにフォワードする
			System.out.println(request.getParameter("SUBMIT"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/newpositionmemo.jsp");
			dispatcher.forward(request, response);

			}
		else if (request.getParameter("SUBMIT").equals("削除")){
			// 結果ページにフォワードする
			System.out.println(request.getParameter("SUBMIT"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/positionmemoServlet.jsp");
			dispatcher.forward(request, response);
			}


	}
}
