/**
 * 
 */
package gmap.uti;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

/**
 * @author tmkhanh
 *
 */
public final class Toolkit {
	public final static String RECAPTCHA_PUBLIC_KEY = "6Ldnp8gSAAAAACWq30BgevqwCrYiVGK-sKh3_hKT";
	public final static String RECAPTCHA_PRIVATE_KEY = "6Ldnp8gSAAAAAFKglqGXBjxa9D1lhsESqgJNvPLb";
	static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	static Random rnd = new Random();

	public static String randomString( int len ) 
	{
	   StringBuilder sb = new StringBuilder( len );
	   for( int i = 0; i < len; i++ ) {
		   char ch = AB.charAt( rnd.nextInt(AB.length()) );
		   //if (new String("0123456789").indexOf(ch)==-1) {
			   sb.append(ch); 
		   //} else --i;
	   }
	      
	   return sb.toString();
	}
	protected static String realPath;
    /**
	 * @return the realPath
	 */
	public static String getRealPath() {
		return realPath;
	}
	/**
	 * @param realPath the realPath to set
	 */
	public static void setRealPath(String realPath) {
		Toolkit.realPath = realPath;
	}
	public static boolean deleteDir(File dir) {
		boolean success = true;
        if (dir.isDirectory()) {        	
            String[] children = dir.list();
            for (int i=0; i<children.length; i++) {
                success = success && deleteDir(new File(dir, children[i]));
            }            
        }
        return success && dir.delete();
    }

	public static void copyFile(File source, File dest) throws IOException {
		if (!dest.exists()) {
			dest.createNewFile();
		}
		InputStream in = null;
		OutputStream out = null;
		try {
			in = new FileInputStream(source);
			out = new FileOutputStream(dest);
			byte[] buf = new byte[1024];
			int len;
			while ((len = in.read(buf)) > 0) {
				out.write(buf, 0, len);
			}
		}
		finally {
			in.close();
			out.close();
		}
	}

	public static boolean DeleteUserSpace(HttpSession session) {
		if (session.getAttribute("admin.user")!=null) {
			return deleteDir(new File(realPath + "\\temp\\" + session.getAttribute("admin.user")));
		}
		return false;
	}
	public static boolean CreateUserSpace(HttpSession session) {
		if (session.getAttribute("admin.user")!=null) {
			return new File(realPath + "\\temp\\" + session.getAttribute("admin.user")).mkdirs();
		}
		return false; 
	}
	public static File GetUserSpace(HttpSession session) {
		if (session.getAttribute("admin.user")!=null) {
			File f =  new File(realPath + "\\temp\\" + session.getAttribute("admin.user"));
			if (f.exists()) return f;
		}
		return null;
	}
	public static String GetUserPath(HttpSession session) {
		if (session.getAttribute("admin.user")!=null) {
			return "./temp/" + session.getAttribute("admin.user");			
		}
		return null;
	}
	public static boolean checkRegistrationPermission (HttpSession session) {
		return session.getAttribute("admin.user")==null && session.getAttribute("khachHang")==null;			
	}
	public static boolean checkLoginPermission (HttpSession session) {
		return session.getAttribute("admin.user")==null && session.getAttribute("khachHang")==null;			
	}
	public static boolean CheckLoginAdmin(String user, String pass, ServletContext servletContext) {
//		if (servletContext==null) return false;
//		String userConfig = servletContext.getInitParameter("admin.user");		
//		String passConfig = servletContext.getInitParameter("admin.password");
//		return user.compareTo(userConfig)==0 && pass.compareTo(passConfig)==0;
		return false;
	}
}
