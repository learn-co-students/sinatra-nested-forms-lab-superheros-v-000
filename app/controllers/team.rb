class Team
  attr_accessor :name, :motto

  @@team_members = []

  def initialize(name, motto)
    @name = name
    @motto = motto
    @@team_members << self
  end

  def self.all
    @@team_members
  end

  def self.clear
    @@team_members.clear
  end


end
