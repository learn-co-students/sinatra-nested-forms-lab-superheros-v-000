
class Hero 
  attr_accessor :name, :power, :biography

  HEROS = []

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography
    HEROS << self
  end

  def self.all
    HEROS
  end

  def self.clear
    self.all.clear
  end

end
