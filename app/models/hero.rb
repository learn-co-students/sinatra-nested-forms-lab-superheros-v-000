class Hero 
    attr_accessor :name, :power, :bio, :team
    
    @@all =[]
    
    def initialize(hero_info= {})
        hero_info.each do |k,v|
            send("#{k}=",v) 
        end
    end
    
    
    def self.create(hero_info = {})
        hero = Hero.new(hero_info)
        hero.save
        hero
    end
    
    def save
        @@all << self
    end
    
    def self.all
        @@all
    end
end