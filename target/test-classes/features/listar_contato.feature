# language: pt

@Listar
Funcionalidade: Cadastro de Contatos
	O usuário poderá ver a listar de contatos já adicionados

@Listar1	        
Cenário: Ao acessar a página inicial deverá ser apresentada a lista de contatos já cadastrados
	Dado que acesso a tela inicial do sistema
	Quando existirem contatos cadastrados
	Então os contatos devem ser listados na tela inicial
# Não implementado!