require 'spec_helper'

describe Posterous do
  
  before do
    @base_uri = "http://posterous.com/api"
  end
  
  it "should return the base uri to find posterous" do
    Posterous.base_uri.should == @base_uri
  end
  
  it "should return the auth token uri" do
    Posterous.auth_token_uri.should == "#{@base_uri}/2/auth/token"
  end
  
  context 'in sites' do
  
    it "should return the get sites uri" do
      Posterous.get_sites_uri.should == "#{@base_uri}/2/users/me/sites"
    end
  
    it "should return a uri from users primary site" do
      Posterous.user_primary_site_uri.should == "#{@base_uri}/api/2/users/me/sites/primary"
    end
    
    it "should return a uri from create a site" do
      Posterous.create_site_uri.should == "#{@base_uri}/api/2/users/me/sites"
    end
    
  end
  
  context 'in users' do
    
    it "should return a uri to get a user" do
      Posterous.get_a_user_uri.should == "#{@base_uri}/api/2/users/me"
    end
    
  end
  
  context 'in posts' do
    
    it "should return the public posts from the primary site uri" do
      Posterous.public_posts_from_primary_site_uri.should == "#{@base_uri}/api/2/users/me/sites/primary/posts/public"
    end
    
    it "should return the read posts uri" do
      Posterous.read_posts_uri.should == "#{@base_uri}/readposts"
    end
    
    it "should return the get tags uri" do
      Posterous.get_tags_uri.should == "#{@base_uri}/gettags"
    end
    
    it "should return the new post uri" do
      Posterous.new_post_uri.should == "#{@base_uri}/newpost"
    end
    
    it "should return the update post uri" do
      Posterous.update_post_uri.should == "#{@base_uri}/updatepost"
    end
  end
  
end