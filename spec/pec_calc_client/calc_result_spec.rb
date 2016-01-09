describe 'CalcResult' do
  describe '#initialize' do
    it 'Should be initialized' do
      calc_result = PecCalcClient::CalcResult.new({})
      expect(calc_result.result.class).to eq Hash
    end
  end
end
