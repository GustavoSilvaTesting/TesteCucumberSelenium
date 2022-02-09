# language: pt

@Editar
Funcionalidade: Cadastro de Contatos
	O usuário poderá editar um contato já listado

Contexto: 
	Dado que acesso a tela inicial do sistema
	
@Editar1      
Cenário: Deve editar um contato já listado com sucesso	
	E clico no botão da coluna editar do contato
	E a tela de cadastro é carregada com os dados do contato
	Quando é alterado algum dado do contato	
	E clico no Atualizar
	Então o contato deve ser atualizado na lista de contatos
# Não implementado!

@Editar2	            
Cenário: Não deve permitir a edição de um contato que não teve seus dados alterados 
	E clico no botão da coluna editar do contato
	E a tela de cadastro é carregada com os dados do contato
	Quando não é alterado nenhum dado do contato
	Então o botão Cadastrar não deve ser habilitado
# Não implementado!	