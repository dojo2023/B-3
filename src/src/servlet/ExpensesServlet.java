package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExpensesServlet
 */
@WebServlet("/ExpensesServlet")
public class ExpensesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 検索ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/expensesServlet.jsp");
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

	// 作成または戻るを行う
	//BcDAO bDao = new BcDAO();
	if (request.getParameter("SUBMIT").equals("作成")) {
		// 経費申請書テンプレページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/expensesServlet.jsp");
		dispatcher.forward(request, response);
	}
	else if (request.getParameter("SUBMIT").equals("戻る")) {
		// 結果ページにフォワードする
		System.out.println(request.getParameter("SUBMIT"));
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/newpositionmemo.jsp");
		dispatcher.forward(request, response);

		}
	}

}
