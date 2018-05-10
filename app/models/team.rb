class Team
  attr_reader :name, :motto
  TEAMS = []

  def initialize(name, motto)
    @name = name
    @motto = motto
    TEAMS << self
  end

  def self.all
    TEAMS
  end

end
