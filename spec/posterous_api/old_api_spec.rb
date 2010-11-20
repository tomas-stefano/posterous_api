require 'spec_helper'

module Posterous
  describe OldAPI do
    include OldAPI
    context 'blogs' do
      it "should return the get all blogs uri" do
        get_all_sites_uri.should == "#{@base_uri}/getsites"
      end
    end
    
    context 'posts' do
      it "should return the read posts uri" do
        read_posts_uri.should == "#{@base_uri}/readposts"
      end

      it "should return the get tags uri" do
        get_tags_uri.should == "#{@base_uri}/gettags"
      end

      it "should return the new post uri" do
        new_post_uri.should == "#{@base_uri}/newpost"
      end

      it "should return the update post uri" do
        update_post_uri.should == "#{@base_uri}/updatepost"
      end
      
    end
  end
end