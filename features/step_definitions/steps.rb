Dado("que o client possue todos os dados necessários para criação do empréstimo") do
    $uri_base = "https://geruteste.free.beeceptor.com/emprestimo"
end
  
Dado("possue um token válido para se comunicar com o serviço") do
   
end
  
Quando("envio todos os dados para o serviço de criação de empréstimo") do
    $response = HTTParty.post($uri_base, :body => {"nome": @nome, "cpf": @cpf, "vl_emprestimo": @vl_emprestimo, "nr_parcelas": @nr_parcelas, "vl_parcelas": @vl_parcelas})
    puts "response code #{$response.code}"
    puts "response body #{$response.body}"
end
  
Então("o serviço deve criar o empréstimo com sucesso respondendo o código {int}") do |int|
    expect($response.code).to eq(201)
    puts "response code #{$response.code}"
    puts "response body #{$response.body}"
end
  
Dado("que o client tem um empréstimo criado") do
    
end
  
Quando("o cliente consultar o serviço de empréstimo informando o ID do empréstimo") do
    
end
  
Então("o serviço deve me retornar as informações do empréstimo criado respondendo o código {int}") do |int|
    
    expect($response.code).to eq(201)
    puts "Response code: #{$response.code}"
    expect($response.menssage).to eq("Created")
    puts "Response Message: #{$response.message}"
end