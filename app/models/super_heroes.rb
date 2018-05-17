class Super_Hero 

  @@SuperHeroes = []

  attr_accessor :name, :power, :biography

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
  end 

  def self.all 
    @@SuperHeroes 
  end 
end 