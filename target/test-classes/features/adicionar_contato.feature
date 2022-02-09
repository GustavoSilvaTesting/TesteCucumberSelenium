# language: pt

@Cadastrar
Funcionalidade: Cadastro de Contatos
	O usuário poderá adicionar contatos
  O contato é composto de nome e telefone
  Nome é obrigatório e alfa numérico e único
  Telefone é alfanumérico com no máximo 12 caracteres

Contexto:  
	Dado que acesso a tela inicial do sistema
	Quando clico no botão Adicionar

@Cadastrar1 
Cenário: Deve inserir um contato com NOME e TELEFONE alfanuméricos 
	E informo o nome "GustavoAlfaNum123"
	E informo o telefone "CE996703383"
	E clico em Adicionar da tela de cadastro
	Então o "GustavoAlfaNum123" deve ser inserido com sucesso 
# implementado;

@Cadastrar2
Cenário: Deve inserir um contato que possua no NOME somente letras
	E informo o nome "GustavoSomenteLetras"
	E informo o telefone "085996703383"
	E clico em Adicionar da tela de cadastro
	Então o "GustavoSomenteLetras" deve ser inserido com sucesso 
# implementado;

@Cadastrar3
Cenário: Deve inserir um contato que possua no NOME somente números
	E informo o nome "123456"
	E informo o telefone "085996703383"
	E clico em Adicionar da tela de cadastro
	Então o "123456" deve ser inserido com sucesso 	
# implementado;

@Cadastrar4
Cenário: Não deve inserir um contato que o campo NOME esteja vazio
	E informo o nome ""
	E informo o telefone "VZ996703383"
	E clico em Adicionar da tela de cadastro
	Então é solicitado que o campo Nome seja preenchido	
# implementado;

@Cadastrar5
Cenário: Não deve inserir um contato que já esteja listado na agenda
	E informo o nome "GustavoJaListado"
	E informo o telefone "085996703383"
	E clico em Adicionar da tela de cadastro
	Então é emitido um alerta indicando que o contato informado já existe 	
# implementado;

@Cadastrar6
Cenário: Não deve inserir contato que possua NOME com menos de três caracteres 
	E informo o nome "G1"
	E informo o telefone "085996703393"
	E clico em Adicionar da tela de cadastro
	Então deve ser emitido um alerta informando que o Nome deve possuir no mínimo três caracteres	
# Ocorre erro na execução porque o elemento esperado só fica visível quando ocorre a restrição quanto ao número de caracteres;

@Cadastrar7
Cenário: Não deve inserir contato que possua NOME com caracteres especiais
	E informo o nome "@#$%¨&**"
	E informo o telefone "085996703393"
	E clico em Adicionar da tela de cadastro
	Então deve ser emitido um alerta informando que o Nome não deve possuir caracteres especiais
# Ocorre erro na execução porque o elemento esperado só fica visível quando ocorre a restrição quanto aos caracteres especiais;

@Cadastrar8
Cenário: Não deve inserir contato que possua NOME mais de cem caracteres
	E informo o nome "GustavoCaracterMaximoGustavoCaracterMaximoGustavoCaracterMaximoGustavoCaracterMaximoGustavoCaracterMaximo"
	E informo o telefone "085996703393"
	E clico em Adicionar da tela de cadastro
	Então deve ser emitido um alerta informando que o Nome não deve possuir mais de cem caracteres
# Ocorre erro na execução porque o elemento esperado só fica visível quando ocorre a restrição para  quanto ao numero de caracteres, e esta não foi implementada!

@Cadastrar9
Cenário: Deve inserir um contato com TELEFONE alfanumérico 
	E informo o nome "GustavoFoneAlfaNum"
	E informo o telefone "0CE996703383"
	E clico em Adicionar da tela de cadastro
	Então o "GustavoFoneAlfaNum" deve ser inserido com sucesso 
# implementado!

@Cadastrar10
Cenário: Deve inserir um contato que possua no TELEFONE somente letras
	E informo o nome "GustavoFoneSoLetras"
	E informo o telefone "abcdefgsdf"
	E clico em Adicionar da tela de cadastro
	Então o "GustavoFoneSoLetras" deve ser inserido com sucesso 
# implementado!

@Cadastrar11
Cenário: Deve inserir um contato que possua no TELEFONE somente números
	E informo o nome "GustavoFoneSoNum"
	E informo o telefone "085123456789"
	E clico em Adicionar da tela de cadastro
	Então o "GustavoFoneSoNum" deve ser inserido com sucesso 	
# implementado!	
	
@Cadastrar12	
Cenário: Deve inserir um contato que não possua TELEFONE
	E informo o nome "GustavoSemTelefone"
	E informo o telefone ""
	E clico em Adicionar da tela de cadastro
	Então o "GustavoSemTelefone" deve ser inserido com sucesso 		
# implementado!

@Cadastrar13
Cenário: Deve inserir contato que possua TELEFONE entre 8 e 12 caracteres 
	E informo o nome "GustavoCaracterEntre8e12"
	E informo o telefone "08512345678"
	E clico em Adicionar da tela de cadastro
	Então o "GustavoCaracterEntre8e12" deve ser inserido com sucesso
# implementado!

@Cadastrar14
Cenário: Não deve inserir contato que possua TELEFONE com mais de 12 caracteres 
	E informo o nome "GustavoCaracterMaximo12"
	E informo o telefone "0851234567891"
	E clico em Adicionar da tela de cadastro
	Então deve ser emitido um alerta informando que o telefone deve possuir no máximo doze caracteres  
# Ocorre erro na execução porque o elemento esperado só fica visível quando ocorre a restrição para quanto ao numero de caracteres;
		
@Cadastrar15		
Cenário: Não deve inserir contato que possua TELEFONE com menos de oito caracteres 
	E informo o nome "GustavoCaracterMinimo8"
	E informo o telefone "0851123"
	E clico em Adicionar da tela de cadastro
	Então deve ser emitido um alerta informando que o telefone deve possuir no mínimo oito caracteres	
# Ocorre erro na execução porque o elemento esperado só fica visível quando ocorre a restrição para quanto ao numero de caracteres;
	
@Cadastrar16		
Cenário: Não deve inserir contato que possua TELEFONE com caracteres especiais
	E informo o nome "GustavoCaracterEspeciais"
	E informo o telefone "@#$%¨&**!@"
	E clico em Adicionar da tela de cadastro
	Então deve ser emitido um alerta informando que o Telefone não deve possuir caracteres especiais	
# # Ocorre erro na execução porque o elemento esperado só fica visível quando ocorre a restrição quanto aos caracteres especiais;	
