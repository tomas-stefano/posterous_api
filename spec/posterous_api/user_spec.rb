require 'spec_helper'

module Posterous
  describe User do
    let(:user) { Posterous::User.new('fake_email@gmail.com', 'secret')}
    
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
      it "should return a instance of Array" do
        user.blogs.should be_instance_of(Array)
      end
    end
    
    describe '#posts' do
      it "should return a post from a site in a instance of Array" do
        user.posts_from('blah').should be_instance_of(Array)
      end
    end
    
  end
end