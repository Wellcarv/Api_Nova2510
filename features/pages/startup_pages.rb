class Startup

    include HTTParty
    require_relative '../hooks/startup_hook'
    base_uri "https://apigeru.free.beeceptor.com"
    
    def initialize(emprestimo, user)
        @options = {:headers => @headers, :body => emprestimo}
        @options2 = {:headers => @headers2, :body => user}
        @options3 = {}
    end

    def postUser
        self.class.post("/user", @options2)
    end

    def postCadastro
        self.class.post("/emprestimo", @options2)
    end

    def getEmprestimo (id)
        self.class.get("/emprestimo/id/#{id}", @options3)
    end

    def getUser
        self.class.get("/user", @options2)
    end

end