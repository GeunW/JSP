<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mission2</title>
</head>
<body>
	<%
	int col = 0;
	try {
		col = Integer.parseInt(request.getParameter("col"));
	} catch (Exception e) {
		out.print("주소창에 'col'을 입력하세요<br/>");

	}
	%>
	<%
	
		for (int i = 1; i < 10; i++) {
			for (int j = 2; j < 10; j = j+col) {
				for (int k = 2; k < 2+col; k++) {
				
	%>
					<%=k%>	x	<%=i%>	=	<%=i * j%>
	
	<%
	out.print("  ");
	}
	%>
	<br />
	<%
	}
	%>
	
	<%
	}
	%>



</body>
</html>