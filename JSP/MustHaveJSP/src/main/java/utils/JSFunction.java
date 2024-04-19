package utils;

import java.io.IOException;

import jakarta.servlet.jsp.JspWriter;

public class JSFunction {
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			String script = ""
					+"<script>"
					+"  alert('" + msg + "');"
					+"  location.href='" + url + "';"
					+"</script>";
			out.println(script);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script = ""
					+"<script>"
					+"  alert('" + msg + "');"
					+"  history.back();"
					+"</script>";
			out.println(script);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
