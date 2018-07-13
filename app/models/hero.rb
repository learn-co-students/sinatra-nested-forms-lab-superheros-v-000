
class Hero
  attr_accessor :name, :power, :bio
  @@heroes = []
  
  def initialize(args)
    self.name = args[:name]
    self.power = args[:power]
    self.bio = args[:bio]
    self.class.all << self
  end
  
  def self.all
    @@heroes
  end
  
end