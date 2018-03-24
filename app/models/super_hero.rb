class SuperHero
  attr_accessor :name, :power, :bio

  def self.all
    @@all ||=[]

  end

  def initialize(force={})
    @name = force[:name]
    @power = force[:power]
    @bio = force[:bio]
    self.save
  end
  def save
    self.class.all << self

  end

end
