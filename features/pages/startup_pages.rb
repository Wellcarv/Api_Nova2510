class Startup

    include HTTParty
    require_relative '../hooks/startup_hook'
    
    def initialize(body)
        @options = {:body => @body}
        @options2 ={}
    end

    def postCadastro
        self.class.post("/emprestimo", @options)
    end

    def getStartup (id)
        self.class.get("/startup/#{id}", @options2)
    end

    def putStartup (id)
        self.class.put("/startup/#{id}", @options)
    end

    def deleteStartup (id)
        self.class.delete("/startup/#{id}", @options2)
    end


    # @Token = {
        
    # }

    # @body = {
    #     "id": @id,
    #     "nome": @nome,
    #     "cpf": @cpf,
	# 	"vl_emprestimo": @vl_emprestimo,
	# 	"nr_parcelas": @nr_parcelas,
	# 	"vl_parcelas": @vl_parcelas
    # }
end