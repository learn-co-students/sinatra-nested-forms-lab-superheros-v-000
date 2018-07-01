class Hero
  attr_accessor :name, :power, :bio
  @@all = []

  def initialize(attributes)
    @name = attributes[:name]
    @power = attributes[:power]
    @bio = attributes[:biography]
    @@all << self
  end

  def self.all
    @@all
  end

end
