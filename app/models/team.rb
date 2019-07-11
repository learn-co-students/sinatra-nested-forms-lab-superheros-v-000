class Team
  attr_accessor :name, :motto
  @@all = []
  
  def initialize(team_info)
    @name = team_info[:name]
    @motto = team_info[:motto]
    
    @@all << self
  end
  
  def self.all 
    @@all
  end
end