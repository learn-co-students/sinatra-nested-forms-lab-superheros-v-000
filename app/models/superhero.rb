class Superhero
  attr_accessor :name, :power, :biography

  @@ALL = []

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography
    @@ALL << self
  end

  def self.all
    @@ALL
  end
end
