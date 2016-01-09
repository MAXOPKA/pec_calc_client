# Main container
module PecCalcClient
  # Error of connection
  class ConnectionError < Exception; end
  # Exception for non 200 HTTP code
  class BadResponse < Exception; end

  # Methods for request class
  module RequestClass
    def set_readers
      self::PARAMS.each { |param_name| attr_reader param_name }
    end
  end

  # Methods for request instance
  module RequestObject
    def init_params(params)
      params.each do |k, v|
        instance_variable_set("@#{k}", v) if self.class::PARAMS.include?(k.to_s)
      end
    end

    def to_h
      self.class::PARAMS.map { |k| [k, instance_variable_get("@#{k}")] }.to_h
    end
  end
end

Dir["#{File.dirname(__FILE__)}/pec_calc_client/*.rb"].each do |file|
  require file
end
