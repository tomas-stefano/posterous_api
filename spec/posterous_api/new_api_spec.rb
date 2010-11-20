require 'spec_helper'

module Posterous
  describe NewAPI do
    before do
      @base_uri = "http://posterous.com/api"
    end

    it "should return the base uri to find posterous" do
      NewAPI.base_uri.should == @base_uri
    end

    it "should return the auth token uri" do
      NewAPI.auth_token_uri.should == "#{@base_uri}/2/auth/token"
    end

    context 'in sites' do

      it "should return the get sites uri" do
        NewAPI.get_sites_uri.should == "#{@base_uri}/2/users/me/sites"
      end

      it "should return a uri from users primary site" do
        NewAPI.user_primary_site_uri.should == "#{@base_uri}/api/2/users/me/sites/primary"
      end

      it "should return a uri from create a site" do
        NewAPI.create_site_uri.should == "#{@base_uri}/api/2/users/me/sites"
      end

    end

    context 'in users' do

      it "should return a uri to get a user" do
        NewAPI.get_a_user_uri.should == "#{@base_uri}/api/2/users/me"
      end

    end

    context 'in posts' do

      it "should return the public posts from the primary site uri" do
        NewAPI.public_posts_from_primary_site_uri.should == "#{@base_uri}/api/2/users/me/sites/primary/posts/public"
      end

      it "should return the read posts uri" do
        NewAPI.read_posts_uri.should == "#{@base_uri}/readposts"
      end

      it "should return the get tags uri" do
        NewAPI.get_tags_uri.should == "#{@base_uri}/gettags"
      end

      it "should return the new post uri" do
        NewAPI.new_post_uri.should == "#{@base_uri}/newpost"
      end

      it "should return the update post uri" do
        NewAPI.update_post_uri.should == "#{@base_uri}/updatepost"
      end
    end
    
  end
end