require 'net/http'

module PecCalcClient
  class Connector
    def initialize(url)
      @url = url.to_s
    end

    def request
      begin
        response = Net::HTTP.get_response(URI(@url))
      rescue
        raise PecCalcClient::ConnectionError, 'Bad connection'
      end
      @response = Response.new response
    end
  end
end
