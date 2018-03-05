class Hero
  attr_accessor :name, :power, :bio

  HEROES = []

  def initialize(param)
    @name = param[:name]
    @power = param[:power]
    @bio = param[:bio]
    HEROES << self
  end

  def self.all
    HEROES
  end


end
