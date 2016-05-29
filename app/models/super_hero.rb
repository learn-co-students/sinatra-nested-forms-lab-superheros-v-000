class SuperHero

  attr_accessor :name, :power, :bio
    SUPERHEROES = []

    def initialize(name, power, bio)
      @name = name
      @power = power
      @bio = bio
      # @team_id = params[team_id]
      SUPERHEROES << self
    end

    # def initialize(args)
    #   @name = args[:name]
    #   @power = args[:power]
    #   @bio = args[:bio]
    #   # @team_id = params[team_id]
    #   SUPERHEROES << self
    # end

    def self.all
      SUPERHEROES
    end

    # def self.clear
    #   SUPERHEROES =[]
    # end

end
