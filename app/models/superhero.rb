class Superhero

  attr_accessor :name, :power, :bio

  SUPERHEROS = []

  def initialize(stuff)
    @name = stuff[:name]
    @power = stuff[:power]
    @bio = stuff[:bio]
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end

end