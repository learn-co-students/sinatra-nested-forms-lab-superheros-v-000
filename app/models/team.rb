class Team
  attr_reader :name, :motto

  TEAMS = []

  def initialize(param)
    @name = param[:name]
    @motto = param[:motto]
    TEAMS << self
  end
  
  def self.all
    TEAMS
  end

end