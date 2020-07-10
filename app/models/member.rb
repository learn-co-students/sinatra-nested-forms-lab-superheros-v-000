class Member
  
  attr_accessor :name, :power, :biography
  
  MEMBERS = []
  
  def initialize(arg)
    @name = arg[:name]
    @power = arg[:power]
    @biography = arg[:biography]
    MEMBERS << self 
    
  end 
  
  def self.all
    MEMBERS
  end 
  
end 