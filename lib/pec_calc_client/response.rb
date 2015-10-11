require 'json'

module PecCalcClient
  class Response
    def initialize(response)
      @response = response
      raise BadResponse, 'Respons Code not 200' if @response.code != '200'
    end

    def to_hash
      JSON.parse @response.body if @response.body.to_s != ''
    end
  end
end
