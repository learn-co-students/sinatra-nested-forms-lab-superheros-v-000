class SuperHero
  attr_accessor :name, :power, :bio
  HERO = []
  def initialize(at)
    @name = at[:name]
    @power = at[:power]
    @bio = at[:bio]
    HERO << self
  end

  def self.all
    HERO
  end
end
