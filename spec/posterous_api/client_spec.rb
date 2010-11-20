require 'spec_helper'

module Posterous
  describe Client do
    let(:client) { Posterous::Client.new('fake_email@gmail.com', 'secret')}
    
    describe '#initialize' do
      
      it "should storage the email of the user" do
        Posterous::Client.new('my_email@gmail.com', 'password').email.should == "my_email@gmail.com"
      end
      
    end
    
    describe '#sites' do
      it "should return a instance of Array" do
        client.sites.should be_instance_of(Array)
      end
    end
    
    describe '#posts' do
      it "should return a post from a site in a instance of Array" do
        
      end
    end
    
  end
end