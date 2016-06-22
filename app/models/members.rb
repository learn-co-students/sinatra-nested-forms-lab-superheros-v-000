class Hero
  attr_accessor :name, :power, :biography
  @@all = []

  def initialize(attributes)
    @name = attributes[:name]
    @power = attributes[:power]
    @biography = attributes[:biography]
    @@all << self
  end

  def self.all
    @@all
  end

end
