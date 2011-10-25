<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<tr>
	<td valign="bottom" align="left">
		<ul id="navigation">
			<%
			int idxActive = -1;
			try {
				if (request.getAttribute("menuId") != null)
					idxActive = (Integer)request.getAttribute("menuId");
			} catch (Exception e) {

			}
			if (session.getAttribute("admin.user")==null) {
				boolean isLogin = session.getAttribute("khachHang") != null;
				if (idxActive == 1)
					out.println("    	    <li><a class='active' href='./trang-chu'><span>Trang Nhất</span></a></li>");
				else
					out.println("    	    <li><a href='./trang-chu'><span>Trang Nhất</span></a></li>");

				if (idxActive == 2)
					out.println("    	    <li><a class='active' href='./ban-do'><span>Bản đồ</span></a></li>");
				else
					out.println("    	    <li><a href='./ban-do'><span>Bản đồ</span></a></li>");

				if (idxActive == 3)
					if (!isLogin)
						out.println("    	    <li><a class='active' href='./dang-ky'><span>Đăng ký</span></a></li>");
					else
						out.println("    	    <li><a class='active' href='./dang-ky'><span>Tài khoản</span></a></li>");
				else if (!isLogin)
					out.println("    	    <li><a href='./dang-ky'><span>Đăng ký</span></a></li>");
				else
					out.println("    	    <li><a href='./dang-ky'><span>Tài khoản</span></a></li>");

				if (idxActive == 4)
					if (!isLogin)
						out.println("    	    <li><a class='active' href='./dang-nhap'><span>Đăng nhập</span></a></li>");
					else
						out.println("    	    <li><a class='active' href='./dang-xuat'><span>Đăng xuất</span></a></li>");
				else if (!isLogin)
					out.println("    	    <li><a href='./dang-nhap'><span>Đăng nhập</span></a></li>");
				else
					out.println("    	    <li><a href='./dang-xuat'><span>Đăng xuất</span></a></li>");

			} else {
				if (idxActive == 1)
					out.println("    	    <li><a class='active' href='./trang-chu'><span>Trang Nhất</span></a></li>");
				else
					out.println("    	    <li><a href='./trang-chu'><span>Trang Nhất</span></a></li>");

				if (idxActive == 2)
					out.println("    	    <li><a class='active' href='#'><span>Bản đồ</span></a></li>");
				else
					out.println("    	    <li><a href='#'><span>Bản đồ</span></a></li>");
				if (idxActive == 3)
					out.println("    	    <li><a class='active' href='./dang-san-pham'><span>Đăng sản phẩm</span></a></li>");
				else
					out.println("    	    <li><a href='./dang-san-pham'><span>Đăng sản phẩm</span></a></li>");
				if (idxActive == 4)
					out.println("    	    <li><a class='active' href='./dang-xuat'><span>Đăng xuất</span></a></li>");
				else
					out.println("    	    <li><a href='./dang-xuat'><span>Đăng xuất</span></a></li>");

			}
			%>
		</ul></td>
</tr>