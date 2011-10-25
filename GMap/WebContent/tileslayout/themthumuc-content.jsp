<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="net.tanesha.recaptcha.ReCaptchaResponse"%>
<%@page import="net.tanesha.recaptcha.ReCaptchaImpl"%>
<%@page import="net.tanesha.recaptcha.ReCaptchaFactory"%>
<%@page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="/WEB-INF/tlds/CustomTagLibrary" prefix="tmk" %>  
<script type="text/javascript" src="scripts/MyGoogleMap.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<table width="500px" border="1" cellspacing="0" cellpadding="5"
	align="center">
	<tr bgcolor="#666666">
		<td class="bgColorMain"><strong><font color="#FFFFFF">NHẬP TÊN ĐỊA ĐIỂM</font></strong>
		</td>
	</tr>
	<tr>
		<td valign="top">
			<form id="frmNhapTenDiaDiem" name="frmNhapTenDiaDiem" method="post" action="./them-thu-muc"
				onsubmit="return checkNhapTenDiaDiem();">
				<input type="hidden" name="iIdFolder" value="${param.iIdFolder }"/>
				<input type="hidden" name="iViDo" value="${param.iViDo }"/>
				<input type="hidden" name="iKinhDo" value="${param.iKinhDo }"/>
				<input type="hidden" name="hanhDong" value="them"/>
				<table width="100%">
					<tr>
						<td colspan="2"><strong>Thông tin địa điểm</strong>
						</td>
					</tr>
					<tr>
						<td><label for="tenDangNhap">Tên địa điểm</label></td>
						<td><input type="text" name="tenDiaDiem" style="width: 100%" value="${param.tenDiaDiem }" /></td>
					</tr>
					<tr>
						<td></td>
						<td align="center"><input type="submit" name="nhapDiaDiem"
							value="Thêm" /></td>
					</tr>
				</table>
			</form></td>
	</tr>
</table>