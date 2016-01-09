module PecCalcClient
  class Region
    URL = 'http://pecom.ru/ru/calc/towns.php'

    attr_reader :name, :towns

    def initialize(name, towns)
      @name = name
      @towns = towns.collect { |id, name| Town.new id, name }
    end

    def self.all
      @all = Connector.new(self::URL).request.to_hash.collect { |name, towns| new name, towns } if @all.nil?
      @all
    end
  end
end
