class Hero 
  
  attr_reader :name, :power, :bio 
  
  HEROES = []
  
  def initialize(info)
    @name = info[:name]
    @power = info[:power]
    @bio = info[:bio]
    
    HEROES << self 
  end
  
  def self.all 
    HEROES 
  end
end