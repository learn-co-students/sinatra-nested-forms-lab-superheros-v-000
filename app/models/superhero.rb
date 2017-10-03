class Superhero
  attr_reader :name, :power, :biography

  SUPERHEROS = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end

end
