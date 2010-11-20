module Posterous
  class User
    attr_accessor :email, :password
    include Connection
    include OldAPI
    
    # include Response
    
    # Initialize of a Client with email and password
    #
    def initialize(email, password)
      @email = email
      @password = password
    end
    
    # Return the credentials to use with the old API
    #
    def credentials
      { :username => @email, :password => @password }
    end
    
    # Return all the sites of that user
    #
    def blogs
      get(get_all_sites_uri)
    end
    
    def posts_from(options={})
      get(read_posts_uri, { :site_id => options[:blog]})
    end
    alias :posts :posts_from
    
  end
end