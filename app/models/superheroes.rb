class Superheroes
  attr_accessor :name, :power, :bio
  
  ALL_SUPERHEROES = []
  
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    ALL_SUPERHEROES << self
  end 
  
  def self.all 
    ALL_SUPERHEROES
  end
end