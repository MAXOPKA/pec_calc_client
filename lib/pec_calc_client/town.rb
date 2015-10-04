module PecCalcClient
  class Town

    attr_reader :id, :name

    def initialize id, name
      @id, @name = id, name
    end

    def self.all
      Connector.new(URL).request.to_json.collect do |town|
        self.new town
      end
    end
  end
end
