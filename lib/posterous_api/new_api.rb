module Posterous
  module NewAPI
    include BaseURI

    # The get sites uri to get all the sites from a user
    #
    # Fields:
    #   None
    #
    def get_sites_uri
      @get_sites_uri ||= "#{base_uri}/2/users/me/sites"
    end

    # Get the primary site from a user
    #
    def user_primary_site_uri 
      @user_primary_site_uri ||= "#{base_uri}/api/2/users/me/sites/primary"
    end

    # Create a site url
    #
    def create_site_uri
      @create_site_uri ||= "#{base_uri}/api/2/users/me/sites"
    end

    # Get a User Uri
    #
    def get_a_user_uri
      @get_a_user_uri ||= "#{base_uri}/api/2/users/me"
    end

    # Public posts uri from your primary site
    #
    def public_posts_from_primary_site_uri
      @public_posts_from_primary_site_uri ||= "#{base_uri}/api/2/users/me/sites/primary/posts/public"
    end

    # The auth token uri to get the token
    #
    def auth_token_uri
      @auth_token_uri ||= "#{base_uri}/2/auth/token"
    end
  end
end