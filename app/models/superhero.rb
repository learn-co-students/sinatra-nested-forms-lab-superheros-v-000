class Superhero
  attr_accessor :name, :power, :bio

  SUPERHEROS = []

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @bio = details[:bio]
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end

  def self.clear
    SUPERHEROS.clear
  end
end