Before '@Startup' do

    @nome = Faker::Company.name
    @cidade = Faker::Address.City

    body = {
        "nome": @nome,
        "cidade": @cidade,      
    }
    @body =JSON.generate(body)

    @Startup =Startup.new(@body)
end