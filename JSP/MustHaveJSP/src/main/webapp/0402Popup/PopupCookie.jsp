<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String chkVal = request.getParameter("inactiveToday");
if (chkVal != null && chkVal.equals("1")) {
	Cookie cookie = new Cookie("PopupClose", "off");
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(60 * 60 * 24);
	response.addCookie(cookie);
	out.println("쿠기 : 하루 동안 열지 않음");
}
System.out.println("chkVal:"+ chkVal);
%>