module PecCalcClient
  # Delivery
  class Delivery
    extend RequestClass
    include RequestObject

    PARAMS = %w( town tent gidro manip speed moscow )

    set_readers

    def initialize(params)
      init_params params
    end
  end
end
