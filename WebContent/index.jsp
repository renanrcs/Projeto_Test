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

	<%! int contador = 1; %>
	
	<% if (contador == 1){
			contador++; %>
			
		<h3>Essa é sua primeira visita, Seja bem vindo!!!</h3>
		<% } else { %>
		<h2>Essa é sua visita de numero <%= contador %></h2>
		<% } %>

	<% 
	 SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyy");
     String dataFormatada = sdf.format(new Date());
	 %>
	
	<h3>A data de Hoje é: <%= dataFormatada %> </h3>

</body>
</html>