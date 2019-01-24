class Hero
  attr_reader :name, :power, :biography

  @@heros = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    @@heros << self
  end

  def self.all
    @@heros
  end

  def self.clear
    @@heros = []
  end
end