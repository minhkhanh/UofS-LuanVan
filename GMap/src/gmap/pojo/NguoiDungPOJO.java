/**
 * 
 */
package gmap.pojo;

import java.io.Serializable;

/**
 * @author tmkhanh
 *
 */
public class NguoiDungPOJO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 957788244497667559L;

	private int maNguoiDung;
	private String taiKhoan;
	private String matKhau;
	private String hoVaTen;
	private String email;
	private String dienThoai;
	private String diaChi;

	/**
	 * @param maNguoiDung
	 * @param taiKhoan
	 * @param matKhau
	 * @param hoVaTen
	 * @param email
	 * @param dienThoai
	 * @param diaChi
	 */
	public NguoiDungPOJO(int maNguoiDung, String taiKhoan, String matKhau,
			String hoVaTen, String email, String dienThoai, String diaChi) {
		super();
		this.maNguoiDung = maNguoiDung;
		this.taiKhoan = taiKhoan;
		this.matKhau = matKhau;
		this.hoVaTen = hoVaTen;
		this.email = email;
		this.dienThoai = dienThoai;
		this.diaChi = diaChi;
	}
	public NguoiDungPOJO() {
		
	}
	/**
	 * @return the maNguoiDung
	 */
	public int getMaNguoiDung() {
		return maNguoiDung;
	}
	/**
	 * @return the taiKhoan
	 */
	public String getTaiKhoan() {
		return taiKhoan;
	}
	/**
	 * @param taiKhoan the taiKhoan to set
	 */
	public void setTaiKhoan(String taiKhoan) {
		this.taiKhoan = taiKhoan;
	}
	/**
	 * @return the diaChi
	 */
	public String getDiaChi() {
		return diaChi;
	}
	/**
	 * @param diaChi the diaChi to set
	 */
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	/**
	 * @param maNguoiDung the maNguoiDung to set
	 */
	public void setMaNguoiDung(int maNguoiDung) {
		this.maNguoiDung = maNguoiDung;
	}
	/**
	 * @return the maKhau
	 */
	public String getMatKhau() {
		return matKhau;
	}
	/**
	 * @param maKhau the maKhau to set
	 */
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	/**
	 * @return the hoVaTen
	 */
	public String getHoVaTen() {
		return hoVaTen;
	}
	/**
	 * @param hoVaTen the hoVaTen to set
	 */
	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the dienThoai
	 */
	public String getDienThoai() {
		return dienThoai;
	}
	/**
	 * @param dienThoai the dienThoai to set
	 */
	public void setDienThoai(String dienThoai) {
		this.dienThoai = dienThoai;
	}	
	
}
