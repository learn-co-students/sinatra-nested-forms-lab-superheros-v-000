class Team
  attr_accessor :name, :motto

  def self.create(name, motto)
    new_team = Team.new
    new_team.name = name
    new_team.motto = motto
  end
end
