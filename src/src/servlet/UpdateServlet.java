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

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
@MultipartConfig(
		//maxFileSize = 1000000,
		//maxRequestSize = 1000000
	)
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
 // 更新ページにフォワードする
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Update.jsp");
		dispatcher.forward(request, response);

		/*	// もしもログインしていなかったらログインサーブレットにリダイレクトする
		HttpSession session = request.getSession();
		if (session.getAttribute("id") == null) {
			response.sendRedirect("/hydrangea/LoginServlet");
			return;

		}
*/

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
		String photo2= part.getSubmittedFileName();

		//アップロードするフォルダ
		String path=getServletContext().getRealPath("/upload");

		System.out.println("画像パス"+path);
		System.out.println("画像パス２photo；"+photo2);


			part.write(path+File.separator+photo2);

		System.out.println("画像パス２photo；"+photo2);











}
}
