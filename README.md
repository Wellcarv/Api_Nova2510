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

Após realizar o git clone no terminal, conferir se a pasta foi clonada corretamente, em seguinda executar o comando CUCUMBER

### Cenários

Para criação deste projeto, foi necessario incluir cenários para validação de toke:

# Makdown
- Gerar Toke de usuário
- Criar empréstimo
- Consultar empréstimo

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

- Gerar Toke de usuário
	Teste inicial para criação de usuário com retorno de Token
	
- Criar empréstimo
	Envio de dados para confirmação de emprestimo gerando token do usuário
	
- Consultar empréstimo
	Realizar consulta do emprestimo adquirido, validando ID

	```ruby
	Por ser um Teste de api, não consegui fazer com que todos os dados de retorno estegem corretamento certos com os dados gerandos.
	```


## Agradecimentos

Bom não vou falar que foi fácil por que não foi, não é simples como seguir uma receita de bolo rss.

Fico muito feliz em poder entregar uma automação de testes baseando se em criar uma API com geração de token.

Mesmo nunca tendo feito uma automação de API, espero ter chego o mais próximo do desejado no desafio.

Obrigado pela oportunidade!
