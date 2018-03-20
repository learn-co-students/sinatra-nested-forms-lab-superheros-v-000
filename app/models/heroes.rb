class Hero
    attr_accessor :name, :power, :bio
    HEROES = []
    def initialize(hash_it)
        @name = hash_it[:name]
        @power = hash_it[:power]
        @bio = hash_it[:bio]
        HEROES << self
    end
    
    def self.all
        HEROES
    end
end