<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css" var="cssPath" />
<c:url value="/resources/js" var="jsPath" />
<script src="${jsPath}/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css">
<script src="${jsPath}/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<nav class="navbar navbar-inverse navbar-static-top">
		  <div class="container">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="${s:mvcUrl('HC#index').build() }">Casa do Código</a>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		            <li><a href="${s:mvcUrl('PC#listar').build() }">Lista de Produtos</a></li>
		            <li><a href="${s:mvcUrl('PC#form').build() }">Cadastro de Produtos</a></li>
		      </ul>
		      
		      <ul class="nav navbar-nav navbar-right">
		      	<li><a id="dropdown" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" 
		      		href="#">
		      			<security:authentication property="principal" var="usuario" />${usuario.email}
		      		 	<span class="caret"></span>
		      		</a>
		      		<ul class="dropdown-menu" aria-labelledby="dropdown">
					    <li><a href="/casadocodigo/logout">Sair</a></li>
				  	</ul>
		      	</li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
	</nav>
</head>
</html>