package servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.ShopDao;
import model.Shops;


/**
 * Servlet implementation class RegistServlet
 */
@WebServlet("/RegistServlet")
@MultipartConfig(
		//maxFileSize = 1000000,
		//maxRequestSize = 1000000
	)

public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
     */
    public RegistServlet() {
        // TODO Auto-generated constructor stub

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

		}
*/

		// 登録ページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Registe.jsp");
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
		}
*/
		// リクエストパラメータを取得する
		request.setCharacterEncoding("UTF-8");

		String shop_name = request.getParameter("shop_name");
		String genre = request.getParameter("genre");
		String genre_form = request.getParameter("genre_form");
		String price_min = request.getParameter("price_min");
		String price_max= request.getParameter("price_max");
		String open_hei = request.getParameter("open_hei");
		String close_hei = request.getParameter("close_hei");
		String open_kyu = request.getParameter("open_kyu");
		String close_kyu = request.getParameter("close_kyu");
		String holiday_mon = request.getParameter("holiday_mon");
		String holiday_tue = request.getParameter("holiday_tue");
		String holiday_wed = request.getParameter("holiday_wed");
		String holiday_thu = request.getParameter("holiday_thu");
		String holiday_fri = request.getParameter("holiday_fri");
		String holiday_sat = request.getParameter("holiday_sat");
		String holiday_sun = request.getParameter("holiday_sun");
		String holiday_syuku = request.getParameter("holiday_syuku");
		String holiday_nenmatsu = request.getParameter("holiday_nenmatsu");
		String holiday_other = request.getParameter("holiday_other_text");
		String distance = request.getParameter("distance");
		String address = request.getParameter("address");
		String tabaco = request.getParameter("tabaco");
		String sheet_table = request.getParameter("sheet_table");
		String sheet_tatami = request.getParameter("sheet_tatami");
		String sheet_other = request.getParameter("sheet_other_text");
		String capacity = request.getParameter("capacity");
		String eat_drink = request.getParameter("eat_drink");
		String score = request.getParameter("score");
		String tel = request.getParameter("tel");
		String homepage = request.getParameter("homepage");
		String other = request.getParameter("other_tel");
		String photo = request.getParameter("photo");
		String remarks_shop = request.getParameter("remarks_shop");






		//name属性がpictのファイルをPartオブジェクトとして取得

		Part part=request.getPart("photo");

		//ファイル名を取得
		String photo1= part.getSubmittedFileName();

		//アップロードするフォルダ
		String path=getServletContext().getRealPath("/upload");

		System.out.println("画像パス"+path);
		System.out.println("画像パス２photo；"+photo1);


			part.write(path+File.separator+photo1);

		System.out.println("画像パス２photo；"+photo1);

		//実際にファイルが保存されるパス確認
		//System.out.println(path);
		//書き込み
		//part.write(path+File.separator+filename);

//		request.setAttribute("filename", filename);
//	RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
//		rd.forward(request, response);

	// 登録処理を行う
		ShopDao bDao = new ShopDao();

		Shops sh = new Shops();

		sh.setAddress(address);
		sh.setCapacity(capacity);
		sh.setClose_hei(close_hei);
		sh.setClose_kyu(close_kyu);
		sh.setDistance(distance);
		sh.setEat_drink(eat_drink);
		sh.setGenre(genre);
		sh.setGenre_form(genre_form);
		sh.setHoliday_fri(holiday_fri);
		sh.setHoliday_mon(holiday_mon);
		sh.setHoliday_nenmatsu(holiday_nenmatsu);
		sh.setHoliday_other(holiday_other);
		sh.setHoliday_sat(holiday_sat);
		sh.setHoliday_sun(holiday_sun);
		sh.setHoliday_syuku(holiday_syuku);
		sh.setHoliday_thu(holiday_thu);
		sh.setHoliday_tue(holiday_tue);
		sh.setHoliday_wed(holiday_wed);
		sh.setHomepage(homepage);
		sh.setOpen_hei(open_hei);
		sh.setOpen_kyu(open_kyu);
		sh.setOther(other);
		sh.setPhoto(photo);
		sh.setPrice_max(price_max);
		sh.setPrice_min(price_min);
		sh.setRemarks_shop(remarks_shop);
		sh.setScore(score);
		sh.setSheet_other(sheet_other);
		sh.setSheet_table(sheet_table);
		sh.setSheet_tatami(sheet_tatami);
		sh.setShop_name(shop_name);
		sh.setTabaco(tabaco);
		sh.setTel(tel);



if (request.getParameter("regist").equals("登録")) {
	if (bDao.insert(sh)) {
//		System.out.println("画像ＩＦphoto；"+photo);
//		request.setAttribute("result",
//				new Result("登録成功！", "レコードを登録しました。", "/simpleBC/ResultServlet"));
//			}

//			else {												// 登録失敗
//		request.setAttribute("result",
//			new Result("登録失敗！", "レコードを登録できませんでした。", "/hydrangea/ResultServlet"));

//
			// 結果ページにフォワードする
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
//			dispatcher.forward(request, response);

	//移動先のサーブレットへリダイレクトするようにする。

	response.sendRedirect("/hydrangea/LoginServlet");

//	}else {

//	}
	}
	}
    }
}
