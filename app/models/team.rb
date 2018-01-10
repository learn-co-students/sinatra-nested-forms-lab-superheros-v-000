class Team
  attr_accessor :name, :motto
  @@teams = []
  
  def initialize(name, motto)
    @name, @motto = name, motto
    
    @@teams << self
  end
  
  def self.all
    @@teams
  end
  
  def self.clear
    @@teams = []
  end
end