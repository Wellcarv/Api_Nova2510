Before '@Startup' do

    
    @nome = Faker::FunnyName.two_word_name
    @cpf = Faker::CPF.numeric
    @vl_emprestimo = Faker::Number.decimal(2, 3)
    @nr_parcelas = Faker::Number.between(6, 36)
    @vl_parcelas = Faker::Number.decimal(1, 3) #=> "1.843"
    @id = Faker::Number.number(4)
    @token = Faker::Number.hexadecimal(32)

    emprestimo = {
       "id": @id,
       "nome": @nome,
       "cpf": @cpf,
		"vl_emprestimo": @vl_emprestimo,
		"nr_parcelas": @nr_parcelas,
		"vl_parcelas": @vl_parcelas
    }

    user = {
        "nome": @nome,
        "password": "testeG3ru"
    }

    @user = JSON.generate(user)
    @emprestimo = JSON.generate(emprestimo)

    @startup = Startup.new(@emprestimo, @user)
end