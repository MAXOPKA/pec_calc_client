describe 'Connector' do

  url = 'http://pecom.ru/ru/calc/towns.php'
  bad_url = 'http://1.ru'

  let!(:connector){ PecCalcClient::Connector.new(url) }
  let!(:bad_connector){ PecCalcClient::Connector.new(bad_url) }

  describe '#initialize' do
    it 'Should be object' do
      connector = PecCalcClient::Connector.new(url)
      expect(connector.instance_variable_get(:@url)).to eq url
    end
  end

  describe '#request' do
    it 'Should return Response' do
      expect(connector.request.class.to_s).to eq 'PecCalcClient::Response'
    end

    it 'Raise Exception' do
      expect(lambda { bad_connector.request }).to raise_error(PecCalcClient::ConnectionError)
    end
  end

end
