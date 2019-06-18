class Team
  attr_reader :name, :motto

  TEAMS = []

  def initialize(team_data)
    @name = team_data[:name]
    @motto = team_data[:motto]

    TEAMS << self
  end

  def self.all
    TEAMS
  end

  def self.clear
    TEAMS.clear
  end

end #EOC 
