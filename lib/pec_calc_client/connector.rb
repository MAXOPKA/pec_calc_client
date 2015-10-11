require 'net/http'
require 'rack/utils'

module PecCalcClient
  class Connector
    def initialize(url)
      @url = url.to_s
    end

    def request(params = {})
      prepare_params params
      begin
        response = Net::HTTP.get_response(URI(url_with_params))
      rescue
        raise PecCalcClient::ConnectionError, 'Bad connection'
      end
      Response.new response
    end

    private

    def prepare_params(params)
      @params_string = Rack::Utils.build_nested_query(params).gsub(/[\[\]\.\-]/, '[' => '%5B', ']' => '%5D', '.' => '%2E', '-' => '%2D')
    end

    def url_with_params
      "#{@url}?#{@params_string}"
    end
  end
end
