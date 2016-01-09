module PecCalcClient
  class Town
    attr_reader :id, :name

    def initialize(id, name)
      @id = id
      @name = name
    end

    def self.all
      @all = Connector.new(URL).request.to_json.map{ |town| new town } if @all.nil?
      @all
    end
  end
end
