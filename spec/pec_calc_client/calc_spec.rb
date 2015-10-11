describe 'Calc' do

  calc_params = { plombir: 12, strah: 33, ashan: 1, night: 1, pal: 3, pallets: 4 }

  describe '#initialize' do
    it 'Should be initialized' do
      calc = PecCalcClient::Calc.new(calc_params)
      hash_of_params = PecCalcClient::Calc::CALC_PARAMS.map{ |k| [ k.to_sym, calc.send(k) ] }.to_h
      expect(hash_of_params).to eq calc_params
    end
  end

  describe '#calc' do
    it 'Should return result' do
    end
  end
end
