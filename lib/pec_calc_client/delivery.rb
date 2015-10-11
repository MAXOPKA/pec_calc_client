module PecCalcClient
  class Delivery

    DELIVERY_PARAMS = %w{ town tent gidro manip speed moscow }

    DELIVERY_PARAMS.each{ |param_name| attr_reader param_name }

    def initialize(params)
      params.each{ |k, v| instance_variable_set("@#{ k }", v) if DELIVERY_PARAMS.include? k.to_s }
    end

    def to_json

    end
  end
end
