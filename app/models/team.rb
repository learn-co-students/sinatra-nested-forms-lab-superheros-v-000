class Team
  attr_accessor :name, :motto
  TEAMS = []
  
  def initialize(info)
    @name = info[:name]
    @motto = info[:motto]
    TEAMS << self
  end

  def self.all
    TEAMS
  end
end