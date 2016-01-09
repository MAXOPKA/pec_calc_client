describe do
  'Place'
  place_params = { width: 0.5, length: 0.3, height: 0.5, volume: 0.2, weight: 0.03, oversized: 1, sturdy_packaging: 1 }
  let!(:place) { PecCalcClient::Place.new place_params }

  describe '#initialize' do
    it 'Should be initialized' do
      place = PecCalcClient::Place.new(place_params)
      expect([place.width, place.length, place.height, place.volume, place.weight, place.oversized, place.sturdy_packaging]).to eq place_params.values
    end
  end

  describe '#to_a' do
    it 'Shold return correctly string' do
      expect(place.to_a).to eq place_params.values
    end
  end
end
