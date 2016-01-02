<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Livros de Java, SOA, Android, iPhone, Ruby on Rails e
	muito mais">

<body>
	<main>
	<section class="vitrineDestaquinho container">
		<h2 class="vitrineDestaquinho-titulo">Últimos lançamentos</h2>
		<ul class="vitrineDestaquinho-lista">
			<c:forEach items="${produtos}" var="produto">

				<li class="livroNaVitrine vitrineDestaquinho-produto"><a
					href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }"
					class="livroNaVitrine-link">
						<div class="livroNaVitrine-imagemContainer" role="presentation">
							<img class="livroNaVitrine-imagem"
								src="//cdn.shopify.com/s/files/1/0155/7645/products/G8Odq4Q1TChRM5NMkpWOfJLrIdpMhXpIMt0Qs0vOAJQ_size_mode_2_size_1024x768_large.jpeg?v=1447444684"
								alt="Livro de Java EE" title="Livro de Java EE">

						</div> <span class="livroNaVitrine-nome">${produto.titulo }</span>
				</a></li>

			</c:forEach>

		</ul>
	</section>

	<div class="buscaDoRodape container" role="presentation">
		<form role="search" aria-labelledby="rotuloBuscaDoRodape"
			action="/search" method="GET" class="buscaDoRodape-formulario">
			<label id="rotuloBuscaRodape" class="buscaDoRodape-rotuloEscondido"
				for="campoBuscaRodape">Busque por autor, título,
				conteÃºdo...</label> <label class="buscaDoRodape-rotulo"
				for="campoBuscaRodape">Não encontrou o seu livro?</label>
			<fieldset class="buscaDoRodape-fieldset">
				<input type="hidden" name="type" value="product"> <input
					id="campoBuscaRodape" class="buscaDoRodape-campo"
					placeholder="O que vocÃª procura?" type="search" name="q" required
					aria-required>
				<button class="buscaDoRodape-enviar" type="submit">Buscar</button>
			</fieldset>
		</form>
	</div>
	</main>
</body>
</tags:pageTemplate>
