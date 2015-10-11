module PecCalcClient
  class ConnectionError < Exception; end
  class BadResponse < Exception; end

  module RequestClass
    def set_readers
      self::PARAMS.each{ |param_name| attr_reader param_name }
    end
  end

  module RequestObject
    def set_params(params)
      params.each{ |k, v| instance_variable_set("@#{ k }", v) if self.class::PARAMS.include? k.to_s }
    end

    def to_h
      self.class::PARAMS.map{ |k| [k, instance_variable_get("@#{ k }") ] }.to_h
    end
  end
end

Dir["#{ File.dirname(__FILE__) }/pec_calc_client/*.rb"].each {|file| require file }
