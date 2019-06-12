class SuperHero
  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(args={})
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    self.save
  end

  def save
    @@all << self
  end

end
