<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Seu carrinho de compras">

<body>
	<main>
		<section class="infoSection container">
	<h2 class="infoSection-titulo">Seu carrinho</h2>
	
	<table class="formularioDoCarrinho-tabela">
		<thead class="formularioDoCarrinho-cabecalho">
			<tr>
				<th></th>
				<th class="formularioDoCarrinho-cabecalho-item">Item</th>
				<th class="formularioDoCarrinho-cabecalho-item formularioDoCarrinho-cabecalho-preco">Preço</th>
				<th class="formularioDoCarrinho-cabecalho-item">Qtd</th>
				<th class="formularioDoCarrinho-cabecalho-item">Total</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${carrinhoCompras.itens}" var="item">
			<tr>
				<td class="formularioDoCarrinho-item">
					<a href="/products/livro-java8">
						<img class="formularioDoCarrinho-item-imagem" src="//cdn.shopify.com/s/files/1/0155/7645/products/java8-featured_small.png?v=1411490181" />
					</a>
				</td>
				<td class="formularioDoCarrinho-item">
					<h2 class="formularioDoCarrinho-item-titulo">${item.produto.titulo}</h2>
				</td>
				<td class="formularioDoCarrinho-item formularioDoCarrinho-item-preco">${item.preco}</td>
				<td class="formularioDoCarrinho-item">
					<input class="formularioDoCarrinho-item-quantidade"
						   type="number"
						   min="0"
						   id="quantidade"
						   name="quantidade"
						   value="${carrinhoCompras.getQuantidade(item)}">
				</td>
				<td class="formularioDoCarrinho-item formularioDoCarrinho-item-precoTotal" title="PreÃ§o unitÃ¡rio: R$29,90">${carrinhoCompras.getTotal(item)}</td>
				<td class="formularioDoCarrinho-item">
				<form:form action="${s:mvcUrl('CCC#remover').arg(0, item.produto.id).arg(1, item.tipoPreco).build()}" method="post">
						<input type="image" class="formularioDoCarrinho-item-remover-imagem"  
								src="http:////cdn.shopify.com/s/files/1/0155/7645/t/187/assets/trash.png?14586202816245482888" 
								alt="X" title="Remover">
				</form:form>
				</td>
			</tr>
			</c:forEach>
			
		</tbody>
		<tfoot class="formularioDoCarrinho-rodape">
			<tr>
			<form:form action="${s:mvcUrl('PC#finalizar').build()}" method="POST">
				<td class="formularioDoCarrinho-rodape-item formularioDoCarrinho-finalizar" colspan="3">
					<button class="formularioDoCarrinho-finalizar-botao" type="submit" name="checkout">Finalizar<span class="formularioDoCarrinho-finalizar-botao-texto" role="presentation"> compra</span></button>
				</td>
				<td class="formularioDoCarrinho-rodape-item">${carrinhoCompras.total}</td>
				<td></td>
			</form:form>
			</tr>
		</tfoot>
	</table>

</section>

		<div class="buscaDoRodape container" role="presentation">
	<form role="search"
		  aria-labelledby="rotuloBuscaDoRodape"
		  action="/search"
		  method="GET"
		  class="buscaDoRodape-formulario"
	>
		<label id="rotuloBuscaRodape" class="buscaDoRodape-rotuloEscondido" for="campoBuscaRodape">Busque por autor, título, conteúdo...</label>
		<label class="buscaDoRodape-rotulo" for="campoBuscaRodape">Não encontrou o seu livro?</label>
		<fieldset class="buscaDoRodape-fieldset">
			<input type="hidden" name="type" value="product">
			<input id="campoBuscaRodape"
				   class="buscaDoRodape-campo"
				   placeholder="O que você procura?"
				   type="search"
				   name="q"
				   required
				   aria-required
			>
			<button class="buscaDoRodape-enviar" type="submit">
				Buscar
			</button>
		</fieldset>
	</form>
</div>
  </main>
</body>

</tags:pageTemplate>
