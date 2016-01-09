module PecCalcClient
  # Result of delivery calculation
  class CalcResult
    attr_reader :result

    def initialize(params)
      @result = params
    end
  end
end
