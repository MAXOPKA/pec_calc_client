module PecCalcClient
  class Place

    PLACE_PARAMS = %w{ width length height volume weight oversized sturdy_packaging }

    PLACE_PARAMS.each{ |param_name| attr_reader param_name }

    def initialize(params)
      params.each{ |k, v| instance_variable_set("@#{ k }", v) if PLACE_PARAMS.include? k.to_s }
    end

    def to_json
      PLACE_PARAMS.map{ |k| instance_variable_get("@#{ k }") }.to_json
    end
  end
end
