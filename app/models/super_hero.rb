class SuperHero
    attr_accessor :name, :power, :bio

    @@all = []
def initialize(details)
        @name = details[:name]
        @power = details[:power]
        @bio = details[:bio]
        self.save     
        
    end

    def self.all
        @@all ||= []
    end
    def save
        @@all << self
    end

end