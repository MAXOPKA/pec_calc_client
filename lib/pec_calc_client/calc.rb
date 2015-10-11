module PecCalcClient
  class Calc

    extend RequestClass
    include RequestObject

    URL = 'http://pecom.ru/bitrix/components/pecom/calc/ajax.php'

    PARAMS = %w{ plombir strah ashan night pal pallets }

    set_readers

    attr_accessor :delivery, :take, :places

    def initialize(params)
      set_params params
    end

    def calc
      result = Connector.new(URL).request(prepare_params)
      prepare_result result.to_hash
    end

    def prepare_params
      out = to_h
      out[:deliver] = @delivery.to_h
      out[:take] = @take.to_h
      out[:places] = @places.each_with_index.map{ |place, i| [ i, place.to_a ] }.to_h
      out
    end

    private

    def prepare_result(result)
      CalcResult.new result.to_hash
    end

  end
end
