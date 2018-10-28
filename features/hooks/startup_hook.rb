Before '@Startup' do

    
    @nome = Faker::FunnyName.two_word_name
    @cpf = Faker::CPF.numeric
    @vl_emprestimo = Faker::Number.decimal(2, 3)
    @nr_parcelas = Faker::Number.between(6, 36)
    @vl_parcelas = Faker::Number.decimal(1, 3) #=> "1.843"
    @id = Faker::Number.number(4)

    # @geru = JSON.generate(@body)

    # @geru =Startup.new(@body)
end