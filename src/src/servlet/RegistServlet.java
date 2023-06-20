package servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



/**
 * Servlet implementation class RegistServlet
 */
@WebServlet("/RegistServlet")
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

		//リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
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
		String id = request.getParameter("ID");
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
		String note = request.getParameter("NOTE");
		String id = request.getParameter("ID");
		String number = request.getParameter("NUMBER");
		String name = request.getParameter("NAME");
		String zipcode = request.getParameter("ZIPCODE");
		String address = request.getParameter("ADDRESS");
		String company= request.getParameter("COMPANY");
		String department = request.getParameter("DEPARTMENT");
		String position = request.getParameter("POSITION");
		String email = request.getParameter("EMAIL");
		String tel = request.getParameter("TEL");
		String day = request.getParameter("DAY");
		String note = request.getParameter("NOTE");















	}





		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String word=request.getParameter("word");
		//name属性がpictのファイルをPartオブジェクトとして取得
		Part part=request.getPart("pict");
		//ファイル名を取得
		String filename=part.getSubmittedFileName();//ie対応が不要な場合
//		String filename=Paths.get(part.getSubmittedFileName()).getFileName().toString();
		//アップロードするフォルダ
		String path=getServletContext().getRealPath("/upload");
		//実際にファイルが保存されるパス確認
		System.out.println(path);
		//書き込み
		part.write(path+File.separator+filename);
		request.setAttribute("name",name);
		request.setAttribute("word", word);
		request.setAttribute("filename", filename);
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsp/Registe.jsp");
		rd.forward(request, response);
	}

}


