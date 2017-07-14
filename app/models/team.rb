class Team
  attr_accessor :name, :motto, :members
  def initialize(args)
    self.name = args[:name]
    self.motto = args[:motto]
    self.members = []
  end

  def add_member(super_hero)
   self.members << super_hero
  end
end
