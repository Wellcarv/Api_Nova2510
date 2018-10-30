#language

Dado("que sou um novo usuario") do
    @headers2 = {
        "Content-Type": "application/json",
        "Authorization": "Bearer #{@token}"
    }
    puts @headers2
end

Quando("eu envio meus dados") do
    $reponse = @startup.postUser
    puts "ID: #{@user}"
end

Então("recebeo um token de autenticação") do
   puts "Token: #{@token}"
end