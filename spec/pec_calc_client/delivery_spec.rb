describe 'Delivery' do
  delivery_params = { town: 64_883, tent: 1, gidro: 1, manip: 1, speed: 0, moscow: 0 }

  describe '#initialize' do
    it 'Should be initialized' do
      delivery = PecCalcClient::Delivery.new(delivery_params)
      hash_of_params = PecCalcClient::Delivery::PARAMS.map { |k| [k.to_sym, delivery.send(k)] }.to_h
      expect(hash_of_params).to eq delivery_params
    end
  end
end
