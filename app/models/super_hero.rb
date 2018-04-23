class SuperHero
  attr_accessor :name, :power, :bio
  SUPERHEROS = []
  
  def initialize(stats)
    @name = stats[:name]
    @power = stats[:power]
    @bio = stats[:bio]
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end
end