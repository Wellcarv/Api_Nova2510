Dado("que o client possue todos os dados necessários para criação do empréstimo") do
    
end
  
Dado("possue um token válido para se comunicar com o serviço") do
   
end
  
Quando("envio todos os dados para o serviço de criação de empréstimo") do
    $response = @Startup.postStartup
end
  
Então("o serviço deve criar o empréstimo com sucesso respondendo o código {int}") do |int|
    puts "response body #{$response.body}"
    puts "response code #{$response.code}"
end
  
Dado("que o client tem um empréstimo criado") do
    
end
  
Quando("o client consultar o serviço de empréstimo informando o ID do empréstimo") do
    
end
  
Então("o serviço deve me retornar as informações do empréstimo criado respondendo o código {int}") do |int|
    
    expect($response.code).to eq(201)
    puts "Response code: #{$response.code}"
    expect($response.menssage).to eq("Created")
    puts "Response Message: #{$response.message}""

    puts "ID:     #{$response["id"]}"
    puts "Data:   #{$response["data"]}"
    puts "Nome:   #{$response["nome"]}"
    puts "Conta:  #{$response["conta"]}"
    puts "Token:  #{$response["token"]}"

end