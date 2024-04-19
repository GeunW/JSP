<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body >
	<h2>Board 목록 조회 테스트(executeQuery() 사용)</h2>
	<table border="1">
		<tr height="40px">
			<th width="10%">num</th>
			<th width="20%">title</th>
			<th width="20%">content</th>
			<th width="20%">name</th>
			<th width="20%">postdate</th>
			<th width="10%">visit</th>
		</tr>

		<%
		JDBConnect jdbc = new JDBConnect();

		String sql = "select num, title, content, name, postdate, visitcount " 
					+"from board "
					+"where name = 'musthave'";
		Statement stmt = jdbc.con.createStatement();

		ResultSet rs = stmt.executeQuery(sql);

		while (rs.next()) {
			int num = rs.getInt(1);
			String title = rs.getString(2);
			String content = rs.getString(3);
			String name = rs.getString(4);
			java.sql.Date postdate = rs.getDate(5);
			int visitcount = rs.getInt(6);
		%>
		<tr height="30px">
			<td align="center"><%=num%></td>
			<td><%=title%></td>
			<td><%=content%></td>
			<td align="center"><%=name%></td>
			<td align="center"><%=postdate%></td>
			<td align="center"><%=visitcount%></td>
		</tr>
		<%
		//out.println(String.format("%s %s %s %s %s %s", num, title, content, name, postdate, visitcount) + "<br/>");
		}

		jdbc.close();
		%>
	</table>
</body>
</html>