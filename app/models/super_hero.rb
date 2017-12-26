class SuperHero
  attr_accessor :name, :power, :bio
  @all = []

  def initialize(name, power, bio)
    @name = name
    @power = power
    @bio = bio
    self.save
  end

  def save
    self.all<<self
end
end
