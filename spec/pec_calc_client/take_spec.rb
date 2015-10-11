describe 'Take' do

  take_params = { town: -457, tent: 1, gidro: 1, manip: 1, speed: 1, moscow: 1 }

  describe '#initialize' do
    it 'Should be initialized' do
      take = PecCalcClient::Take.new(take_params)
      hash_of_params = PecCalcClient::Take::TAKE_PARAMS.map{ |k| [ k.to_sym, take.send(k) ] }.to_h
      expect(hash_of_params).to eq take_params
    end
  end
end
