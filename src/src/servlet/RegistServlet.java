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

		System.out.println(holiday_fri);




		//name属性がpictのファイルをPartオブジェクトとして取得

		Part part=request.getPart("photo");

		//ファイル名を取得
		String filename = part.getSubmittedFileName();
		//アップロードするフォルダ
		String path=getServletContext().getRealPath("/upload");

		System.out.println("画像パス"+path);
		System.out.println("画像パス２photo；"+filename);


			part.write(path+File.separator+filename);

		System.out.println("画像パス２photo；"+filename);

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
		sh.setCapacity(0);
		sh.setClose_hei(close_hei);
		sh.setClose_kyu(close_kyu);
		sh.setDistance(0);
		sh.setEat_drink(eat_drink);
		sh.setGenre(genre);
		sh.setGenre_form(genre_form);


		if(holiday_fri!=null) {
			sh.setHoliday_fri(true);
		}

		if(holiday_mon!=null) {
			sh.setHoliday_mon(true);
		}

		if(holiday_nenmatsu!=null) {
			sh.setHoliday_nenmatsu(true);
		}

		sh.setHoliday_other(holiday_other);


		if(holiday_sat!=null) {
			sh.setHoliday_sat(true);
		}

		if(holiday_sun!=null) {
			sh.setHoliday_sun(true);
		}

		if(holiday_syuku!=null) {
			sh.setHoliday_syuku(true);
		}

		if(holiday_thu!=null) {
			sh.setHoliday_thu(true);
		}

		if(holiday_tue!=null) {
			sh.setHoliday_tue(true);
		}

		if(holiday_wed!=null) {
			sh.setHoliday_wed(true);
		}


		sh.setHomepage(homepage);
		sh.setOpen_hei(open_hei);
		sh.setOpen_kyu(open_kyu);
		sh.setOther(other);
		sh.setFilename(filename);
		sh.setPrice_max(0);
		sh.setPrice_min(0);
		sh.setRemarks_shop(remarks_shop);
		sh.setScore(0);
		sh.setSheet_other(sheet_other);


		if(sheet_table!=null) {
		sh.setSheet_table(true);
		}

		if(sheet_tatami!=null) {
		sh.setSheet_tatami(true);
		}





		sh.setShop_name(shop_name);
		sh.setTabaco(tabaco);
		sh.setTel(tel);
		sh.setId_users(1);



//if (request.getParameter("regist").equals("登録")) {
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

	response.sendRedirect("/hydrangea/ResultServlet");

//	}else {

//	}
	}
	}
    }
//}
