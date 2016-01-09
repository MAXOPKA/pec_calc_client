
describe 'Region' do
  describe '#initialize' do
    it 'Should initialize' do
      region = PecCalcClient::Region.new('RegionName', [{ id: 14, name: 'Name1' }, { id: 11, name: 'Name' }])
      expect(region.name).to eq 'RegionName'
      expect(region.towns.first.class.to_s).to eq 'PecCalcClient::Town'
    end
  end

  describe '::all' do
    it 'Return Regions' do
      regions = PecCalcClient::Region.all
      expect(regions.first.class.to_s).to eq 'PecCalcClient::Region'
    end
  end
end
