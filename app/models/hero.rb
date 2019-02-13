class Hero
  attr_reader :name, :power, :biography

  @@all = []

  def initialize (args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    Hero.all << self
  end

  def self.all
    @@all
  end

end
