# language: pt

@Vender
Funcionalidade: Fluxo de Compra de um produto no app iPatas
	Para a realização da compra se faz necessário ter cadastrado um endereço e forma
	de pagamento (cartão de crédito);
	O app possibilita que a entrega do pedido seja agendada;
	E que o valor total da compra seja parcelado.
 
Cenário: Deve realizar a compra de um produto
	Dado que acesso a tela de pesquisa dos produtos 
	E o cliente possui endereço cadastrado
	E a forma de pagamento é cartão
	Quando envio um item ao carrinho 
	E clico em Continuar 
	Então o "GustavoAlfaNum123" deve ser inserido com sucesso 
