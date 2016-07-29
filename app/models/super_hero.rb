class SuperHero
  attr_accessor :name, :motto

  @@all = []

  def initialize(args)
    @name = name[:name]
    @motto = args[:motto]
    @@all << slef
  end

  def self.all
    @@all
  end

end
