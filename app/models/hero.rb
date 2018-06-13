class Hero
  
  @@HEROS = []
  
  attr_reader :name, :power, :biography
  
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    @@HEROS << self
  end
  
  def self.all
    @@HEROS
  end
  
  def self.clear
    @@HEROS = []
  end
    
end