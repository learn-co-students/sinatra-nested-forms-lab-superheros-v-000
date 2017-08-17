class Team

  attr_reader :name, :motto, :heroes

  @@teams = []

  def initialize(team)
    @name = team[:name]
    @motto = team[:motto]

    @heroes = team[:heroes].map { |hero| Hero.new(hero)}

    @@teams << self
  end

  def self.all
    @@teams
  end

  def self.clear
    @@teams.clear
  end
end
