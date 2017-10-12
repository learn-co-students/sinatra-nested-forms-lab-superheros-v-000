class Team
  attr_accessor :name, :motto
  TEAMS = []

  def initialize(hash)
    self.name = hash[:name]
    self.motto = hash[:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end
end
