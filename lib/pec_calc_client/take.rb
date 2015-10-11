module PecCalcClient
  class Take

    extend RequestClass
    include RequestObject

    PARAMS = %w{ town tent gidro manip speed moscow }

    set_readers

    def initialize(params)
      set_params params
    end

  end
end
