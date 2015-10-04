# require 'pec/calc/client/version'

Dir["#{ File.dirname(__FILE__) }/pec_calc_client/*.rb"].each {|file| require file }

module PecCalcClient
  class ConnectionError < Exception; end
  class BadResponse < Exception; end
end
