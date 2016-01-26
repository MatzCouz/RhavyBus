<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% CadastroUsuario cadastro = new CadastroUsuario(); %>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/TEST"
     user="root"  password="pass123"/>


	<sql:update dataSource="${snapshot}" var="result">
	INSERT INTO usuarios VALUES (<%cadastro.getNome();%>,<%cadastro.getSenha();%>);
	</sql:update>
	
	O usuario foi cadastrado.
</body>
</html>