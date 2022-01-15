<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- <%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %> -->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<!-- <script type="text/javascript" src"resources/js/jquery.js"></script> -->
		<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet">
	</head>
	<body>
		<h3>Alterar tarefa - ${tarefa.id}</h3>
		<form action="alteraTarefa" method="post">
			<input type="hidden" name="id" value="${tarefa.id}">

			Descrição: 
			<br>
			<textarea name="descricao" cols="100" rows="5">
					${tarefas.descricao}
			</textarea>
			<br>
			
			Finalizado? <input type="checkbox" name="finalizado"
				value="true" ${tarefa.finalizado? 'checked' : ''}>
			<br>

			Data de Finalização: <!-- <caelum:campoData id="dataFinalizacao"></caelum:campoData> -->
			<br>
			<input type="text" name="dataFinalizacao"
				value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" 
				pattern="dd/MM/yyyy"/>">
			<br>
			 
			<input type="submit" value="Alterar">
		</form>
	</body>
</html>