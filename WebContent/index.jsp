<%@page import="java.util.Date"%>
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
	 java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd/MM/yyy");
     String dataFormatada = sdf.format(new java.util.Date());
	 %>
	
	<h3>A data de Hoje é: <%= dataFormatada %> </h3>

</body>
</html>