class Hero

  attr_accessor :name, :power, :biography

  @@heros = []

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography
    @@heros << self
  end

  def self.all
    @@heros
  end

end