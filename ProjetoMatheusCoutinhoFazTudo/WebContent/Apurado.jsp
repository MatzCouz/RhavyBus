<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% int count = 0;%>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/TEST"
     user="root"  password="pass123"/>

	<sql:query dataSource="${snapshot}" var="result">
	SELECT numero from passagens WHERE ocupado = 'sim';
	</sql:query>
	
	<c:forEach var="row" items="${result.rows}">
		<% count++; %>
	</c:forEach>
		<% count = count*25; 
		   out.println(count);
		%>
	
</body>
</html>