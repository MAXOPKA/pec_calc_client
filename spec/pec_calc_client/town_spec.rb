describe 'Town' do
  describe '#initialize' do
    it 'Return Town' do
      town = PecCalcClient::Town.new( 13, 'Town' )
      expect(town.id).to eq 13
      expect(town.name).to eq 'Town'
    end
  end
end
