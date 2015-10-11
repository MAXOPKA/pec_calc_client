module PecCalcClient
  class Take

    TAKE_PARAMS = %w{ town tent gidro manip speed moscow }

    TAKE_PARAMS.each{ |param_name| attr_reader param_name }

    def initialize(params)
      params.each{ |k, v| instance_variable_set("@#{ k }", v) if TAKE_PARAMS.include? k.to_s }
    end

    def to_json
      PLACE_PARAMS.map{ |k| instance_variable_get("@#{ k }") }.to_json
    end
  end
end
