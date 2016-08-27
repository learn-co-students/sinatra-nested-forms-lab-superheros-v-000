class Hero 

  HEROES = [] 
  
  attr_reader :name, :power, :biography

  def initialize(params)
    @name, @power, @biography = params["name"], params["power"], params["biography"]
    HEROES << self 
  end

  def self.all 
    HEROES 
  end

end