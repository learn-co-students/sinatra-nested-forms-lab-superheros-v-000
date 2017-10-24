class SuperHero
  attr_accessor :name, :power, :bio, :team

  SUPERHEROES = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    SUPERHEROES << self

  end 
  
  def self.all 
    SUPERHEROES
  end

end  #  End of Class