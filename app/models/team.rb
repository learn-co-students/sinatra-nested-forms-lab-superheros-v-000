class Team
  attr_accessor :name, :motto

  TEAMS = []

  def initialize(team)
    @name = team[:name]
    @motto = team[:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end

end
