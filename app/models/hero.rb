class Hero
  attr_accessor :name, :power, :bio, :team
  
  HEROES = []
  
  def initialize(args)
    self.name = args[:name]
    self.power = args[:power]
    self.bio = args[:bio]
    self.assign_team(args[:team])
    HEROES << self
  end
  
  def assign_team(team)
    team.add_member(self)
    self.team = team
  end
  
  def self.all
    HEROES
  end
  
end