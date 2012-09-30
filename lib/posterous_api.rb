require 'posterous_api/version'
require 'httparty'

module Posterous
  autoload :BaseURI, 'posterous_api/base_uri'
  autoload :User, 'posterous_api/user'
  autoload :Connection, 'posterous_api/connection'
  autoload :NewAPI, 'posterous_api/new_api'
  autoload :OldAPI, 'posterous_api/old_api'
end