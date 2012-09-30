module Posterous
  module BaseURI

    # Base URI for the Posterous API
    #
    def base_uri
      @base_uri ||= "http://posterous.com/api"
    end
  end
end