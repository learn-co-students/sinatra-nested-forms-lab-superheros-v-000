class Hero
  attr_accessor :name, :power, :bio
  @@HEROES = []
    def initialize(args)
    @name = args["name"]
    @power = args["motto"]
    @bio = args["bio"]
    @@HEROES << self
    end

    def self.all
      @@HEROES
    end
end