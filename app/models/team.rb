class Team
  attr_accessor :name, :motto

  def initialize(team_info)
    @name = team_info[:name]
    @motto = team_info[:motto]
  end
end
