module Posterous
  module Connection
    
    def get(uri, options={})
      HTTParty.get(uri, { :basic_auth => credentials }.merge(options))
    end
        
    def post(uri, klass=HTTParty)
      klass.post(something, :basic_auth => credentials)
    end
    
    def put(something, klass=HTTParty)
      klass.put(something, :basic_auth => credentials)
    end

    def delete(something, klass=HTTParty)
      klass.delete(something, self.credentials)
    end
        
  end
end