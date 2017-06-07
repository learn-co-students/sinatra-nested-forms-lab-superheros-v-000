class Team

  attr_accessor :name, :motto

  @@all = []

  def self.all
    @@all
  end

  def initialize(arguments)
    @name = arguments[:name]
    @motto = arguments[:motto]
    @@all << self
  end

end
