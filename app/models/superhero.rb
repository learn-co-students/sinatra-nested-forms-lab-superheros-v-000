
class Superhero
  attr_accessor :name, :power, :bio

  @@superheroes = []
  def initialize(name, power, bio)
    @name = name
    @power =power
    @bio = bio
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end

end