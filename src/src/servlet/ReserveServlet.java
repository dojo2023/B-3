package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReserveServlet
 */
@WebServlet("/ReserveServlet")
public class ReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		/*		HttpSession session = request.getSession();
				if (session.getAttribute("id_users") == null) {
					response.sendRedirect("/hydrangea/LoginServlet");
					return;
				}*/
		//リクエストパラメータの取得
			request.setCharacterEncoding("UTF-8");
			String shop_name = request.getParameter("shop_name");

			//予約ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/reserve.jsp");
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

			//リクエストパラメータの取得
			request.setCharacterEncoding("UTF-8");
			String id_shops = request.getParameter("shop_name");
			String shop_name = request.getParameter("shop_name");
			String apointment_date = request.getParameter("apointment_date");
			String apointment_time = request.getParameter("apointment_time");
			String department = request.getParameter("department");
			String people = request.getParameter("people");
			String remarks_reserve = request.getParameter("remarks_reserve");

			//カレンダーページにフォワードする
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/calendar.jsp");
			dispatcher.forward(request, response);
	}

}
