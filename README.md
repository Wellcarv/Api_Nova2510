# Automação de teste desafio GERU

Realizar automação de api para criação de empréstimo com validação de token

## Começando
 
 Realizar o git clone no terminal para visualização do projeto.
 Caminho do github - https://github.com/Wellcarv/desafio_geru.git
 
 ```ruby
 Pré-requisitos instalado

gem  'httparty'
gem  'faker'
gem  'JSON'
gem  'cpf_faker'
gem  'rspec'
```

## Execução dos testes

Após realizar o git clone no terminal, conferir se a pasta foi clonada corretamente, em seguinda executar o comando Bundler intall, depois o comando CUCUMBER

### Cenários

Para criação deste projeto, foi necessario incluir cenários para validação de toke:

- Gerar Token de usuário
	- Teste inicial para criação de usuário com retorno de Token
	
- Criar empréstimo
	- Envio de dados para confirmação de emprestimo gerando token do usuário
	
- Consultar empréstimo
	- Realizar consulta do emprestimo adquirido, validando ID

```ruby
	Obs: para realizar estes teste criei metodos Faker para:
	- Nome
	- CPF
	- vl_emprestimo
	- nr_parcelas
	- vl_parcelas
	- id
	- token
```

```ruby
	Por ser um Teste de api, não consegui fazer com que todos os dados de retorno estejam corretamento certos com os dados gerandos.
```


