class Team
  attr_accessor :name, :motto, :members

  def initialize(team_hash)
    @name = team_hash[:name]
    @motto = team_hash[:motto]
    @members =  Hero.all
  end
end
