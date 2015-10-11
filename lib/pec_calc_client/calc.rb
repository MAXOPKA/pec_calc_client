module PecCalcClient
  class Calc

    CALC_PARAMS = %w{ plombir strah ashan night pal pallets }

    CALC_PARAMS.each{ |param_name| attr_reader param_name }

    def initialize(params)
      params.each{ |k, v| instance_variable_set("@#{ k }", v) if CALC_PARAMS.include? k.to_s }
    end

  end
end
