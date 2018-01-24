class Team

  TEAMS = []

  attr_accessor :name, :motto

  def initialize(name, motto)
    @name = name
    @motto = motto
    TEAMS << self
  end

  def self.all
    TEAMS
  end
end
