class Hero
  attr_accessor :name, :power, :biography

  @@heroes = []

  def initialize(args)
    @name = name
    @power = power
    @biography = biography

    @@heroes << self
  end

  def self.all
    @@heroes
  end

  def self.clear
    @@heroes = []
  end

end