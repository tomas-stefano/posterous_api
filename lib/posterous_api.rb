require 'httparty'

module Posterous
  autoload :Client, 'posterous_api/client'
  autoload :NewAPI, 'posterous_api/new_api'
  autoload :OldAPI, 'posterous_api/old_api' 
  
  def self.base_uri
    @base_uri ||= "http://posterous.com/api"
  end
  
end