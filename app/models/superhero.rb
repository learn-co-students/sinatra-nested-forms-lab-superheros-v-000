class Superhero

  attr_accessor :name, :power, :bio

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, power, bio)
    @name, @power, @bio = name, power, bio
  end

end
