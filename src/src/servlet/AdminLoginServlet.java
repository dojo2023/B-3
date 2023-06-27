package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminUserDao;
import model.AdminUsers;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ログインページにフォワードする
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/adminlogin.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String admin_id = request.getParameter("admin_id");
		String admin_pass = request.getParameter("admin_pass");
		
		System.out.println(admin_id);
		System.out.println(admin_pass);

		AdminUserDao uDao = new AdminUserDao();
		if(uDao.isLoginOK(admin_id,admin_pass)) {
			//成功したときセッションスコープにIDを格納する//
			HttpSession session = request.getSession();
			session.setAttribute("admin_id", new AdminUsers(admin_id));
			//model Usersに格納↑

			response.sendRedirect("/hydrangea/AdminmenuServlet");
		}else{
			//失敗した時
			request.setAttribute("message", "IDまたはPWに間違いがあります。");

			// 結果ページにフォワードする
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/adminlogin.jsp");
			dispatcher.forward(request, response);

		}




	}

}
