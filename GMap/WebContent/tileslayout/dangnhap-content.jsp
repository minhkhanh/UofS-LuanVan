<?xml version="1.0" encoding="utf-8" ?>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<table width="500px" border="1" cellspacing="0" cellpadding="5"
	align="center">
	<tr bgcolor="#666666">
		<td class="bgColorMain"><strong><font color="#FFFFFF">ĐĂNG NHẬP</font></strong>
		</td>
	</tr>
	<tr>
		<td valign="top">
			<form id="frmDangNhap" name="frmDangNhap" method="post" action="./dang-nhap"
				onsubmit="return checkValidationLogin();">
				<table width="100%">
					<tr>
						<td colspan="2"><strong>Thông tin đăng nhập</strong>
						</td>
					</tr>
					<tr>
						<td><label for="tenDangNhap">Tên đăng nhập</label></td>
						<td><input type="text" name="tenDangNhap" style="width: 100%" value="${param.tenDangNhap }"
							onkeyup="checkValidationLoginObj('tenDangNhap')" /></td>
					</tr>
					<tr>
						<td><label for="matKhau">Mật khẩu</label></td>
						<td><input type="password" name="matKhau" style="width: 100%"
							onkeyup="checkValidationLoginObj('matKhau')" /></td>
					</tr>
					<tr>
						<td></td>
						<td align="center"><input type="submit" name="dangNhap"
							value="Đăng nhập" /></td>
					</tr>
					<c:if test="${loginFalse }">
						<tr>
							<td colspan="2"><font color="#FF0000">Tên đăng nhập
									không tồn tại hoặc mật khẩu không đúng</font></td>
						</tr>
					</c:if>
				</table>
			</form></td>
	</tr>
</table>