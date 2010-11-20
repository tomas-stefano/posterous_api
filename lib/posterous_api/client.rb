module Posterous
  class Client
    attr_accessor :email
    
    # Initialize of a Client with email and password
    #
    def initialize(email, password)
      @email = email
    end
    
    # Return all the sites of that user
    #
    def sites
      []
    end
    
    # def posts

    # end
    
  end
end