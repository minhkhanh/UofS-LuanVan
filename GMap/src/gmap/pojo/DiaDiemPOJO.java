/**
 * 
 */
package gmap.pojo;

import java.io.Serializable;

/**
 * @author tmkhanh
 *
 */
public class DiaDiemPOJO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7936232781026901175L;

	private int maDiaDiem;
	private String tenDiaDiem;
	private float kinhDo;
	private float viDo;
	private int loaiDiaDiem;
	private String moTa;
	private int maNguoiDung;
	/**
	 * @return the maDiaDiem
	 */
	public int getMaDiaDiem() {
		return maDiaDiem;
	}

	/**
	 * @param maDiaDiem the maDiaDiem to set
	 */
	public void setMaDiaDiem(int maDiaDiem) {
		this.maDiaDiem = maDiaDiem;
	}

	/**
	 * @return the tenDiaDiem
	 */
	public String getTenDiaDiem() {
		return tenDiaDiem;
	}

	/**
	 * @param tenDiaDiem the tenDiaDiem to set
	 */
	public void setTenDiaDiem(String tenDiaDiem) {
		this.tenDiaDiem = tenDiaDiem;
	}

	/**
	 * @return the kinhDo
	 */
	public float getKinhDo() {
		return kinhDo;
	}

	/**
	 * @param kinhDo the kinhDo to set
	 */
	public void setKinhDo(float kinhDo) {
		this.kinhDo = kinhDo;
	}

	/**
	 * @return the viDo
	 */
	public float getViDo() {
		return viDo;
	}

	/**
	 * @param viDo the viDo to set
	 */
	public void setViDo(float viDo) {
		this.viDo = viDo;
	}

	/**
	 * @return the loaiDiaDiem
	 */
	public int getLoaiDiaDiem() {
		return loaiDiaDiem;
	}

	/**
	 * @param loaiDiaDiem the loaiDiaDiem to set
	 */
	public void setLoaiDiaDiem(int loaiDiaDiem) {
		this.loaiDiaDiem = loaiDiaDiem;
	}

	/**
	 * @return the moTa
	 */
	public String getMoTa() {
		return moTa;
	}

	/**
	 * @param moTa the moTa to set
	 */
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	/**
	 * @return the maNguoiDung
	 */
	public int getMaNguoiDung() {
		return maNguoiDung;
	}

	/**
	 * @param maNguoiDung the maNguoiDung to set
	 */
	public void setMaNguoiDung(int maNguoiDung) {
		this.maNguoiDung = maNguoiDung;
	}

	/**
	 * @return the maDiaDiemCha
	 */
	public int getMaDiaDiemCha() {
		return maDiaDiemCha;
	}

	/**
	 * @param maDiaDiemCha the maDiaDiemCha to set
	 */
	public void setMaDiaDiemCha(int maDiaDiemCha) {
		this.maDiaDiemCha = maDiaDiemCha;
	}

	private int maDiaDiemCha;	

	public DiaDiemPOJO() {
		
	}
	
}
