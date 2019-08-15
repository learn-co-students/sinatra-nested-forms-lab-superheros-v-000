class Team

    attr_accessor :name, :motto, :heroes

    def initialize(hash)
      @name = hash[:name]
      @motto = hash[:motto]
      @heroes = hash[:heroes]
    end
end
