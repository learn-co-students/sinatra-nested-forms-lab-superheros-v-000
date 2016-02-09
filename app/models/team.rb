class Team
  attr_accessor :name, :motto, :members
  
  def initialize(args)
    self.name = args[:name]
    self.motto = args[:motto]
    self.members = []
  end
  
  def add_member(hero)
    self.members << hero
  end
end