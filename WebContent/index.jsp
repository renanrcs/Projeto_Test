<jsp:useBean id="casa" class="aula.Casa" type="aula.Casa"/>
<%@page import="java.util.*, java.text.*"%>
<%@page import="aula.Casa" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projeto Teste</title>
</head>
<body>

	<%! int contador = 1; %>
	
	<% if (contador == 1){
		contador++;
			 %>
			
		<h3>Essa é sua Primeira visita, Seja bem vindo!!!</h3>
		<% } else { %>
		<h2>Essa é sua visita de numero <%= contador %></h2>
		<% contador++; %>
		<% } %>

	<% 
	 SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyy");
     String dataFormatada = sdf.format(new Date());
	 %>
	
	<h3>A data de Hoje é: <%= dataFormatada %> </h3>
	
	<%--Aqui vamos ver como funciona as tag JSTL--%>
	
	<%= casa.getClass() %> <br>
	<jsp:setProperty property="*" name="casa"/>
	<jsp:setProperty property="area" value="600" name="casa"/>
	<jsp:setProperty property="qtdQuartos" value="5" name="casa"/>
	
	<jsp:getProperty property="name" name="casa"/> <br>
	Area: <jsp:getProperty property="area" name="casa"/> <br>
	Quantidade de Quartos: ${ casa.qtdQuartos } <br>
	
	<c:out value="${ 'Bem vindo ao JSTL' }"></c:out> <br>
	
	<%--<c:import var="page" url="http://leadfortaleza.com.br/portal"></c:import>
	<c:out value="${ page }"></c:out> <br>
	 --%>
	 
	 <c:catch var="erro">
	 	<% int var=100/0; %>
	 </c:catch>
	 
	 <c:if test="${ erro != null }">
	 	${ erro.message } <br>
	 </c:if>
	 
	 <c:set var="numero" value="${ 100 }"/>
	 
	 <c:choose>
	 	
	 	<c:when test="${ numero > 50 }">
	 		<c:out value="${ 'Numero é maior que 50' }"/> <br>
	 	</c:when>
	 	
	 	<c:when test="${ numero < 50 }">
	 		<c:out value="${ 'Numero é Menor do que 50' }"/> <br>
	 	</c:when>
	 	
	 	<c:otherwise>
	 		<c:out value="${ 'Numero é igual a 50' }"/> <br>
	 	</c:otherwise>
	 
	 </c:choose>
	 
</body>
</html>