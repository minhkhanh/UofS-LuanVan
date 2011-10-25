/**
 * 
 */
package gmap.dao;

import gmap.pojo.NguoiDungPOJO;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author tmkhanh
 *
 */
public class NguoiDungDAO {

	public static boolean kiemTraTonTai(String tenDangNhap) {
		int result = 0;
		MySqlDataAccessHelper helper = new MySqlDataAccessHelper();
		try {
			String sql ="SELECT COUNT(*) AS SoKetQua FROM NguoiDung WHERE TaiKhoan=?";
			helper.open();
			PreparedStatement statement = helper.getConnection().prepareStatement(sql);
			statement.setString(1, tenDangNhap);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				result = rs.getInt("SoKetQua");
				break; 
			}
		} catch (Exception e) {
			System.out.println("KhachHangDAO:" + e.getMessage());
		} finally {
			helper.close();
		}
		return result!=0;
	}
	
	public static NguoiDungPOJO dangNhap(String tenDangNhap, String matKhau) {
		NguoiDungPOJO result = null;
		MySqlDataAccessHelper helper = new MySqlDataAccessHelper();
		try {
			String sql ="SELECT * FROM NguoiDung WHERE TaiKhoan=? AND MatKhau=?";
			helper.open();
			PreparedStatement statement = helper.getConnection().prepareStatement(sql);
			statement.setString(1, tenDangNhap);
			statement.setString(2, matKhau);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				result = new NguoiDungPOJO();
				result.setMaNguoiDung(rs.getInt("MaNguoiDung"));
				if (rs.getString("TaiKhoan")!=null) result.setTaiKhoan(rs.getString("TaiKhoan"));
				if (rs.getString("MatKhau")!=null) result.setTaiKhoan(rs.getString("MatKhau"));
				if (rs.getString("HoVaTen")!=null) result.setTaiKhoan(rs.getString("HoVaTen"));
				if (rs.getString("Email")!=null) result.setTaiKhoan(rs.getString("Email"));
				if (rs.getString("DienThoai")!=null) result.setTaiKhoan(rs.getString("DienThoai"));
				if (rs.getString("DiaChi")!=null) result.setTaiKhoan(rs.getString("DiaChi"));
				break; 
			}
		} catch (Exception e) {
			System.out.println("KhachHangDAO:" + e.getMessage());
		} finally {
			helper.close();
		}
		return result;
	}

	public static int themNguoiDung(NguoiDungPOJO obj) {
		MySqlDataAccessHelper helper = new MySqlDataAccessHelper();
		int maKhachHang = -1;
		try {
			helper.open();
			CallableStatement statement = helper.getConnection().prepareCall("{call ThemNguoiDung(?, ?, ?, ?, ?, ?)}");
			statement.setString(1, obj.getTaiKhoan());
			statement.setString(2, obj.getMatKhau());
			statement.setString(3, obj.getHoVaTen());
			statement.setString(4, obj.getEmail());
			statement.setString(5, obj.getDienThoai());
			statement.setString(6, obj.getDiaChi());

			statement.execute();
			ResultSet rs = statement.getResultSet();
			while (rs.next()) {
				maKhachHang = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			helper.close();
		}
		return maKhachHang;
	}
		
}
