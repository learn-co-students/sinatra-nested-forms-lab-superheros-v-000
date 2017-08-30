class Hero
  attr_accessor :name, :power, :biography

  @@heroes = []

  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @biography = details[:biography]
    @@heroes << self
  end

  def self.all
    @@heroes
  end
end
