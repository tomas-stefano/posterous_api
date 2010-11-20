module Posterous
  module Connection
    
    def get(uri, options={})
      klass = options[:klass] || HTTParty
      klass.get(uri, { :basic_auth => credentials }.merge(options))
    end
        
    def post(uri, options={})
      klass = options[:klass] || HTTParty
      klass.post(uri, {:basic_auth => credentials}.merge(options))
    end
    
    def put(uri, options)
      klass = options[:klass] || HTTParty
      klass.put(uri, :basic_auth => credentials)
    end

    def delete(uri, klass=HTTParty)
      klass = options[:klass] || HTTParty
      klass.delete(uri, :basic_auth => credentials)
    end

  end
end