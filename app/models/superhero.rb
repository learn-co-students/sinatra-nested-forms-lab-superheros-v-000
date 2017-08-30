class Superhero
  attr_reader :name, :power, :biography

  @@superheros = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    @@superheros << self
  end

  def self.all
    @@superheros
  end
end
