Dado("que o cliente possue todos os dados necessários para criação do empréstimo") do
    $uri_base = "https://apigeru.free.beeceptor.com"  
end 

Dado("possue um token válido para se comunicar com o serviço") do
   @headers = {
    "Content-Type": "application/json",
    "Authorization": "Bearer #{@token}"
    }
    puts @headers
end
  
Quando("envio todos os dados para o serviço de criação de empréstimo") do
    $response = @startup.postCadastro
    puts "Response body #{@emprestimo}"
end
  
Então("o serviço deve criar o empréstimo com sucesso respondendo o código {int}") do |int|
    expect($response.code).to eq(201)
    puts "Status: #{$response.code} #{$response.message}"
end
  
Dado("que o cliente tem um empréstimo criado") do
    @cliente = {
        "nome": @nome,
        "cpf": @cpf
    }
    puts @cliente
end
  
Quando("o cliente consultar o serviço de empréstimo informando o ID do empréstimo") do
    $response = @startup.getEmprestimo("#{@id}")
    puts @id
end
  
Então("o serviço deve me retornar as informações do empréstimo criado respondendo o código {int}") do |int|
    expect($response.code).to eq(200)
    puts "Status: #{$response.code} #{$response.message}"    
end