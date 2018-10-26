class Startup

    include HTTParty
    require_relative '../hooks/startup_hook'
    base_uri "http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup"
    
    def initialize(body)
        @options = {:body => body}
        @options2 ={}
    end

    def postStartup
        self.class.post("/startup/#{"token":"b2c6f757eb9d49f4b2dace3aab9b1566"}", @options)
        self.class.post("/startup/#{"cpf":"307.173.128-01"}", @options)
        self.class.post("/startup/#{"vl_emprestimo":"2500"}", @options)
        self.class.post("/startup/#{"nr_parcelas":"10"}", @options)
        self.class.post("/startup/#{"vl_parcelas":"250"}", @options)
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


end