<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ include file="../managerHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>

</head>
<body>
	
	<div class="container">
	
	<h1>Cadastro de Produtos</h1>

	<form:form action="${s:mvcUrl('PC#gravar').build()}" method="post"
		commandName="produto" enctype="multipart/form-data">
		<div class="form-group">
			<label>Título</label>
			<form:input path="titulo" cssClass="form-control" />
			<form:errors path="titulo" />
		</div>
		
		<div class="form-group">
			<label>Descrição</label>
			<form:textarea path="descricao" cssClass="form-control" />
			<form:errors path="descricao" />
		</div>
		<div class="form-group">
			<label>Páginas</label>
			<form:input path="paginas" cssClass="form-control" />
			<form:errors path="paginas" />
		</div>
		<div class="form-group">
			<label>Data de lançamento</label>
			<form:input path="dataLancamento" cssClass="form-control" />
			<form:errors path="dataLancamento" />
		</div>
		
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label>
				<form:input path="precos[${status.index}].valor" cssClass="form-control"/>
				<form:hidden path="precos[${status.index}].tipo" value="${tipoPreco}" />
			</div>
		</c:forEach>
		<div>
			<label>Sumário</label>
			<input name="sumario" type="file" class="form-control">
		</div>
		<button type="submit" class="btn btn-primary" style="margin-top: 20px">Cadastrar</button>
	</form:form>
	
	</div>

</body>
</html>