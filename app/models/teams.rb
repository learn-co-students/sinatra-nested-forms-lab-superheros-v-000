class Team
  attr_accessor :name, :motto

  TEAM = []

  def initialize(name, motto)
    @name = name
    @motto = motto
    TEAM << self
  end

  def self.all
    TEAM
  end

end
