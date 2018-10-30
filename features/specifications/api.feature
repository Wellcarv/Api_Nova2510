#language: pt

@Startup
Funcionalidade: Disponibilizar endpoint para consulta e criação de empréstimo
    Como interface
    Gostaria de consultar e criar empréstimos via endpoint
    Para que possa fazer a interface para o usuário

@novo_usuario
Cenario: Gerar Token
    Dado que sou um novo usuario
    Quando eu envio meus dados
    Então recebeo um token de autenticação

@criacao
Cenário: Criar empréstimo
    Dado que o cliente possue todos os dados necessários para criação do empréstimo 
	    E possue um token válido para se comunicar com o serviço
    Quando envio todos os dados para o serviço de criação de empréstimo
	Então o serviço deve criar o empréstimo com sucesso respondendo o código 201

@consulta
Cenário: Consultar empréstimo
    Dado que o cliente tem um empréstimo criado
	    E possue um token válido para se comunicar com o serviço
   Quando o cliente consultar o serviço de empréstimo informando o ID do empréstimo
   Então o serviço deve me retornar as informações do empréstimo criado respondendo o código 200


