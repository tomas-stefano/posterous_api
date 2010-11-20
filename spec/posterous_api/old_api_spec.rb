require 'spec_helper'

module Posterous
  describe OldAPI do
    
    before do
      @base_uri = Posterous.base_uri
    end
    
    context 'blogs' do
      it "should return the get all blogs uri" do
        OldAPI.get_all_sites_uri.should == "#{@base_uri}/getsites"
      end
    end
    
    context 'posts' do
      it "should return the read posts uri" do
        OldAPI.read_posts_uri.should == "#{@base_uri}/readposts"
      end

      it "should return the get tags uri" do
        OldAPI.get_tags_uri.should == "#{@base_uri}/gettags"
      end

      it "should return the new post uri" do
        OldAPI.new_post_uri.should == "#{@base_uri}/newpost"
      end

      it "should return the update post uri" do
        OldAPI.update_post_uri.should == "#{@base_uri}/updatepost"
      end
      
    end
  end
end