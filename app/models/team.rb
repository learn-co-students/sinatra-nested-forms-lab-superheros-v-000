class Team
  attr_accessor :name, :motto
  @@teams = []

  def initialize(team)

    @name = team[:name]
    @motto = team[:motto]
    save
  end

  def self.all
    @@teams
  end

  def save
    @@teams << self
  end

end
