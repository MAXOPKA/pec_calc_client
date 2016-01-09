require 'json'

module PecCalcClient
  # Response from api server
  class Response
    def initialize(response)
      @response = response
      fail BadResponse, 'Respons Code not 200' if @response.code != '200'
    end

    def to_hash
      JSON.parse @response.body if @response.body.to_s != ''
    end
  end
end
