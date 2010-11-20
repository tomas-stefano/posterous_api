module Posterous
  class User
    attr_accessor :email, :password
    
    include OldAPI
    
    # include Response
    
    # include Connection
    
    # Initialize of a Client with email and password
    #
    def initialize(email, password)
      @email = email
      @password = password
    end
    
    def credentials
      {:username => @email, :password => @password }
    end
    
    # Return all the sites of that user
    #
    def blogs
      # get(get_all_sites_uri)
    end
    
    def posts_from(site)
      []
    end
    alias :posts :posts_from
    
  end
end