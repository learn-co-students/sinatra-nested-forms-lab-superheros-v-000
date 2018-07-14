class Team 
  
  attr_accessor :name, :motto
  
  @@teams = []
  
  def initialize(name, motto)
    @name = name 
    @motto = motto
    @@teams << self
  end 
  
  def self.all 
    @@teams 
  end
end 