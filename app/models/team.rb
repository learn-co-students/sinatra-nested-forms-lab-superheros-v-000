class Team

  attr_accessor :name, :motto

  @@all = []

  def initialize(args)
    @name = team[:name]
    @motto = team[:motto]
    @@all < self
  end

  def self.all 
    @@all 
  end

end