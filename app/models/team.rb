
class Team 
  attr_accessor :name, :motto
  @@teams = []
  
  def initialize(args)
    self.name = args[:name]
    self.motto = args[:motto]
    self.class.all << self 
  end
  
  def self.all
    @@teams
  end
  
end