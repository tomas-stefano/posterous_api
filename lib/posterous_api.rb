require 'httparty'

module Posterous
  autoload :BaseURI, 'posterous_api/base_uri'
  autoload :Client, 'posterous_api/client'
  autoload :NewAPI, 'posterous_api/new_api'
  autoload :OldAPI, 'posterous_api/old_api'
end