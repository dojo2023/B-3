package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SerchResultServlet
 */
@WebServlet("/SerchResultServlet")
public class SerchResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SerchResultServlet() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	/*	// もしもログインしていなかったらログインサーブレットにリダイレクトする
				HttpSession session = request.getSession();
				if (session.getAttribute("id") == null) {
					response.sendRedirect("/hydrangea/LoginServlet");
					return;
				}*/

				// 検索ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/serchresult.jsp");
				dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/*// もしもログインしていなかったらログインサーブレットにリダイレクトする
				HttpSession session = request.getSession();
				if (session.getAttribute("id") == null) {
					response.sendRedirect("/hydrangea/LoginServlet");
					return;
				}*/

				// リクエストパラメータを取得する
				request.setCharacterEncoding("UTF-8");
				String shop_name = request.getParameter("shop_name");
				String genre = request.getParameter("genre");
				String genre_form = request.getParameter("genre_form");
				String price_max = request.getParameter("price_max");
				String price_min = request.getParameter("price_min");
				String open_hei = request.getParameter("open_hei");
				String close_hei = request.getParameter("close_hei");
				String open_kyu = request.getParameter("open_kyu");
				String close_kyu = request.getParameter("close_kyu");
			//	String holiday_mon = request.getParameter("holiday_mon");
			//	String holiday_tue = request.getParameter("holiday_tue");
			//	String holiday_wed = request.getParameter("holiday_wed");
			//	String holiday_thu = request.getParameter("holiday_thu");
			//	String holiday_fri = request.getParameter("holiday_fri");
			//	String holiday_sat = request.getParameter("holiday_sat");
			//	String holiday_sun = request.getParameter("holiday_sun");
			//	String holiday_syuku = request.getParameter("holiday_syuku");
			//	String holiday_nenmatsu = request.getParameter("holiday_nenmatsu");
			//	String holiday_other = request.getParameter("holiday_other");
				String distance = request.getParameter("distance");
				String address = request.getParameter("address");
				String tabaco = request.getParameter("tabaco");
				String sheet_table = request.getParameter("sheet_table");
				String sheet_tatami = request.getParameter("sheet_tatami");
				String sheet_other = request.getParameter("sheet_other");
				String capacity = request.getParameter("capacity");
				String eat_drink = request.getParameter("eat_drink");
			//	String score = request.getParameter("score");
			//	String tel = request.getParameter("tel");
			//	String homepage = request.getParameter("homepage");
			//	String other = request.getParameter("other");
			//	String photo = request.getParameter("photo");
				String remarks_shop = request.getParameter("remarks_shop");

				// 検索処理を行う
				ShopsDAO bDao = new ShopsDAO(); //DB,listしてね 確認6/16
				List<Bc> cardList =
			bDao.select(new Bc(shop_name, genre, genre_form, price_max,price_min, open_hei, close_hei, open_kyu, close_kyu,
					//holiday_mon,holiday_tue, holiday_wed, holiday_thu, holiday_fri, holiday_sat, holiday_sun, holiday_syuku, holiday_nenmatsu, holiday_other,
					distance, address, tabaco, sheet_table, sheet_tatami, sheet_other, capacity, eat_drink, /*score, tel, homepage, other, photo,*/ remarks_shop));

				// 検索結果をリクエストスコープに格納する
				request.setAttribute("cardList", cardList);//リスト名確認

				// 結果ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/serchresult.jsp");
				dispatcher.forward(request, response);
	}

}
