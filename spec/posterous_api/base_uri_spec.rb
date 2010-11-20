require 'spec_helper'

module Posterous
  describe BaseURI do
    include BaseURI
    describe '#base_uri' do
      it "should return the base uri" do
        base_uri.should == "http://posterous.com/api"
      end
    end
  end
end