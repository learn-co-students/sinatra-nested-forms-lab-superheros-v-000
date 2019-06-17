class Hero
  attr_accessor :name, :power, :biography
  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    @@all << self
  end

end
