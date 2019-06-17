class Member 
  
  attr_accessor :name, :power, :bio 
  
  @@members = []
  
  def initialize(name, power, bio)
    @name = name 
    @power = power 
    @bio = bio
    @@members << self 
  end 
  
  def self.all
    @@members
  end 
  
  
end 