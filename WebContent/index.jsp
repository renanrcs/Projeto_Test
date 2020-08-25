<%@page import="java.util.*, java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projeto Teste</title>
</head>
<body>

	<% 
	 SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyy");
     String dataFormatada = sdf.format(new Date());
	 %>
	
	<h3>A data de Hoje é: <%= dataFormatada %> </h3>

</body>
</html>