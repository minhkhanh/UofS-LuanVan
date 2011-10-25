package gmap.servlet;

import gmap.dao.MySqlDataAccessHelper;
import gmap.dao.NguoiDungDAO;
import gmap.pojo.NguoiDungPOJO;
import gmap.uti.Toolkit;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DangNhapServlet
 */

public class DangNhapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhapServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		MySqlDataAccessHelper.setConnectionParameter(config.getServletContext());
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		if (!Toolkit.checkLoginPermission(session)) {
			response.sendRedirect("./trang-chu");
			return;
		}
		
		String tenDangNhap = request.getParameter("tenDangNhap");
		String matKhau = request.getParameter("matKhau");

		boolean kq = true;
		boolean loginFalse = false;
		if (tenDangNhap==null || tenDangNhap.length()<=4) kq = false;
		if (matKhau==null || matKhau.length()<=4) kq = false;
		
		if (kq) {
			try {
				//goi lenh them nguoidung
				NguoiDungPOJO obj = NguoiDungDAO.dangNhap(tenDangNhap, matKhau);
				
				if (obj!=null) { //dang nhap thanh cong
					session.setAttribute("khachHang", obj);
					response.sendRedirect("./trang-chu");
					return;
				} else loginFalse = true;
				
				if (loginFalse) {
					if (Toolkit.CheckLoginAdmin(tenDangNhap, matKhau, request.getServletContext())) {
						session.setAttribute("admin.user", tenDangNhap);
						Toolkit.CreateUserSpace(session);
						response.sendRedirect("./trang-chu");
						return;
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				return;
			}			
		}	
		request.setAttribute("loginFalse", loginFalse);
		request.setAttribute("menuId", 4);
		RequestDispatcher rd = request.getRequestDispatcher("/tilesjsp/dang-nhap.jsp");
		rd.forward(request, response);
	}
}
