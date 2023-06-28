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
 * Servlet implementation class DeleteRequestServlet
 */
@WebServlet("/DeleteRequestServlet")
public class DeleteRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("mail") == null) {
			response.sendRedirect("/hydrangea/LoginServlet");
			return;
		}
		// 削除依頼通知ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/delete_request.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("id_users") == null) {
			response.sendRedirect("/hydrangea/LoginServlet");
			return;
		}

		// リクエストパラメータを取得する
		/*request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("ID");
		String name = request.getParameter("NAME");
		String zipcode = request.getParameter("ZIPCODE");
		String address = request.getParameter("ADDRESS");
		String tel = request.getParameter("TEL");
		String mail = request.getParameter("MAIL");
		String company = request.getParameter("COMPANY");
		String position = request.getParameter("POSITION");
		String dept = request.getParameter("DEPT");
		String memo = request.getParameter("MEMO");
*/


		// 登録処理を行う
		/*BcDAO bDao = new BcDAO();
		if (bDao.insert(new Bc(id,name, zipcode,address,tel,mail,company,position,dept,memo))) {	// 登録成功
			request.setAttribute("result",
			new Result("登録成功！", "名刺情報を登録しました。", "/simpleBC/MenuServlet"));
		}
		else {												// 登録失敗
			request.setAttribute("result",
			new Result("登録失敗！", "名刺情報を登録できませんでした。", "/simpleBC/MenuServlet"));
		}

		// 結果ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
		dispatcher.forward(request, response);
		*/
	}
}

