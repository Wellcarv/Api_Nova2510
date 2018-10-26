class Startup

    include HTTParty
    require_relative '../hooks/startup_hook'
    base_uri "http://localhoste:3000"
    
    def initialize(body)
        @options = {:body => body}
        @options2 ={}
    end

    def postStartup (token)
        self.class.post("/startup/#{token}", @options)
    end

    def gettStartup (token)
        self.class.get("/startup/#{toke}", @options2)
    end

    def putStartup (token)
        self.class.put("/startup/#{token}"), @options)
    end

    def deleteStartup (token)
        self.class.delete("/startup/#{token}", @options2)
    end


end