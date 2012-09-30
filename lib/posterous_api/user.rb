module Posterous
  class User
    attr_accessor :email, :password
    include Connection
    include OldAPI

    # http://posterous.com/api/posting

    # Initialize of a Client with email and password
    #
    def initialize(email, password)
      @email = email
      @password = password
    end

    # Return the credentials to use with the old API
    #
    # user.credentials
    #
    def credentials
      { :username => @email, :password => @password }
    end

    # Return all the sites for that user
    #
    # user.blogs
    #
    def blogs
      get(get_all_sites_uri)
    end

    # Return all the posts from a blog
    #
    # user.posts_from :blog => '123456'
    #
    def posts_from(options={})
      get(read_posts_uri, { :site_id => options[:blog]})
    end
    alias :posts :posts_from

    # Return all the tags from a blog
    #
    # user.tags_from :blog => '123456'
    #
    def tags_from(options={})
      get(get_tags_uri, { :site_id => options[:blog]})
    end

    # Create a new post in a blog
    #
    # user.create_post_for :blog => '123456', :title => 'My title', :body => 'Body'
    #
    def create_post_for(options)
      site_id = options[:blog]
      options.delete(:blog)
      options[:site_id] = site_id
      post(new_post_uri, options)
    end

  end
end