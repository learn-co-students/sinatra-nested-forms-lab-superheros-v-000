class Hero
  attr_reader :name, :power, :bio
  HERO = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    HERO << self
  end

  def self.all
    HERO
  end

  def self.clear
    HERO.clear
  end

end 
