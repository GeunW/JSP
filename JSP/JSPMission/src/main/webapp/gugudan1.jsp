<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mission1</title>
</head>
<body>
	<%
	int dan = 2;
	try {
		dan = Integer.parseInt(request.getParameter("dan"));
	} catch (Exception e) {
		out.print("파라메터에 '단'을 입력하세요<br/>");
		
	}
	
	%>
	<%=dan%>단 출력 <br/>
	<%
	for (int i = 1; i < 10; i++) {
		int result = dan * i;
	%>
		<%=dan%> x <%=i%> = <%=result %> <br/>
	<%
	}
	%>

</body>
</html>