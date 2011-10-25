package gmap.servlet;

import gmap.dao.DiaDiemDAO;
import gmap.pojo.NguoiDungPOJO;
import gmap.uti.DiaDiemTree;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DangXuatServlet
 */

public class BanDoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BanDoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**       
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
				
		if (session.getAttribute("admin.user")==null && session.getAttribute("khachHang")==null) {
			response.sendRedirect("./dang-nhap");
			return;
		}
		
		DiaDiemTree diaDiemTree = DiaDiemDAO.layCayDiaDiemCuaNguoiDung(((NguoiDungPOJO)session.getAttribute("khachHang")).getMaNguoiDung());
		request.setAttribute("diaDiemTree", diaDiemTree);
		
		request.setAttribute("menuId", 2);
		
		RequestDispatcher rd = request.getRequestDispatcher("/tilesjsp/ban-do.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
