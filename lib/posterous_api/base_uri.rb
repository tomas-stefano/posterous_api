module Posterous
  module BaseURI
    def base_uri
      @base_uri ||= "http://posterous.com/api"
    end
  end
end