<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>

<footer class="rodape">
		<div class="container" role="presentation">
			<a class="rodape-logo" href="#" title="Voltar ao topo da pÃ¡gina">
				<svg width="81px" height="104px" viewBox="0 0 81 104" role="img"
					aria-labelledby="altLogoFooter">
					<title id="altLogoFooter">Logo da Casa do Código</title>
					<g>
						<path
						d="M80.3318033,35.5725714 L80.3318033,15 L80.3306901,15.5531429 L16,15.5531429 L16,86.2594286 L80.3306901,86.2594286 L80.3306901,87 L80.3318033,66.4274286 L35.2102686,66.4274286 L35.2102686,35.5725714 L80.3318033,35.5725714"
						id="Fill-15" fill="#FAC459"></path>
						<path
						d="M37.3760303,84.8397844 L18.4481644,84.8397844 L18.4481644,18.5887869 L80.3307325,18.5887869 L80.3307325,0.12100541 L18.4481644,0.12100541 L0.240921527,18.5887869 L0.240921527,84.8397844 L18.4481644,103.310778 L80.3307325,103.310778 L80.3307325,84.8397844 L37.3760303,84.8397844"
						id="Fill-16" fill="#F8965D"></path>
					</g>
				</svg>
			</a>

			<div class="rodape-conteudo" role="presentation">
				<section class="rodape-secao rodape-secaoCategorias">
					<h3 class="rodape-titulo">Coleções de programação</h3>
					<ul>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/collections/todos"> Todos </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/collections/livros-de-agile"> Agile </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/collections/livros-de-front-end"> Front End </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/collections/livros-de-games"> Games </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/collections/livros-de-java"> Java </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/collections/livros-de-mobile"> Mobile </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/collections/livros-desenvolvimento-web"> Web </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/collections/outros"> Outros </a></li>

					</ul>
				</section>
				
				<security:authorize access="isAuthenticated()">
				<section class="rodape-secao rodape-secaoCategorias">
					<h3 class="rodape-titulo">Menu Administrador</h3>
					<ul>
						<li class="rodape-item"><a class="rodape-itemLink"
							href="${s:mvcUrl('PC#listar').build() }"> Lista de Produtos </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="${s:mvcUrl('PC#form').build() }"> Cadastrar produto </a></li>

					</ul>
				</section>
				</security:authorize>
		
				 <section class="rodape-secao rodape-secaoLinks">
					<h3 class="rodape-titulo">
						Links da
						<div role="presentation" class="rodape-titulo-espacador"></div>
						Casa do Código
					</h3>
					<ul>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="http://www.galandra.com.br"> Galandra - Reforce seu
								inglÃªs </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="http://livros.casadocodigo.com.br" rel="nofollow"> Meus
								E-books </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/pages/sobre-a-casa-do-codigo"> Sobre a Casa do
								CÃ³digo </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="http://suporte.casadocodigo.com.br"> Perguntas
								frequentes </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="http://www.caelum.com.br"> Caelum Ensino e InovaÃ§Ã£o
						</a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="http://www.codecrushing.com" rel="nofollow"> Code
								Crushing </a></li>

						<li class="rodape-item"><a class="rodape-itemLink"
							href="/pages/politica-de-privacidade" rel="nofollow">
								PolÃ­tica de Privacidade </a></li>

					</ul>
				</section>

				<section class="rodape-secao rodape-secaoOutros">
					<h3 class="rodape-titulo">Receba as novidades, promoções e
						lançamentos</h3>
					<a href="?locale=pt"><fmt:message key="menu.pt" /></a>
					<p><a href="?locale=en_US"><fmt:message key="menu.en" /></a></p>
					<form class="rodape-formularioDaNewsletter"
						action="https://docs.google.com/spreadsheet/formResponse?formkey=dFhxZ2tDalFiclU4T2FLZVY4UXVUc2c6MQ&embedded=true&ifq"
						method="POST">
						<input type="hidden" name="pageNumber" value="0"> <input
							type="hidden" name="backupCache" value=""> <input
							class="rodape-campoDaNewsletter" type="email"
							name="entry.0.single" value="" id="entry_0"
							placeholder="seu@email.com">
						<!--
					 -->
						<button class="rodape-botaoDaNewsletter" type="submit"
							name="submit" id="submit-newsletter">ok</button>
					</form>

					<h3 class="rodape-titulo rodape-tituloSecundario">Este site
						aceita</h3>
					<ul>
						<li class="rodape-formaDePagamento"><img
							src="//cdn.shopify.com/s/files/1/0155/7645/t/187/assets/pagseguro.png?14586202816245482888"
							border="0" alt="pag seguro" /></li>
						<li class="rodape-formaDePagamento"><img
							src="//cdn.shopify.com/s/files/1/0155/7645/t/187/assets/paypal.png?14586202816245482888"
							border="0" alt="paypal" /></li>
					</ul>

					<h3 class="rodape-titulo rodape-tituloSecundario">Nas redes
						sociais</h3>
					<ul>
						<li class="rodape-item rodape-redeSocial"><a
							class="compartilhar-facebook"
							href="http://www.facebook.com/casadocodigo" rel="nofollow"
							title="Casa do CÃ³digo no Facebook" rel="nofollow"
							target="_blank">/CasaDoCodigo</a></li>
						<li class="rodape-item rodape-redeSocial"><a
							class="compartilhar-twitter"
							href="http://www.twitter.com/casadocodigo" rel="nofollow"
							title="Casa do CÃ³digo no Twitter" rel="nofollow" target="_blank">@casadocodigo</a>
						</li>
					</ul>
				</section>

			</div>
		</div>
	</footer>
	
	<script type="text/javascript"
		src="//cdn.shopify.com/s/files/1/0155/7645/t/187/assets/trackExternalLinks.js?14586202816245482888"></script>