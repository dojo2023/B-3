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

import dao.NewShopDao;
import model.Shops;

/**
 * Servlet implementation class NewShopServlet
 */
@WebServlet("/NewShopServlet")
public class NewShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("admin_id") == null) {
			response.sendRedirect("/hydrangea/AdminLoginServlet");
			return;
		}
		// 管理者用通知ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/newshop.jsp");
		dispatcher.forward(request, response);



		request.setCharacterEncoding("UTF-8");
		String shop_name = request.getParameter("shop_name");
		//String remarks_shop = request.getParameter("remarks_shop");
		String capacity = request.getParameter("capacity");
		String distance = request.getParameter("distance");
		String price_max = request.getParameter("price_max");
		String price_min = request.getParameter("price_min");
		String genre = request.getParameter("genre");
		String genre_form = request.getParameter("genre_form");

		String sheet_table = request.getParameter("sheet_table");
//		System.out.println("sheet_table;"+sheet_table);
//		String sheet_tatami = request.getParameter("sheet_tatami");

/*



String genre_form = request.getParameter("genre_form");
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



		NewShopDao bDao = new NewShopDao();

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
	sh.setGenre_form(genre_form);



	if(sheet_table!=null) {
		sh.setSheet_table(true);
		}
/*				if(sheet_tatami!=null) {
		sh.setSheet_table(true);
		}
*/



	List<Shops> cardList =
			bDao.select(sh);
	HttpSession session1 = request.getSession();
	session1.setAttribute("cardList", cardList);




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
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id_shops");
		String str = request.getQueryString();
//		String id = request.getParameter("ID");
//		String name = request.getParameter("NAME");
//		String zipcode = request.getParameter("ZIPCODE");
//		String address = request.getParameter("ADDRESS");
//		String tel = request.getParameter("TEL");
//		String mail = request.getParameter("MAIL");
//		String company = request.getParameter("COMPANY");
//		String position = request.getParameter("POSITION");
//		String dept = request.getParameter("DEPT");
//		String memo = request.getParameter("MEMO");

		System.out.println(str);

		request.setAttribute("test", str);
		// 結果ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/sekitestyou.jsp");
	    dispatcher.forward(request, response);




		// 登録処理を行う
//		BcDAO bDao = new BcDAO();
//		if (bDao.insert(new Bc(id,name, zipcode,address,tel,mail,company,position,dept,memo))) {	// 登録成功
//			request.setAttribute("result",
//			new Result("登録成功！", "名刺情報を登録しました。", "/simpleBC/MenuServlet"));
//		}
//		else {												// 登録失敗
//			request.setAttribute("result",
//			new Result("登録失敗！", "名刺情報を登録できませんでした。", "/simpleBC/MenuServlet"));
//		}
//
//		// 結果ページにフォワードする
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
//		dispatcher.forward(request, response);
//
//	}
	}
}

