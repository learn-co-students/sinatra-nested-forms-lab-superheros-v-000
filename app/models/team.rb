class Team
  attr_accessor :name, :motto

    TEAM = []

    def initialize (atrs)
      @name = atrs[:name]
      @motto = atrs[:motto]
      TEAM << self
    end

    def self.all
      TEAM
    end

end
