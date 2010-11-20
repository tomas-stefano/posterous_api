require 'rspec'
require 'posterous_api'
require 'fakeweb'
require 'support/faker_response'

RSpec.configure do |config|
  config.include FakerResponse
end