class Hero
  attr_accessor :name, :power, :biography, :team

  HEROES = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    HEROES << self
  end

  def self.all
    HEROES
  end

end
