class Team

  attr_accessor :name, :motto

  TEAMS = []

  def initialize(attributes)
    @name = attributes[:name]
    @motto = attributes[:motto]
    
    TEAMS << self
  end #initialize

  def self.all
    TEAMS
  end #.all

end #Team class
