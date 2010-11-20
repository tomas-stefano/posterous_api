require 'spec_helper'

FakeWeb.allow_net_connect = false

module Posterous
  describe User do
    let(:user) { Posterous::User.new('fake_email@gmail.com', 'secret')}
    let(:batman) { Posterous::User.new('batman@gmail.com', 'super_secret') }
    include FakerResponse
    
    describe '#initialize' do
      
      it "should storage the email of the user" do
        Posterous::User.new('my_email@gmail.com', 'password').email.should == "my_email@gmail.com"
      end
      
      it "should storage the password for user" do
        Posterous::User.new('my_email@gmail.com', 'secret').password.should == 'secret'
      end
      
    end
    
    describe '#credentials' do
      it "should return a instance of Hash" do
        user.credentials.should be_instance_of(Hash)
      end
      
      it "should return a username in the key" do
        user.credentials.should have_key(:username)
      end
      
      it "should have the email in the username value" do
        user.credentials.should have_value(user.email)
      end
      
      it "should return a username in the key" do
        user.credentials.should have_key(:password)
      end
      
      it "should have the password in the email value" do
        user.credentials.should have_value(user.password)
      end
    end
    
    describe '#blogs' do
      
      it "should call the Httparty" do
        mock_sites(user)
        user.blogs
      end
    end
    
    describe '#posts' do
      
      it "should return a post from a site in a instance of Array" do
        mock_posts(user, '12345')
        user.posts_from(:blog => '12345')
      end
      
    end

    describe '#tags_from' do
      it "should pass to HTTParty the uri and the site id" do
        mock_tags(user, '126789')
        user.tags_from(:blog => '126789')
      end
    end

    describe '#create_post_for' do
      
      it "should call the Httparty get method with the right uri" do
        mock_create_post(user, :blog => '12345', :title => 'Just the title', :body => 'The body of the post!')
        user.create_post_for :blog => '12345', :title => 'Just the title', :body => 'The body of the post!'
      end
      
    end

    describe '#get' do
      
      it "should get all the blogs from user" do
        mock_sites(batman)
        batman.get(batman.get_all_sites_uri).should == 'response'
      end
      
    end
    
  end
end