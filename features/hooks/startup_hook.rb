Before '@Startup' do

    @nome = Faker::Company.name
    @cidade = Faker::Address.City

    body = {
        "nome": @nome,
        "cidade": @cidade,    
        "cpf": "String",
		"vl_emprestimo": "String",
		"nr_parcelas": "String",
		"vl_parcelas": "String"

    }
    @body =JSON.generate(body)

    @Startup =Startup.new(@body)
end