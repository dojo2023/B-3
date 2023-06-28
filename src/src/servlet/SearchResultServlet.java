package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ShopDao;
import model.Shops;

/**
 * Servlet implementation class SearchResultServlet
 */
@WebServlet("/SearchResultServlet")
public class SearchResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchResultServlet() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// もしもログインしていなかったらログインサーブレットにリダイレクトする
				HttpSession session = request.getSession();
				if (session.getAttribute("id_users") == null) {
					response.sendRedirect("/hydrangea/LoginServlet");
					return;
				}
				// 検索ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/searchresult.jsp");
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


				if (request.getParameter("search").equals("検索")) {

					request.setCharacterEncoding("UTF-8");
					String shop_name = request.getParameter("shop_name");
					//String remarks_shop = request.getParameter("remarks_shop");
					String capacity = request.getParameter("capacity");
					String distance = request.getParameter("distance");
					String price_max = request.getParameter("price_max");
					String price_min = request.getParameter("price_min");

				ShopDao bDao = new ShopDao();

				Shops sh = new Shops();

				sh.setShop_name(shop_name);
				//sh.setRemarks_shop(remarks_shop);

				if(capacity != "") {
					sh.setCapacity(Integer.parseInt(capacity));
					}

				if(distance != "") {
					sh.setDistance(Integer.parseInt(distance));
					}

				if(price_max != "") {
					sh.setPrice_max(Integer.parseInt(price_max));
					}

				if(price_min != "") {
					sh.setPrice_min(Integer.parseInt(price_min));
					}

				List<Shops> cardList =
						bDao.select((sh));
				HttpSession session = request.getSession();
				session.setAttribute("cardList", cardList);



				}

				else
				{
					request.setCharacterEncoding("UTF-8");
					String shop_name = request.getParameter("shop_name");
					//String remarks_shop = request.getParameter("remarks_shop");
					String capacity = request.getParameter("capacity");
					String distance = request.getParameter("distance");
					String price_max = request.getParameter("price_max");
					String price_min = request.getParameter("price_min");
					String genre = request.getParameter("genre");
					String genre_form = request.getParameter("genre_form");
/*




					String open_hei = request.getParameter("open_hei");
					String close_hei = request.getParameter("close_hei");
					String open_kyu = request.getParameter("open_kyu");
					String close_kyu = request.getParameter("close_kyu");

					String tabaco = request.getParameter("tabaco");
					String sheet_table = request.getParameter("sheet_table");
					String sheet_tatami = request.getParameter("sheet_tatami");
					String sheet_other = request.getParameter("sheet_other");

					String eat_drink = request.getParameter("eat_drink");

					String remarks_shop = request.getParameter("remarks_shop");

*/



					ShopDao bDao = new ShopDao();

				Shops sh = new Shops();

				sh.setShop_name(shop_name);
				//sh.setRemarks_shop(remarks_shop);

				if(capacity != "") {
					sh.setCapacity(Integer.parseInt(capacity));
					}

				if(distance != "") {
					sh.setDistance(Integer.parseInt(distance));
					}

				if(price_max != "") {
					sh.setPrice_max(Integer.parseInt(price_max));
					}

				if(price_min != "") {
					sh.setPrice_min(Integer.parseInt(price_min));
					}



				sh.setGenre(genre);
				sh.setGenre(genre_form);

				List<Shops> cardList =
						bDao.select((sh));
				HttpSession session = request.getSession();
				session.setAttribute("cardList", cardList);




				}


		// 結果ページにフォワードする
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/searchresult.jsp");
				dispatcher.forward(request, response);


/*
				// 検索処理を行う
				BcDAO bDao = new BcDAO(); //DB,listしてね 確認6/16
				List<Bc> cardList =
			bDao.select(new Bc(shop_name, genre, genre_form, price_max,price_min, open_hei, close_hei, open_kyu, close_kyu,
					//holiday_mon,holiday_tue, holiday_wed, holiday_thu, holiday_fri, holiday_sat, holiday_sun, holiday_syuku, holiday_nenmatsu, holiday_other,
					distance, address, tabaco, sheet_table, sheet_tatami, sheet_other, capacity, eat_drink, /*score, tel, homepage, other, photo, remarks_shop));*/

				// 検索結果をリクエストスコープに格納する
				//request.setAttribute("cardList", cardList);//リスト名確認


	}

}