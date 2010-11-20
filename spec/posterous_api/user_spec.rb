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
    
    describe '#get' do
      
      it "should get all the blogs from user" do
        mock_sites(batman)
        batman.get(batman.get_all_sites_uri).should == 'response'
      end
      
    end
    
    def mock_sites(user)
      HTTParty.should_receive(:get).with(user.get_all_sites_uri, 
          :basic_auth => { :username => user.email, :password => user.password
            }).and_return('response')
    end
    
    def mock_posts(user, blog_id)
      HTTParty.should_receive(:get).with(user.read_posts_uri, 
          :basic_auth => { :username => user.email, :password => user.password},
          :site_id => blog_id
      ).and_return('response')
    end
    
  end
end