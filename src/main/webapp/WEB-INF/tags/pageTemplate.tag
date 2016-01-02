<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="titulo" required="true" %>
<%@ attribute name="extraScripts" fragment="true" %>

	<!-- inject:css -->
	<link rel="stylesheet" href="//cdn.shopify.com/s/files/1/0155/7645/t/187/assets/style.css?14586202816245482888">
	<!-- endinject -->
	
<title>${titulo } - Casa do Código</title>

<%@ include file="/WEB-INF/views/cabecalho.jsp" %>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<link rel="shortcut icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/187/assets/favicon.ico?14586202816245482888" type="image/ico"/>
	<link href="https://plus.google.com/108540024862647200608" rel="publisher">


	<meta property="og:site_name" content="casadocodigo.com.br"/>
	
    <meta property="og:title" content="Casa do CÃ³digo - Livros para o programador"/>


	
    <meta property="og:description" content="Casa do CÃ³digo Ã© uma editora feita de programadores para programadores. Android, iOS, Startups, JavaScript, jQuery, HTML, Agile, Java e mais"/>


	
	<meta property="og:type" content="book" />


	
    <meta property="og:url" content="http://www.casadocodigo.com.br"/>


	
    <meta property="og:image" content="//cdn.shopify.com/s/files/1/0155/7645/t/187/assets/logo-social.jpg?14586202816245482888" />


	
    <meta itemprop="name" content="Livros de Java, SOA, Android, iPhone, Ruby on Rails e muito mais - Casa do CÃ³digo">


	
	<meta name="description" content="Os melhores livros sobre Java, Ruby, Rails, Android, iPhone, SOA, HTML, CSS, Empreendedorismo e muito mais. Feitos por programadores para programadores.">


	<meta itemprop="image" content="//cdn.shopify.com/s/files/1/0155/7645/t/187/assets/casa-do-codigo.svg?14586202816245482888">

<link rel="canonical" href="http://www.casadocodigo.com.br/cart" />
</head>

<jsp:doBody />

<%@ include file="/WEB-INF/views/rodape.jsp" %>


<jsp:invoke fragment="extraScripts" />