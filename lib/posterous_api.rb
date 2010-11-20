require 'httparty'

module Posterous
  autoload :Client, 'posterous_api/client'
  
  extend self
  
  # The base uri to handle with the Posterous API
  #
  def base_uri
    @base_uri ||= "http://posterous.com/api"
  end
  
  # The get sites uri to get all the sites from a user
  #
  # Fields:
  #   None
  #
  def get_sites_uri
    @get_sites_uri ||= "#{@base_uri}/2/users/me/sites"
  end
  
  # Get the primary site from a user
  #
  def user_primary_site_uri 
    @user_primary_site_uri ||= "#{@base_uri}/api/2/users/me/sites/primary"
  end
  
  # Create a site url
  #
  def create_site_uri
    @create_site_uri ||= "#{@base_uri}/api/2/users/me/sites"
  end
  
  # Get a User Uri
  #
  def get_a_user_uri
    @get_a_user_uri ||= "#{@base_uri}/api/2/users/me"
  end
  
  # Public posts uri from your primary site
  #
  def public_posts_from_primary_site_uri
    @public_posts_from_primary_site_uri ||= "#{@base_uri}/api/2/users/me/sites/primary/posts/public"
  end
  
  # The get tags uri to get all the tags
  #
  # Fields:
  #  "site_id" - Optional. Id of the site to read from
  #  "hostname" - Optional. Subdomain of the site to read from
  #
  def get_tags_uri
    @get_tags_uri ||= "#{@base_uri}/gettags"
  end
  
  # The read posts uri to get all the posts from a site
  #
  #  Fields:
  #  "site_id" - Optional. Id of the site to read from
  #  "hostname" - Optional. Subdomain of the site to read from
  #  "num_posts" - Optional. How many posts you want. Default is 10, max is 50
  #  "page" - Optional. What 'page' you want (based on num_posts). Default is 1
  #  "tag" - Optional
  #
  def read_posts_uri
    @read_posts_uri ||= "#{@base_uri}/readposts"
  end
  
  #  Fields:
  #    "site_id" - Optional. Id of the site to post to. If not supplied, posts to the user's default site
  #    "media" - Optional. File data for single file.
  #    "media[]" - Optional. File data for multiple file upload. Can be specified multiple times.
  #    "title" - Optional. Title of post
  #    "body" - Optional. Body of post
  #    "autopost" - Optional. 0 or 1.
  #    "private" - Optional. 0 or 1.
  #    "date" - Optional. In GMT. Any parsable format. Cannot be in the future.
  #    "tags" - Optional. Comma separate tags
  #    "source" - Optional. The name of your application or website
  #    "sourceLink" - Optional. Link to your application or website
  #
  def new_post_uri
    @new_post_uri ||= "#{@base_uri}/newpost"
  end
  
  #  Fields:
  #    "post_id" - Id of the post to update.
  #    "media" - Optional. File data for single file. Will append to post.
  #    "media[]" - Optional. File data for multiple file upload. Can be specified multiple times. Will append to post.
  #    "title" - Optional. Title of post. Will update post if present.
  #    "body" - Optional. Body of post. Will update post if present.
  #
  def update_post_uri
    @update_post_uri ||= "#{@base_uri}/updatepost"
  end
  
  # The auth token uri to get the token
  #
  def auth_token_uri
    @auth_token_uri ||= "#{base_uri}/2/auth/token"
  end
  
end