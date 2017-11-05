class Superhero
  attr_accessor :name, :power, :biography
  @@all = []

  def initialize(stats)
    @name = stats[:name]
    @power = stats[:power]
    @biography = stats[:biography]
    @@all << self
  end

  def self.all
   @@all
  end

end
