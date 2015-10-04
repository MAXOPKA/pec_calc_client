describe 'Response' do

  url = 'http://pecom.ru/ru/calc/towns.php'
  not_found_url = 'http://pecom.ru/not_this_url'
  let!(:connector){ PecCalcClient::Connector.new(url) }
  let!(:not_found_connector){ PecCalcClient::Connector.new(not_found_url) }
  let!(:response){ connector.request }

  describe '#initialize' do
    it 'Should be 200' do
      good_response = connector.request
      expect(good_response.instance_variable_get(:@response).code).to eq '200'
    end

    it 'Raise Exception BadResponse' do
      expect( lambda{ not_found_connector.request } ).to raise_error(PecCalcClient::BadResponse)
    end
  end

  describe '#to_hash' do
    it 'Should be hash' do
      expect(response.to_hash.class.to_s).to eq 'Hash'
    end
  end
end
