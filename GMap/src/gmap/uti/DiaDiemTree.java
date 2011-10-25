/**
 * 
 */
package gmap.uti;

import java.io.Serializable;
import java.util.ArrayList;

import gmap.pojo.DiaDiemPOJO;

/**
 * @author tmkhanh
 *
 */
public class DiaDiemTree implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1475887546348358953L;
	
	private DiaDiemPOJO thongTinDiaDiem;
	private ArrayList<DiaDiemTree> thongTinCon;
	public boolean laNutLa() {
		return thongTinCon==null || thongTinCon.size()==0;
	}
	public boolean laNutRoot() {
		return thongTinDiaDiem.getMaDiaDiemCha()==0;
	}
	public boolean laNutDiaDiem() {
		return thongTinDiaDiem.getLoaiDiaDiem()==1;
	}
	private String outCreateMakerJS() {
		String str = "latLng" + iIndex + " = new google.maps.LatLng(" + thongTinDiaDiem.getViDo() +", " + thongTinDiaDiem.getKinhDo() + ");\n"; 
		str += "maker" + iIndex + " = new google.maps.Marker({\n"
			+ "position: latLng" + iIndex + ",\n"
			+ "map: map,\n"
			+ "title:'" + thongTinDiaDiem.getTenDiaDiem() + "'\n"
		+"});\n";
		return str;
	}
	private int iIndex = -1;
	private String BieuDienThucMucJS(String out, int iCapDuyet, MyInteger iNum) {
		iIndex = iNum.getData();		
		if (!laNutDiaDiem()) {
			if (iCapDuyet>0) {
				out += "tmk = gFld(\"" + thongTinDiaDiem.getTenDiaDiem() + "\", \"javascript:parent.op("+ thongTinDiaDiem.getMaDiaDiem() +")\");\n";
				//out += "aux" + iCapDuyet + " = insFld( aux" + (iCapDuyet-1) + ",gFld(\"" + thongTinDiaDiem.getTenDiaDiem() + "\", \"javascript:parent.op()\"));\n";
				out += "aux" + iCapDuyet + " = insFld( aux" + (iCapDuyet-1) + ",tmk);\n";
			} else {
				out += "foldersTree = gFld(\"" + thongTinDiaDiem.getTenDiaDiem() + "\", \"javascript:parent.op("+ thongTinDiaDiem.getMaDiaDiem() +")\");\n";
				out += "tmk = foldersTree;\n";
				out += "aux0 = foldersTree;\n";
			}
			//out += outCreateMakerJS();
		} else {
			if (iCapDuyet>0) {
				out += "tmk = gLnk(\"S\", \"" + thongTinDiaDiem.getTenDiaDiem() + "\", \"javascript:map.panTo(latLng"+iIndex+")\");\n";
				//out += "insDoc( aux" + (iCapDuyet-1) + ",gLnk(\"S\", \"" + thongTinDiaDiem.getTenDiaDiem() + "\", \"javascript:map.panTo(latLng"+iIndex+")\"));\n";
				out += "insDoc( aux" + (iCapDuyet-1) + ",tmk);\n";
			} else {				
				out += "foldersTree = gLnk(\"S\", \"" + thongTinDiaDiem.getTenDiaDiem() + "\", \"javascript:map.panTo(latLng"+iIndex+")\");\n";
				out += "tmk = foldersTree;\n";
				out += "aux0 = foldersTree;\n"; 
			}
		}
		out += "tmk.xID = " + thongTinDiaDiem.getMaDiaDiem() + ";\n";
		if (!laNutLa()) {
			for (DiaDiemTree diaDiem : thongTinCon) {
				iNum.setData(iNum.getData()+1);
				out = diaDiem.BieuDienThucMucJS(out, iCapDuyet+1, iNum);
			}
		}
		return out;
	}
	private String khoiTaoMakerJS(String out, int iCapDuyet) {
		//iIndex = iNum;
		if (laNutDiaDiem()) {
			out += outCreateMakerJS();
		}
		
		if (!laNutLa()) {
			for (DiaDiemTree diaDiem : thongTinCon) {
				out = diaDiem.khoiTaoMakerJS(out, iCapDuyet+1);
			}
		}
		return out;
	}	
	public String khoiTaoMakerJS() {
		return khoiTaoMakerJS("", 0);
	}
	@Override
	public String toString() {	
		MyInteger iNum = new MyInteger();
		iNum.setData(0);
		String str = BieuDienThucMucJS("", 0, iNum); 
		return str;
	}
	/**
	 * @return the thongTinDiaDiem
	 */
	public DiaDiemPOJO getThongTinDiaDiem() {
		return thongTinDiaDiem;
	}
	/**
	 * @param thongTinDiaDiem the thongTinDiaDiem to set
	 */
	public void setThongTinDiaDiem(DiaDiemPOJO thongTinDiaDiem) {
		this.thongTinDiaDiem = thongTinDiaDiem;
	}
	/**
	 * @return the thongTinCon
	 */
	public ArrayList<DiaDiemTree> getThongTinCon() {
		return thongTinCon;
	}
	/**
	 * @param thongTinCon the thongTinCon to set
	 */
	public void setThongTinCon(ArrayList<DiaDiemTree> thongTinCon) {
		this.thongTinCon = thongTinCon;
	}
}
