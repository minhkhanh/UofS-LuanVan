package gmap.servlet;

import gmap.dao.DiaDiemDAO;
import gmap.dao.MySqlDataAccessHelper;
import gmap.pojo.DiaDiemPOJO;
import gmap.pojo.NguoiDungPOJO;
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

public class ThemDiaDiemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemDiaDiemServlet() {
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

		if (session.getAttribute("admin.user")==null && session.getAttribute("khachHang")==null) {
			response.sendRedirect("./trang-chu");
			return;
		}
		request.setCharacterEncoding("UTF-8");
		NguoiDungPOJO nguoiDungPOJO = (NguoiDungPOJO)session.getAttribute("khachHang");
		String hanhDong = "";
		if (request.getParameter("hanhDong")!=null) hanhDong = request.getParameter("hanhDong");
		if (hanhDong.compareTo("them")==0) {
			String tenDiaDiem = request.getParameter("tenDiaDiem");
			String strIdFolder = request.getParameter("iIdFolder");
			String strViDo = request.getParameter("iViDo");
			String strKinhDo = request.getParameter("iKinhDo");
			
			if (tenDiaDiem!=null && strIdFolder!=null && strKinhDo!=null && strViDo!=null) {
				int iIdFolder = Integer.parseInt(strIdFolder);
				float iViDo = Float.parseFloat(strViDo);
				float iKinhDo = Float.parseFloat(strKinhDo);
				if (DiaDiemDAO.kiemTraThuocNguoiDung(iIdFolder, nguoiDungPOJO.getMaNguoiDung())) {
					DiaDiemPOJO diaDiemPOJO = new DiaDiemPOJO();
					diaDiemPOJO.setMaDiaDiemCha(iIdFolder);
					diaDiemPOJO.setKinhDo(iKinhDo);
					diaDiemPOJO.setViDo(iViDo);
					diaDiemPOJO.setLoaiDiaDiem(1);
					diaDiemPOJO.setMaNguoiDung(nguoiDungPOJO.getMaNguoiDung());
					diaDiemPOJO.setTenDiaDiem(tenDiaDiem);
					DiaDiemDAO.themDiaDiem(diaDiemPOJO);
				}
			}
			response.sendRedirect("./ban-do");
			return;
		}
		
		request.setAttribute("menuId", 0);
		RequestDispatcher rd = request.getRequestDispatcher("/tilesjsp/them-dia-diem.jsp");
		rd.forward(request, response);
	}
}
