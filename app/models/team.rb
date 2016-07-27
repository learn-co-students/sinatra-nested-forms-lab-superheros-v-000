class Team
  attr_reader :name, :motto, :superheroes

  TEAMS = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @superheroes = args[:members].collect{|member_args| Superhero.new(member_args)}
    TEAMS << self
  end

  def self.all
    TEAMS
  end

  def self.clear
    TEAMS.clear
  end
end