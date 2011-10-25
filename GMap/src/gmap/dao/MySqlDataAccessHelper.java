/**
 * 
 */
package gmap.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletContext;

/**
 * @author tmkhanh
 * 
 */
public class MySqlDataAccessHelper {
	private static String connectionString = "jdbc:mysql://192.168.1.2:3306/gmap";
	private static String connectionUser = "root";
	private static String connectionPassword = "minhkhanh";
	/**
	 * Thuộc tính đối tượng kết nối cơ sở dữ liệu
	 */
	private Connection connection;

	/**
	 * Phương thức cung cấp đối tượng kết nối đến cơ sở dữ liệu
	 * 
	 * @return đối tượng kết nối
	 */
	public Connection getConnection() {
		return connection;
	}
	
	protected void finalize() {
		try {
			if (connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void setConnectionParameter(ServletContext servletContext) {
		if (servletContext == null) return;
		String databaseHost = servletContext.getInitParameter("database.host");		
		String databasePort = servletContext.getInitParameter("database.port");
		String databaseName = servletContext.getInitParameter("database.name");
		if (databaseHost!=null && databaseName!=null && databasePort!=null) {
			connectionString = "jdbc:mysql://" + databaseHost + ":" + databasePort + "/" + databaseName;
		}
		String databaseUser = servletContext.getInitParameter("database.user");
		if (databaseUser!=null) connectionUser = databaseUser;
		String databasePassword = servletContext.getInitParameter("database.password");
		if (databasePassword!=null) connectionPassword = databasePassword;
	}

	/**
	 * Mở kết nối đến cơ sở dữ liệu
	 * @throws Exception 
	 */
	public void open() throws Exception {
		try {
			//DriverManager.registerDriver(new org.gjt.mm.mysql.Driver());
			Class.forName("org.gjt.mm.mysql.Driver");
			Properties pros = new Properties();
			pros.setProperty("characterEncoding", "utf8");
			pros.setProperty("user", connectionUser);
			pros.setProperty("password", connectionPassword);
			//pros.setProperty("noAccessToProcedureBodies", "true"); 
			connection = DriverManager.getConnection(connectionString, pros);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			throw new Exception();
		}
	}

	/**
	 * Đóng kết nối cơ sở dữ liệu
	 */
	public void close() {		
		try {
			if (connection==null || connection.isClosed()) return;
			connection.close();
		} catch (SQLException ex) {
			Logger.getLogger(MySqlDataAccessHelper.class.getName()).log(
					Level.SEVERE, null, ex);
		}
	}

	/**
	 * Rút trích dữ liệu
	 * 
	 * @param sql
	 *            câu truy vấn SELECT
	 * @return ResultSet
	 */
	public ResultSet executeQuery(String sql) {
		ResultSet rs = null;
		try {

			Statement sm = connection.createStatement();
			rs = sm.executeQuery(sql);
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
		return rs;
	}
	
	public ResultSet executeStoredProcedure(String sql) throws Exception {
		ResultSet rs = null;
		try {

			Statement sm = connection.createStatement();
			sm.execute(sql);
			rs = sm.getResultSet();
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
			throw new Exception();
		}
		return rs;
	}

	/**
	 * Thêm, xóa, cập nhật dữ liệu
	 * 
	 * @param sql
	 *            câu lệnh UPDATE, INSERT, DELETE
	 * @return số lượng dòng cập nhật/thêm/xóa được , -1 : thất bại
	 * @exception SQLException
	 */
	public int executeUpdate(String sql) {
		int num = -1;
		try {
			Statement sm = connection.createStatement();
			num = sm.executeUpdate(sql);
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
		return num;
	}
}
