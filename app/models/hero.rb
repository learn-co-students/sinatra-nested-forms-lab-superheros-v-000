class Hero

  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(args)
    @name = hero[:name]
    @power = hero[:power]
    @bio = hero[:bio]
    @@all < self
  end

  def self.all 
    @@all 
  end

end