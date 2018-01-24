class Hero
    attr_accessor :name, :power, :bio

    HEROES = []

    def initialize(attr)
        @name = attr[:name]
        @power = attr[:power]
        @bio = attr[:bio]
        HEROES << self
    end

    def self.all
        HEROES
    end
end
