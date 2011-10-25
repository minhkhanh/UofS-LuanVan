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

import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;

/**
 * Servlet implementation class DangKyServlet
 */

public class DangKyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKyServlet() {
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
		if (!Toolkit.checkRegistrationPermission(session)) response.sendRedirect("./trang-chu");
		request.setAttribute("dkThanhCong", false);
		
		String tenDangNhap = request.getParameter("tenDangNhap");
		String matKhau = request.getParameter("matKhau");
		String matKhauXacNhan = request.getParameter("matKhauXacNhan");
		String hoVaTen = request.getParameter("hoVaTen");
		String email = request.getParameter("email");
		String diaChi = request.getParameter("diaChi");
		String dienThoai = request.getParameter("dienThoai"); 
		
		boolean kq = true;
		boolean kqTrungTen = false;
		if (tenDangNhap==null || tenDangNhap.length()<=4) kq = false;
		if (matKhau==null || matKhau.length()<=4) kq = false;
		if (matKhauXacNhan==null || matKhauXacNhan.length()<=4 || matKhau.compareTo(matKhauXacNhan)!=0)  kq = false;
		if (hoVaTen==null || hoVaTen.length()<=4) kq = false;
		if (email==null || email.length()<=4) kq = false;
		if (diaChi==null || diaChi.length()<=4) kq = false;
		if (dienThoai==null || dienThoai.length()<=4) kq = false;
		if (kq && NguoiDungDAO.kiemTraTonTai(tenDangNhap)) { 
			kq = false;
			kqTrungTen = true;
		}
		
		boolean kqCaptcha = false;
	    String remoteAddr = request.getRemoteAddr();
	    ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
	    reCaptcha.setPrivateKey(Toolkit.RECAPTCHA_PRIVATE_KEY);

	    String challenge = request.getParameter("recaptcha_challenge_field");
	    String uresponse = request.getParameter("recaptcha_response_field");
	    
	    if (challenge!=null && uresponse!=null) {
	    	ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, challenge, uresponse);
	        if (reCaptchaResponse.isValid()) {      
	            kqCaptcha = true;
	        }
	    } 		
	    request.setAttribute("kqCaptcha", kqCaptcha);
	    request.setAttribute("publicKey", Toolkit.RECAPTCHA_PUBLIC_KEY);
	    request.setAttribute("privateKey", Toolkit.RECAPTCHA_PRIVATE_KEY);
		if (kq && kqCaptcha) {
			try {
				//goi lenh them nguoidung
				NguoiDungPOJO obj = new NguoiDungPOJO(0, tenDangNhap, matKhau, hoVaTen, email, dienThoai, diaChi);
				int maKhachHang = NguoiDungDAO.themNguoiDung(obj);
				if (maKhachHang>0) { //dk thanh cong
					obj.setMaNguoiDung(maKhachHang);
					//session.setAttribute("khachHang", );
					request.setAttribute("dkThanhCong", true);
					//response.sendRedirect("/trang-chu");
				}
			} catch (Exception e) {
				//Toolkit.PrintError(request, response, dsDanhMucDTO);
				return;
			}			
		}		

		request.setAttribute("menuId", 3); 
		request.setAttribute("kqTrungTen", kqTrungTen);
		
		RequestDispatcher rd = request.getRequestDispatcher("/tilesjsp/dang-ky.jsp");
		rd.forward(request, response);
				
	}
}
