/**
 * 
 */
package gmap.dao;

import gmap.pojo.DiaDiemPOJO;
import gmap.uti.DiaDiemTree;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @author tmkhanh
 *
 */
public class DiaDiemDAO {
	public static boolean kiemTraThuocNguoiDung(int maDiaDiem, int maNguoiDung) {
		int result = 0;
		MySqlDataAccessHelper helper = new MySqlDataAccessHelper();
		try {
			String sql ="SELECT COUNT(*) AS SoKetQua FROM DiaDiem WHERE MaDiaDiem=? && maNguoiDung=?";
			helper.open();
			PreparedStatement statement = helper.getConnection().prepareStatement(sql);
			statement.setInt(1, maDiaDiem);
			statement.setInt(2, maNguoiDung);
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
	public static DiaDiemTree layCayDiaDiemCuaNguoiDung(int maNguoiDungPOJO) {
		DiaDiemPOJO diaDiemPOJO = new DiaDiemPOJO();
		MySqlDataAccessHelper helper = new MySqlDataAccessHelper();
		try {
			String sql = String.format("SELECT * FROM DiaDiem WHERE MaNguoiDung=%d && MaDiaDiemCha is null", maNguoiDungPOJO);
			helper.open();
			ResultSet rs = helper.executeQuery(sql); //helper.executeStoredProcedure(sql);
			while (rs.next()) {
				diaDiemPOJO.setMaDiaDiem(rs.getInt("MaDiaDiem"));
				diaDiemPOJO.setTenDiaDiem(rs.getString("TenDiaDiem"));
				diaDiemPOJO.setKinhDo(rs.getFloat("KinhDo"));
				diaDiemPOJO.setViDo(rs.getFloat("ViDo"));
				diaDiemPOJO.setLoaiDiaDiem(rs.getInt("LoaiDiaDiem"));
				diaDiemPOJO.setMoTa(rs.getString("MoTa"));
				diaDiemPOJO.setMaNguoiDung(rs.getInt("MaNguoiDung"));
				diaDiemPOJO.setMaDiaDiemCha(rs.getInt("MaDiaDiemCha"));
				break;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			helper.close();
		}
		if (diaDiemPOJO.getMaDiaDiem()==0) return null;
		DiaDiemTree result = new DiaDiemTree();
		result.setThongTinDiaDiem(diaDiemPOJO);
		if (diaDiemPOJO.getLoaiDiaDiem()==0) result.setThongTinCon(layDiaDiemCon(diaDiemPOJO));
		return result;
	}
	
	public static DiaDiemTree layCayDiaDiemTheoMaDiaDiem(int maDiaDiem) {
		DiaDiemPOJO diaDiemPOJO = new DiaDiemPOJO();
		MySqlDataAccessHelper helper = new MySqlDataAccessHelper();
		try {
			String sql = String.format("SELECT * FROM DiaDiem WHERE MaDiaDiem=%d", maDiaDiem);
			helper.open();
			ResultSet rs = helper.executeQuery(sql); //helper.executeStoredProcedure(sql);
			while (rs.next()) {
				diaDiemPOJO.setMaDiaDiem(rs.getInt("MaDiaDiem"));
				diaDiemPOJO.setTenDiaDiem(rs.getString("TenDiaDiem"));
				diaDiemPOJO.setKinhDo(rs.getFloat("KinhDo"));
				diaDiemPOJO.setViDo(rs.getFloat("ViDo"));
				diaDiemPOJO.setLoaiDiaDiem(rs.getInt("LoaiDiaDiem"));
				diaDiemPOJO.setMoTa(rs.getString("MoTa"));
				diaDiemPOJO.setMaNguoiDung(rs.getInt("MaNguoiDung"));
				diaDiemPOJO.setMaDiaDiemCha(rs.getInt("MaDiaDiemCha"));
				break;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			helper.close();
		}
		if (diaDiemPOJO.getMaDiaDiem()==0) return null;
		DiaDiemTree result = new DiaDiemTree();
		result.setThongTinDiaDiem(diaDiemPOJO);
		if (diaDiemPOJO.getLoaiDiaDiem()==0) result.setThongTinCon(layDiaDiemCon(diaDiemPOJO));
		return result;
	}
	
	public static ArrayList<DiaDiemTree> layDiaDiemCon(DiaDiemPOJO diaDiemCha) {
		ArrayList<DiaDiemTree> result = new ArrayList<DiaDiemTree>();
		MySqlDataAccessHelper helper = new MySqlDataAccessHelper();
		try {
			String sql = String.format("SELECT MaDiaDiem FROM DiaDiem WHERE MaDiaDiemCha=%d", diaDiemCha.getMaDiaDiem());
			helper.open();
			ResultSet rs = helper.executeQuery(sql); //helper.executeStoredProcedure(sql);
			while (rs.next()) {
				int maDiaDiem = rs.getInt("MaDiaDiem");
				if (maDiaDiem>0) result.add(layCayDiaDiemTheoMaDiaDiem(maDiaDiem));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			helper.close();
		}
		if (result.size()==0) return null;
		return result;
	}
	public static int themDiaDiem(DiaDiemPOJO obj) {
		MySqlDataAccessHelper helper = new MySqlDataAccessHelper();
		int maDiaDiem = -1;
		try {
			helper.open();
			CallableStatement statement = helper.getConnection().prepareCall("{call ThemDiaDiem(?, ?, ?, ?, ?, ?, ?)}");
			statement.setString(1, obj.getTenDiaDiem());
			statement.setFloat(2, obj.getKinhDo());
			statement.setFloat(3, obj.getViDo());
			statement.setInt(4, obj.getLoaiDiaDiem());
			if (obj.getMoTa()!=null) statement.setString(5, obj.getMoTa()); else statement.setNull(5, java.sql.Types.NVARCHAR);
			statement.setInt(6, obj.getMaNguoiDung());
			statement.setInt(7, obj.getMaDiaDiemCha());

			statement.execute();
			ResultSet rs = statement.getResultSet();
			while (rs.next()) {
				maDiaDiem = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			helper.close();
		}
		return maDiaDiem;
	}
}
