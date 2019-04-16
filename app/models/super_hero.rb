require 'pry'

class Superhero
  attr_reader :name, :bio, :power
  
  SUPERHEROES = []
  
  def initialize(hero)
    @name = hero[:name]
    @power = hero[:power]
    @bio = hero[:bio]
    SUPERHEROES << self
  end
  
  def self.all
    SUPERHEROES
  end
end