require_relative "../../config/environment"

class Team
    attr_accessor :name, :motto

    @@all = []
    
    def initialize(args)
        args.each do |key, value|
            self.send("#{key}=", value)
        end

        @@all << self
    end

    def heroes=(heroes)
        heroes.each do |hero|
            if hero[:name] != ""
                new_hero = Hero.new(hero)
                new_hero.team = self
            end
        end

    end

    def self.all
        @@all
    end

    def heroes
        Hero.all.select{|hero| hero.team == self}
    end
end