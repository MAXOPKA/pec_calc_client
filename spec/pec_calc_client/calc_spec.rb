describe 'Calc' do

  calc_params = { plombir: 12, strah: 33, ashan: 1, night: 1, pal: 3, pallets: 4 }
  place_params = { width: 0.5, length: 0.3,height: 0.5, volume: 0.2, weight: 0.03, oversized: true, sturdy_packaging: true }
  delivery_params = { town: 134104, tent: 1, gidro: 1, manip: 1, speed: 0, moscow: 0 }
  take_params = { town: 175004, tent: 1, gidro: 1, manip: 1, speed: 1, moscow: 1 }

  let! :calc do
    calc = PecCalcClient::Calc.new calc_params
    calc.places = (1..3).map{ PecCalcClient::Place.new place_params }
    calc.delivery = PecCalcClient::Delivery.new delivery_params
    calc.take = PecCalcClient::Take.new take_params
    calc
  end

  describe '#initialize' do
    it 'Should be initialized' do
      calc = PecCalcClient::Calc.new(calc_params)
      hash_of_params = PecCalcClient::Calc::PARAMS.map{ |k| [ k.to_sym, calc.send(k) ] }.to_h
      expect(hash_of_params).to eq calc_params
    end
  end

  describe '#calc' do
    it 'Should return result' do
      result = calc.calc
      expect(result.class.to_s).to eq 'PecCalcClient::CalcResult'
    end
  end
end
