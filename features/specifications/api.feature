#language: pt

@Startup
Funcionalidade: Disponibilizar endpoint para consulta e criação de empréstimo
    Como interface
    Gostaria de consultar e criar empréstimos via endpoint
    Para que possa fazer a interface para o usuário

Cenário: Criar empréstimo
    Dado que o client possue todos os dados necessários para criação do empréstimo 
	    E possue um token válido para se comunicar com o serviço
    Quando envio todos os dados para o serviço de criação de empréstimo
	Então o serviço deve criar o empréstimo com sucesso respondendo o código 201

Cenário: Consultar empréstimo
    Dado que o client tem um empréstimo criado
	    E possue um token válido para se comunicar com o serviço
   Quando o client consultar o serviço de empréstimo informando o ID do empréstimo
   Então o serviço deve me retornar as informações do empréstimo criado respondendo o código 200

Cenário: Alterar empréstimo
    Dado que o client tem um empréstimo criado
	    E possue um token válido para se comunicar com o serviço
   Quando o client realiza uma requisição para alterar empréstimo
   Então o serviço deve me retornar as informações da alteração respondendo o código 200

Cenário: Excluir empréstimo
    Dado que o client tem um empréstimo criado
	    E possue um token válido para se comunicar com o serviço
   Quando o client realiza uma requisição para excluir empréstimo
   Então o serviço deve me retornar os dados da exclusão respondendo o código 200



