require 'spec_helper'

module Posterous
  describe NewAPI do
    include NewAPI

    it "should return the auth token uri" do
      auth_token_uri.should == "#{@base_uri}/2/auth/token"
    end

    context 'in sites' do

      it "should return the get sites uri" do
        get_sites_uri.should == "#{@base_uri}/2/users/me/sites"
      end

      it "should return a uri from users primary site" do
        user_primary_site_uri.should == "#{@base_uri}/api/2/users/me/sites/primary"
      end

      it "should return a uri from create a site" do
        create_site_uri.should == "#{@base_uri}/api/2/users/me/sites"
      end

    end

    context 'in users' do

      it "should return a uri to get a user" do
        get_a_user_uri.should == "#{@base_uri}/api/2/users/me"
      end

    end

    context 'in posts' do

      it "should return the public posts from the primary site uri" do
        public_posts_from_primary_site_uri.should == "#{@base_uri}/api/2/users/me/sites/primary/posts/public"
      end

    end
    
  end
end