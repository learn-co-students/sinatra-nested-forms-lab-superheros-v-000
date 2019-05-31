class SuperHero 
  
  attr_accessor :name, :power, :biography 
  
  @@superheroes = []
  
  def initialize(args={})
    @name = args[:name]
    @power = args[:power] 
    @biography = args[:biography] 
    
    @@superheroes << self 
  end
  
  def self.all 
    @@superheroes
  end
    
  
end 